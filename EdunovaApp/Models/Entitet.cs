using System.ComponentModel.DataAnnotations;

namespace EdunovaApp.Models
{
    public abstract class Entitet
    {
        [Key]
        public int ID { get; set; }
    }
}
