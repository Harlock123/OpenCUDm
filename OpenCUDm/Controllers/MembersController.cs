using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using OpenCUDm.Attributes;
using OpenCUDm.Models;
using Bogus.Extensions.UnitedStates;

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

            var faker = new Bogus.Faker();

            for(int i=1;i<11;i++)
            {
                Member m = new Member();

                m.ID = i;
                m.LongID = Guid.NewGuid();
                m.BDate = DateTime.Now;
                m.FirstName = faker.Name.FirstName();
                m.LastName = faker.Name.LastName();
                m.MiddleName = faker.Name.FirstName(); // fake a middle name

                m.MemberAddresses = new List<MemberAddress>();
                MemberAddress a = new MemberAddress();
                a.ID = 1;
                a.MemberID = i;
                a.IsCurrent = true;
                a.Address1 = faker.Address.StreetAddress();
                a.Address2 = faker.Address.SecondaryAddress();
                a.AddressType = 1;
                a.State = faker.Address.State();
                a.City = faker.Address.City();
                a.Zip = faker.Address.ZipCode();
                m.MemberAddresses.Add(a);

                a = new MemberAddress();
                a.ID = 2;
                a.MemberID = i;
                a.IsCurrent = false;
                a.Address1 = faker.Address.StreetAddress();
                a.Address2 = faker.Address.SecondaryAddress();
                a.AddressType = 1;
                a.State = faker.Address.State();
                a.City = faker.Address.City();
                a.Zip = faker.Address.ZipCode();
                m.MemberAddresses.Add(a);

                m.IDNumbers = new List<MemberIDNumbers>();

                MemberIDNumbers b = new MemberIDNumbers();
                b.ID = 1;
                b.MemberID = i;
                b.IDNumberType = 1;
                b.IDNumber = faker.Person.Ssn();

                m.IDNumbers.Add(b);
                b = new MemberIDNumbers();
                b.ID = 2;
                b.MemberID = i;
                b.IDNumberType = 2;
                b.IDNumber = faker.Vehicle.Vin();
                m.IDNumbers.Add(b);



                result.Add(m);
            }

            return result.ToArray();

        }
    }
}