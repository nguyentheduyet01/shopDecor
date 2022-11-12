using backend.Data;
using backend.Models;
using Microsoft.EntityFrameworkCore;

namespace backend.Repositories
{
    public class ProductRepository : IProductRepository
    {
        private readonly DBSHop _context;
        public ProductRepository(DBSHop context)
        {
            _context = context;
        }

        public async Task<List<SanPham>> GetListProductNew()
        {
            // Todo
            return await _context.SanPham.ToListAsync();
        }

        public async Task<List<SanPham>> GetProductByCategory(int id,string textSearch)
        {
            return await _context.SanPham.Where(n => n.MaLsp == id && n.TenSp.Contains(textSearch)).ToListAsync();
        }

        public async Task<SanPham> GetProductById(int id)
        {
            return await _context.SanPham.FindAsync(id);
           
        }

        /// <summary>
        ///  Lấy sản phẩm trong giỏ hàng
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
       
        public async Task<List<SanPham>> GetProductByIdCart(int id)
        {
            var lstProduct = from cthd in _context.ChiTietHoaDon
                             join sp in _context.SanPham on cthd.MaSp equals sp.MaSp
                             where cthd.MaHd == id
                             select sp;
            return await lstProduct.ToListAsync();
        }
    }
}
