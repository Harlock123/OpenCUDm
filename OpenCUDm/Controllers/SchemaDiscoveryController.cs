using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using OpenCUDm.Attributes;
using OpenCUDm.Models;
using OpenCUDm;
using Bogus.Extensions.UnitedStates;
using System.Data.SqlClient;
using Newtonsoft.Json;
using Swashbuckle.AspNetCore.SwaggerGen;


namespace OpenCUDm.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    [ApiKeyAuthorize]
    [EnableCors("DefaultPolicy")]
    public class SchemaDiscoveryController : ControllerBase
    {
        [HttpGet]
        [Route("GetAll")]
        public string GetAll(string CN = "Data Source=localhost; Initial Catalog=OPENCUDmDB; User ID=sa; Password=P@ssw0rd")
        {
            string result = "RESULT";

            SqlConnection cn = new SqlConnection(CN);

            cn.Open();

            var sqlstring = "select A.*," +
                            "B.TABLE_TYPE," +
                            "(SELECT OBJECT_ID(A.TABLE_NAME)) as TABLEID," +
                            "(SELECT IS_IDENTITY FROM SYS.columns SC WHERE SC.object_id = (SELECT OBJECT_ID(A.TABLE_NAME)) AND SC.NAME = A.COLUMN_NAME  ) as IS_IDENTITY " +
                            "from INFORMATION_SCHEMA.COLUMNS as A " +
                            "LEFT OUTER JOIN " +
                            "INFORMATION_SCHEMA.TABLES B on A.TABLE_NAME = B.TABLE_NAME " +
                            "ORDER BY A.TABLE_NAME,A.ORDINAL_POSITION";


            SqlDataAdapter da = new SqlDataAdapter(sqlstring, cn);

            System.Data.DataSet d = new System.Data.DataSet();

            da.Fill(d);

            result = JsonConvert.SerializeObject(d, Formatting.Indented);

            d.Dispose();
            da.Dispose();
            cn.Close();
            cn.Dispose();

            return result;
        }

        [HttpGet]
        [Route("GetTables")]
        public string GetTables(string CN = "Data Source=localhost; Initial Catalog=OPENCUDmDB; User ID=sa; Password=P@ssw0rd")
        {
            string result = "RESULT";

            SqlConnection cn = new SqlConnection(CN);

            cn.Open();

            var sqlstring = "SELECT * " +
                "FROM INFORMATION_SCHEMA.TABLES " +
                "ORDER BY TABLE_NAME";

            SqlDataAdapter da = new SqlDataAdapter(sqlstring, cn);

            System.Data.DataSet d = new System.Data.DataSet();

            da.Fill(d);

            result = JsonConvert.SerializeObject(d, Formatting.Indented);

            d.Dispose();
            da.Dispose();
            cn.Close();
            cn.Dispose();

            return result;
        }

        [HttpGet]
        [Route("GetTableSchema")]
        public string GetTableSchema(string CN = "Data Source=localhost; Initial Catalog=OPENCUDmDB; User ID=sa; Password=P@ssw0rd", string TN = "MemberMain")
        {
            string result = "RESULT";

            SqlConnection cn = new SqlConnection(CN);

            cn.Open();

            var sqlstring = "select A.*," +
                            "B.TABLE_TYPE," +
                            "(SELECT OBJECT_ID(A.TABLE_NAME)) as TABLEID," +
                            "(SELECT IS_IDENTITY FROM SYS.columns SC WHERE SC.object_id = (SELECT OBJECT_ID(A.TABLE_NAME)) AND SC.NAME = A.COLUMN_NAME  ) as IS_IDENTITY " +
                            "from INFORMATION_SCHEMA.COLUMNS as A " +
                            "LEFT OUTER JOIN " +
                            "INFORMATION_SCHEMA.TABLES B on A.TABLE_NAME = B.TABLE_NAME " +
                            "WHERE A.TABLE_NAME = @TABLENAME " +
                            "ORDER BY A.TABLE_NAME,A.ORDINAL_POSITION";


            SqlDataAdapter da = new SqlDataAdapter(sqlstring, cn);

            da.SelectCommand.Parameters.AddWithValue("@TABLENAME",TN);

            System.Data.DataSet d = new System.Data.DataSet();

            da.Fill(d);

            result = JsonConvert.SerializeObject(d, Formatting.Indented);

            d.Dispose();
            da.Dispose();
            cn.Close();
            cn.Dispose();

            return result;
        }

    }
}