using System.ComponentModel.DataAnnotations;

namespace EdunovaApp.Models
{
    public class Pacijent : Entitet
    {
        [Required(ErrorMessage ="Ime obavezno")]
        public string? ime { get; set; }

        public string? prezime { get; set; }

        public string? telefon { get; set; }

        public string? brojZk { get; set; }
    }
}
