using backend.Models;


namespace backend.Services
{
    public interface ICartService
    {
        Task<int> AddProductToCart(ChiTietHoaDon item, int idCustomer);
        Task <int> EditProductToCart(ChiTietHoaDon item);
        Task <ChiTietHoaDon> DeleteProductToCart(ChiTietHoaDon item);
    }
}
