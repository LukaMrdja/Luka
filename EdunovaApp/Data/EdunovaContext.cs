using EdunovaApp.Models;
using Microsoft.EntityFrameworkCore;

namespace EdunovaApp.Data
{
    public class EdunovaContext : DbContext
    {
        public EdunovaContext(DbContextOptions<EdunovaContext> opcije)
            : base(opcije) { 
        
        }

        public DbSet<Pacijent> Pacijent { get; set; }
       
    }
}
