using backend.Models;

namespace backend.Repositories
{
    public interface IProductRepository
    {
        Task <List<SanPham>> GetProductByCategory(int id,string textSearch);
        Task<SanPham> GetProductById(int id);
        Task<List<SanPham>> GetProductByIdCart(int id);
        Task<List<SanPham>> GetListProductNew();
    }
}
