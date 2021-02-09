using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.HttpsPolicy;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Logging;
using Microsoft.OpenApi.Models;

namespace OpenCUDm
{
    [DebuggerDisplay("{" + nameof(GetDebuggerDisplay) + "(),nq}")]
    public class Startup
    {
        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
            // Setup Globals here Should move to a better secrets place for reelZ

            Globals.Salt = Configuration["EncryptionSettings:SodiumCloride"];
            Globals.Cypher1 = Configuration["EncryptionSettings:Cypher1"];
            Globals.Passcode = Configuration["EncryptionSettings:PassCode"];
        }

        public IConfiguration Configuration { get; }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {
            services.AddCors(o => o.AddPolicy("DefaultPolicy", builder =>
            {
                builder.AllowAnyOrigin()
                       .AllowAnyMethod()
                       .AllowAnyHeader();
            }));
            services.AddScoped<IApiKeyService, KeyAuthorize>(); // Allow APIkeys in headers
            services.AddControllers();
            services.AddSwaggerGen(c =>
            {
                c.OperationFilter<AddHeaderParameters>();
                c.SwaggerDoc("v1", new OpenApiInfo { Title = "OpenCUDm", Version = "v1" });
            });
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
                app.UseSwagger();
                app.UseSwaggerUI(c => c.SwaggerEndpoint("/swagger/v1/swagger.json", "OpenCUDm v1"));
            }

            app.UseHttpsRedirection();

            app.UseRouting();

            app.UseCors();

            app.UseAuthorization();

            app.UseEndpoints(endpoints =>
            {
                endpoints.MapControllers();
            });
        }

        private string GetDebuggerDisplay()
        {
            return ToString();
        }
    }

    static class Globals
    {
        public static string Salt = "";
        public static string Cypher1 = "";
        public static string Passcode = "";

    }
}
