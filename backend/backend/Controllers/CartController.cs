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

namespace backend.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CartController : ControllerBase
    {
        private readonly ICartService _cartService;

        public CartController(ICartService cartService)
        {
            _cartService = cartService;
        }

        
        [HttpPost("AddProductToCart")]
        public async Task<ActionResult> AddProductToCart(int idCustomer, ChiTietHoaDon item)
        {
            var res = await _cartService.AddProductToCart(item, idCustomer);
            return StatusCode(200, res);
        }

        [HttpPut("EditProductToCart")]
        public async Task<ActionResult> EditProductToCart(ChiTietHoaDon item)
        {
            var res = await _cartService.EditProductToCart(item);
            return StatusCode(201, res);
        }

        [HttpDelete("DeleteProductToCart")]
        public async Task<ActionResult> DeleteProductToCart(ChiTietHoaDon item)
        {
            var res = await _cartService.DeleteProductToCart(item);
            return StatusCode(200, res);
        }
    }
}
