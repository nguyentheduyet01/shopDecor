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
                    TongGia = 0,
                    TrangThai = "Gio Hang",
                    NgayLap = DateTime.Now
                };


                _context.HoaDon.Add(hd);
                _context.SaveChanges();

            }
            _context.ChiTietHoaDon.Add(item);
            _context.SaveChanges();
            return idCustomer;
           
            
        }

        public async Task<int> AddProductToCart(int idCustomer, int idProduct, int count)
        {
            var cartMaster =  _context.HoaDon.Where(n => n.IdKhachHang == idCustomer && n.TrangThai == "Gio Hang").FirstOrDefault();
            var product = _context.SanPham.Where(n => n.MaSp == idProduct).FirstOrDefault();
            if (cartMaster == null && product != null)
            {
                HoaDon hd = new HoaDon
                {
                    IdKhachHang = idCustomer,
                    TongGia = product.GiaBan * count,
                    TrangThai = "Gio Hang",
                    NgayLap = DateTime.Now
                };

                cartMaster = hd;

                _context.HoaDon.Add(hd);
                _context.SaveChanges();

            }
            var productDetail = new ChiTietHoaDon
            {
                SoLuong = count,
                MaHd = cartMaster.MaHd,
                MaSp = idProduct
            };
            _context.ChiTietHoaDon.Add(productDetail);
            _context.SaveChanges();
            return count;
        }

        public async Task<ChiTietHoaDon> DeleteProductToCart(ChiTietHoaDon item)
        {
            var entity = _context.ChiTietHoaDon.Where(n => n.MaHd == item.MaHd && n.MaSp == item.MaSp).FirstOrDefault();
            if(entity != null)
            {
                _context.ChiTietHoaDon.Remove(entity);
                _context.SaveChanges();
            }
            return item;
        }

        public async Task<int> EditProductToCart(ChiTietHoaDon item)
        {
            var entity = _context.ChiTietHoaDon.Where(n => n.MaHd == item.MaHd && n.MaSp == item.MaSp).FirstOrDefault();

            if (entity != null)
            {
                entity.SoLuong = item.SoLuong;
                _context.SaveChanges();
                return 1;
            }
            else return 0;
        }
    }
}
