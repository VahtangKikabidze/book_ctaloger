using Microsoft.EntityFrameworkCore;
namespace BookCataloger.Models
{
    public class ApplicationContext : DbContext
    {
        public ApplicationContext(DbContextOptions<ApplicationContext> options) 
            : base(options)
        {
            
        }

        public DbSet<Book> Books { get; set; }
    }
}