using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    class SociDTO
    {
        public int Id { get; set; }
        public string nom { get; set; }
        public string cognom { get; set; }
        public DateTime dataModificacio { get; set; }
        public DateTime dataIntroduccio { get; set; }
        public Nullable<System.DateTime> dataBaixa { get; set; }
    }
}
