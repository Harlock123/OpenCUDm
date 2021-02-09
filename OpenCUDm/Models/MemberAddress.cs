using System;
namespace OpenCUDm.Models
{
    public class MemberAddress
    {
        public MemberAddress()
        {
        }

        public long ID { get; set; }
        public long MemberID { get; set; }
        public long AddressType { get; set; }
        public bool IsCurrent { get; set; }
        public string Address1 { get; set; }
        public string Address2 { get; set; }
        public string Address3 { get; set; }
        public string City { get; set; }
        public string State { get; set; }
        public string Zip { get; set; }


    }
}
