using EdunovaApp.Validations;
using System.ComponentModel.DataAnnotations;

namespace EdunovaApp.Models
{
    public class Pacijent : Entitet
    {
        [Required(ErrorMessage ="Naziv obavezno")]
        public string? Ime { get; set; }

        public string? Prezime { get; set; }



        public string? telefon { get; set; }


        public string? BrojZk { get; set; }
    }
}
