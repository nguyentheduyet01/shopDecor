﻿using backend.Data;
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

        public async Task<List<SanPham>> GetListProductNew(string textSearch)
        {
            // Lấy id các sản phẩm đã nhập k trong tháng này
            var productsOldId = from p in _context.PhieuNhapKho
                                       where p.NgayNhap.Month != DateTime.Now.Month
                                       join c in _context.ChiTietPhieuNhap on p.MaPnk equals c.MaPnk
                                       select c.MaPnk;

            // Lấy id các sản phẩm nhập trong tháng này mà các tháng trước chưa từng nhập (sản phẩm mới)
            var productsNewId = from p in _context.PhieuNhapKho
                           where p.NgayNhap.Month == DateTime.Now.Month && p.NgayNhap.Year == DateTime.Now.Year
                           join c in _context.ChiTietPhieuNhap on p.MaPnk equals c.MaPnk
                           where productsOldId.ToList().Contains(c.MaSp) == false
                           select c.MaSp;
            
            return await _context.SanPham.Where(n => productsNewId.Contains(n.MaSp) && n.TenSp.Contains(textSearch)).ToListAsync();
            
            
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

        public async Task<List<SanPham>> GetProducts(string textSearch)
        {
            return await _context.SanPham.Where(n => n.TenSp.Contains(textSearch)).ToListAsync();
        }
    }
}