using backend.Models;

namespace backend.Repositories
{
    public interface ICartRepository
    {
        Task<int> AddProductToCart(ChiTietHoaDon item,int idCustomer);
    }
}
