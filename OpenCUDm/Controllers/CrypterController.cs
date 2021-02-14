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

namespace OpenCUDm.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    [ApiKeyAuthorize]
    [EnableCors("DefaultPolicy")]
    public class CrypterController : ControllerBase
    {

        [HttpGet]
        public CRYPTResults Get()
        {
            CRYPTResults result = new CRYPTResults();

            EncryptDecrypt enc = new EncryptDecrypt();
            
            result.Start = "THIS IS A TEST";
            result.Encrypted = enc.Encrypt(result.Start);
            result.Decrypted = enc.Decrypt(result.Encrypted);

            return result;
        }

    }
}