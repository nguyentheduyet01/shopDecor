using backend.Models;
using backend.Repositories;

namespace backend.Services
{
    public class CartService : ICartService
    {
        private readonly ICartRepository _cartRepository;
        public CartService(ICartRepository cartRepository)
        {
            _cartRepository = cartRepository;
        }

        public async Task<int> AddProductToCart(ChiTietHoaDon item, int idCustomer)
        {
            return await _cartRepository.AddProductToCart(item,idCustomer);
        }
    }
}
