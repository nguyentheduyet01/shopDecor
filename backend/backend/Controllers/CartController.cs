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
        public async Task<ActionResult> AddProductToCart(int idCustomer,ChiTietHoaDon item)
        {
            var res = await _cartService.AddProductToCart(item, idCustomer);
            return StatusCode(201,res);
        }
    }
}
