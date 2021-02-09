using System;
using System.Threading.Tasks;

namespace OpenCUDm
{    
    public interface IApiKeyService
    {
            Task<bool> IsAuthorized(string clientId, string apiKey);
    }
}
