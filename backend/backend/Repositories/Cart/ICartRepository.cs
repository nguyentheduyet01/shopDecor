using backend.Entity;
using backend.Models;

namespace backend.Repositories
{
    public interface ICartRepository
    {
        
        Task<int> EditProductToCart(ChiTietHoaDon item);
        Task<ChiTietHoaDon> DeleteProductToCart(ChiTietHoaDon item);
        Task<int> AddProductToCart(int idCustomer, int idProduct, int count);

        List<CartProductView> GetProductsByUserId (int userId);
    }
}
