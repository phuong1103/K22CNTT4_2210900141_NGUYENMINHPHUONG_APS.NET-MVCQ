//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace NmpOnTap.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Nmp_Sach
    {
        public string Nmp_MaSach { get; set; }
        public string Nmp_TenSach { get; set; }
        public Nullable<int> Nmp_SoTrang { get; set; }
        public Nullable<int> Nmp_NamXB { get; set; }
        public string Nmp_MaTG { get; set; }
        public Nullable<bool> Nmp_TrangThai { get; set; }
    
        public virtual NmpTacGia NmpTacGia { get; set; }
    }
}
