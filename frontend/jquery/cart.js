


var user = JSON.parse(localStorage.getItem("user"));
$(document).ready(function () {
    if(user){
        
        getItemCart()
    }
    
});
// .replace(/(\d)(?=(\d{3})+(?!\d))/g, "$1,")
function getItemCart(){
    $("cart-table tbody").html();
    let productHtml = "",
        totalPrice = 0;
    for(let i = 0; i < user.cartProducts.length; i++){
        let item = user.cartProducts[i]
        let product = `<tr>
        <td class="cart_product_img">
            <a href="#"><img src="./assets/img/${item.anhDaiDien}.jpg" alt="Product"></a>
            <h5>${item.tenSp}</h5>
        </td>
        <td class="qty">
            <div class="quantity">
                <span class="qty-minus cursor-pointer" onclick="minus(${item.maSp})"><i class="fa fa-minus" aria-hidden="true"></i></span>
                <input type="text" class="qty-text" step="1" id="product${item.maSp}"  name="quantity" value="${item.soLuong}">
                <span class="qty-plus cursor-pointer" onclick="plus(${item.maSp})"><i class="fa fa-plus" aria-hidden="true"></i></span>
            </div>
        </td>   
        <td class="price"><span>${item.giaBan.toString().replace(/(\d)(?=(\d{3})+(?!\d))/g, "$1,")}</span></td>
        <td class="total_price"><span>${(item.giaBan * item.soLuong).toString().replace(/(\d)(?=(\d{3})+(?!\d))/g, "$1,")}</span></td>
        <td class="action"><a href="#"><i class="icon_close" ></i></a></td>
    </tr>`
        productHtml += product;
        totalPrice += (item.giaBan * item.soLuong);
    }
    
   
    document.getElementById("productList").innerHTML = productHtml;
    document.getElementById("totalPrice").innerHTML = totalPrice.toString().replace(/(\d)(?=(\d{3})+(?!\d))/g, "$1,");
}
function minus(productId){
    
    let value = document.getElementById("product" + productId).value;
    if(parseInt(value) > 1){
        document.getElementById("product" + productId).value = parseInt(value) - 1;
    }
}

function plus(productId){
    let value = document.getElementById("product" + productId).value;
        document.getElementById("product" + productId).value = parseInt(value) + 1;

        
        
}