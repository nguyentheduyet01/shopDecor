﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;

namespace backend.Models
{
    public partial class HoaDon
    {
        public HoaDon()
        {
            ChiTietHoaDon = new HashSet<ChiTietHoaDon>();
            IdnguoiDung = new HashSet<NguoiDung>();
        }

        public decimal TongGia { get; set; }
        public int MaHd { get; set; }
        public string TrangThai { get; set; }
        public DateTime NgayLap { get; set; }

        public virtual ICollection<ChiTietHoaDon> ChiTietHoaDon { get; set; }

        public virtual ICollection<NguoiDung> IdnguoiDung { get; set; }
    }
}