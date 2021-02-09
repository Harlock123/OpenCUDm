using System;
using System.Collections.Generic;

namespace OpenCUDm.Models
{
    public class Member
    {
        public Member()
        {

        }

        public long ID { get; set; }

        public Guid LongID { get; set; }

        public string FirstName { get; set; }

        public string LastName { get; set; }

        public string MiddleName { get; set; }

        public DateTime BDate { get; set; }

        public List<MemberIDNumbers> IDNumbers { get; set; }

        public List<MemberAddress> MemberAddresses { get; set; }

    }
}
