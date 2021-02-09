using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using OpenCUDm.Attributes;
using OpenCUDm.Models;

namespace OpenCUDm.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    [ApiKeyAuthorize]
    [EnableCors("DefaultPolicy")]
    public class MembersController : ControllerBase
    {
        [HttpGet]
        public IEnumerable<Member> Get()
        {
            List<Member> result = new List<Member>();

            for(int i=1;i<11;i++)
            {
                Member m = new Member();

                m.ID = i;
                m.LongID = Guid.NewGuid();
                m.BDate = DateTime.Now;
                m.FirstName = Faker.Name.First();
                m.LastName = Faker.Name.Last();
                m.MiddleName = Faker.Name.Middle();

                m.MemberAddresses = new List<MemberAddress>();
                MemberAddress a = new MemberAddress();
                a.MemberID = i;
                a.Address1 = Faker.Address.StreetAddress();
                a.Address2 = Faker.Address.SecondaryAddress();
                a.AddressType = 1;
                a.State = Faker.Address.UsState();
                a.City = Faker.Address.City();
                a.Zip = Faker.Address.ZipCode();
                m.MemberAddresses.Add(a);

                m.IDNumbers = new List<MemberIDNumbers>();

                result.Add(m);
            }

            return result.ToArray();

        }
    }
}