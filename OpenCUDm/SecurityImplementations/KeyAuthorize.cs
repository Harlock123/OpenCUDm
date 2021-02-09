using System;
using System.Threading.Tasks;

namespace OpenCUDm
{
    public class KeyAuthorize: IApiKeyService
    {
                
        public Task<bool> IsAuthorized(string clientId, string apiKey)
        {
            //throw new NotImplementedException();

            return Task.FromResult(true); ;
        }
    }
}
