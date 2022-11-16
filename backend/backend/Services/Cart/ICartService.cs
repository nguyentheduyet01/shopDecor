using backend.Models;


namespace backend.Services
{
    public interface ICartService
    {
        
        Task <int> EditProductToCart(ChiTietHoaDon item);
        Task <ChiTietHoaDon> DeleteProductToCart(ChiTietHoaDon item);
        Task<int> AddProductToCart(int idCustomer, int idProduct, int count);
    }
}
