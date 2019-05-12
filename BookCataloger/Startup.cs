using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.AspNetCore.SpaServices.Webpack;
using BookCataloger.Models;
using Microsoft.EntityFrameworkCore;



namespace BookCataloger
{
 
    
        public class Startup
        {
            public void ConfigureServices(IServiceCollection services)
            {
                string connectionString = "Server=(localdb)\\mssqllocaldb;Database=master;Trusted_Connection=True;";
                //string connectionString = "Server=localhost;uid=root;pwd=;database=book_cataloger;Pooling=True";
                services.AddDbContext<ApplicationContext>(options => options.UseSqlServer(connectionString));
 
                services.AddMvc();
            }
         
            public void Configure(IApplicationBuilder app, IHostingEnvironment env)
            {
                if (env.IsDevelopment())
                {
                    if (env.IsDevelopment())
                    {
                        app.UseDeveloperExceptionPage();
                 
                        app.UseWebpackDevMiddleware(new WebpackDevMiddlewareOptions
                        {
                            HotModuleReplacement = true
                        });
                    }
 
                    app.UseDefaultFiles();
                    app.UseStaticFiles();
                    app.UseMvc();
                }
            }
        }
    
}