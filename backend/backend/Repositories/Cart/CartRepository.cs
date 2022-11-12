using backend.Data;
using backend.Models;

namespace backend.Repositories
{
    public class CartRepository : ICartRepository
    {
        private readonly DBSHop _context;
        public CartRepository(DBSHop context)
        {
            _context = context;
        }

        public async Task<int> AddProductToCart(ChiTietHoaDon item, int idCustomer)
        {
            var cartMaster = _context.HoaDon.Where(n => n.IdKhachHang == idCustomer && n.TrangThai == "Gio Hang").FirstOrDefault();
            
            if (cartMaster == null)
            {
                HoaDon hd = new HoaDon
                {
                    IdKhachHang = idCustomer,
                    MaHd = item.MaHd,
                    TongGia = 0,
                    TrangThai = "Gio Hang",
                    NgayLap = DateTime.Now
                };


                _context.HoaDon.Add(hd);
                _context.SaveChanges();

            }
            _context.ChiTietHoaDon.Add(item);
            return idCustomer;
           
            
        }
    }
}
