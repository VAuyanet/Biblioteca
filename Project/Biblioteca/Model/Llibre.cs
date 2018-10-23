//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Model
{
    using System;
    using System.Collections.Generic;
    
    public partial class Llibre
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Llibre()
        {
            this.Copia = new HashSet<Copia>();
            this.LlistatEspera = new HashSet<LlistatEspera>();
            this.Autor = new HashSet<Autor>();
        }
    
        public int ISBN { get; set; }
        public string titol { get; set; }
        public short numPagines { get; set; }
        public bool disponible { get; set; }
        public string genere { get; set; }
        public string editorial { get; set; }
        public string dataIntroduccio { get; set; }
        public string dataBaixa { get; set; }
        public string dataModificacio { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Copia> Copia { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<LlistatEspera> LlistatEspera { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Autor> Autor { get; set; }
    }
}
