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
    
    public partial class LlistatEspera
    {
        public int Id { get; set; }
        public int posicio { get; set; }
        public string dataIntroduccio { get; set; }
        public string dataBaixa { get; set; }
        public string dataModificacio { get; set; }
        public int Llibre_ISBN { get; set; }
    
        public virtual Llibre Llibre { get; set; }
    }
}
