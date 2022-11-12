using backend.Models;
using backend.Repositories;

namespace backend.Services
{
    public class ProductService : IProductService
    {
        public readonly IProductRepository _productRepository;
        public ProductService(IProductRepository productRepository)
        {
            _productRepository = productRepository;
        }

        public Task<List<SanPham>> GetListProductNew()
        {
            return _productRepository.GetListProductNew();
        }

        public async Task<ProductFilter> GetProductByCategory(int id, int pageNumber, int pageSize, string? textSearch)
        {
            var product = await _productRepository.GetProductByCategory(id,textSearch);

            ProductFilter productFilter = new ProductFilter
            {
                CurrentPage = pageNumber,
                CurrentPageRecord = product.Skip( (pageNumber - 1) * pageSize).Count(),
                TotalPage = (int)Math.Ceiling((double)product.Count() / pageSize) > 0 ? (int)Math.Ceiling((double)product.Count() / pageSize) : 1,
                TotalRecord = product.Count(),
                Data = product
            };

            return productFilter;
        }

        public async Task<SanPham> GetProductById(int id)
        {
            return await _productRepository.GetProductById(id);
        }

        /// <summary>
        /// Lấy sản phẩm trong giỏ hàng
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        
        public async Task<List<SanPham>> GetProductByIdCart(int id)
        {
            return await _productRepository.GetProductByIdCart(id);
        }
    }
}
