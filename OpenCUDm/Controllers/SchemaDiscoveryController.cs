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

        [HttpGet]
        [Route("GetTableSchemaFields")]
        public IEnumerable<OpenCUDm.Models.Field> GetTableSchemaFields(string CN = "Data Source=localhost; Initial Catalog=OPENCUDmDB; User ID=sa; Password=P@ssw0rd", string TN = "MemberMain")
        {
            List<OpenCUDm.Models.Field> result = new List<Field>();

            try
            {
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


                SqlCommand cmd = new SqlCommand(sqlstring, cn);

                cmd.Parameters.Add("@TABLENAME", System.Data.SqlDbType.VarChar).Value = TN;

                SqlDataReader r = cmd.ExecuteReader();

              //"TABLE_CATALOG": "OPENCUDmDB",
              //"TABLE_SCHEMA": "dbo",
              //"TABLE_NAME": "MemberMain",
              //"COLUMN_NAME": "ID",
              //"ORDINAL_POSITION": 1,
              //"COLUMN_DEFAULT": null,
              //"IS_NULLABLE": "NO",
              //"DATA_TYPE": "int",
              //"CHARACTER_MAXIMUM_LENGTH": null,
              //"CHARACTER_OCTET_LENGTH": null,
              //"NUMERIC_PRECISION": 10,
              //"NUMERIC_PRECISION_RADIX": 10,
              //"NUMERIC_SCALE": 0,
              //"DATETIME_PRECISION": null,
              //"CHARACTER_SET_CATALOG": null,
              //"CHARACTER_SET_SCHEMA": null,
              //"CHARACTER_SET_NAME": null,
              //"COLLATION_CATALOG": null,
              //"COLLATION_SCHEMA": null,
              //"COLLATION_NAME": null,
              //"DOMAIN_CATALOG": null,
              //"DOMAIN_SCHEMA": null,
              //"DOMAIN_NAME": null,
              //"TABLE_TYPE": "BASE TABLE",
              //"TABLEID": 98099390,
              //"IS_IDENTITY": true

                while (r.Read())
                {
                    Field f = new Field();

                    if (r["IS_NULLABLE"].ToString() == "NO")
                    {
                        f.AllowNulls = false;
                    }
                    else
                    {
                        f.AllowNulls = true;
                    }

                    f.FieldName = r["COLUMN_NAME"].ToString();
                    f.FieldType = r["DATA_TYPE"].ToString();


                    f.IsIdentity = r.GetBoolean(r.GetOrdinal("IS_IDENTITY"));

                    if (r.IsDBNull(r.GetOrdinal("NUMERIC_SCALE")))
                        f.Scale = 0;
                    else
                        f.Scale = Int32.Parse(r["NUMERIC_SCALE"].ToString());


                    if (r.IsDBNull(r.GetOrdinal("NUMERIC_PRECISION")))
                        f.Precision = 0;
                    else
                        f.Precision = Int32.Parse(r["NUMERIC_PRECISION"].ToString());

                    if (r.IsDBNull(r.GetOrdinal("CHARACTER_MAXIMUM_LENGTH")))
                        f.MaxLength = 0;
                    else
                        f.MaxLength = r.GetInt32(r.GetOrdinal("CHARACTER_MAXIMUM_LENGTH"));

                    result.Add(f);

                }
                r.Close();
                cmd.Dispose();
                cn.Close();
                cn.Dispose();

            }
            catch (Exception ex)
            {
                Field f = new Field();

                f.FieldName = "ERROR WITH GretTableSchemaFields";
                f.FieldNameConverted = ex.Message;

                result.Add(f);
            }


            return result;

        }
    }
}