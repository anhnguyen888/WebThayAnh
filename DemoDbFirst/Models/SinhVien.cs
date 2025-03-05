using System;
using System.Collections.Generic;

namespace DemoDbFirst.Models;

public partial class SinhVien
{
    public string MaSo { get; set; } = null!;

    public string HoTen { get; set; } = null!;

    public bool GioiTinh { get; set; }

    public double? Diem { get; set; }

    public string? MaKhoa { get; set; }

    public virtual Khoa? MaKhoaNavigation { get; set; }
}
