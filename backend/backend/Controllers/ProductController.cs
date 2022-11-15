using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using backend.Data;
using backend.Models;
using backend.Services;
using backend.Entity;

namespace backend.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ProductController : ControllerBase
    {
        
        private readonly IProductService _productService;
        public ProductController(DBSHop context, IProductService productService)
        {
            _productService = productService;
        }

        [HttpGet]
        public async Task<ActionResult<List<ProductFilter>>> GetProducts(int pageNumber = 1, int pageSize = 20, string? textSearch = "")
        {
            var res = await _productService.GetProducts(pageNumber, pageSize, textSearch);
            return Ok(res);
        }
       
        // GET: api/Product
        [HttpGet("GetProductByCategory")]
        public async Task<ActionResult<ProductFilter>> GetProductByCategory(int id,int pageNumber = 1, int pageSize = 20,string? textSearch = "")
        {
            var res = await _productService.GetProductByCategory(id,pageNumber,pageSize,textSearch);
            return Ok(res);
        }

        // GET: api/Product/5
        [HttpGet("{id}")]
        public async Task<ActionResult<ProductView>> GetProductById(int id)
        {
            var res = await _productService.GetProductById(id);
            if(res == null)
            {
                return NotFound();
            }
            return Ok(res);
        }

        
        [HttpGet("GetProductByIdCart")]
        public async Task<ActionResult<List<SanPham>>> GetProductByIdCart(int id)
        {
            var res = await _productService.GetProductByIdCart(id);
            return res;
        }
        [HttpGet("GetListProductNew")]
        public async Task<ActionResult<List<SanPham>>> GetListProductNew(int pageNumber = 1, int pageSize = 20, string? textSearch = "")
        {
            var res = await _productService.GetListProductNew(pageNumber,pageSize,textSearch);
            return Ok(res);
        }




    }
}
