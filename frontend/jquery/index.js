$(document).ready(function () {
    GetNews();
    GetHots();
    document.getElementById("getsearch").addEventListener('submit',(e)=>{
        e.preventDefault()
        let textsearch = document.getElementById("search").value;
        window.location.href = "shop.html??textsearch="+ textsearch;
    })
   
});
function GetNews() {
    $.ajax({
        url: 'https://localhost:7132/api/Product/GetListProductNew?pageNumber=1&pageSize=4',
        method: 'GET',
        contentType: 'application\json',
        dataType: 'json',
        error: function (response) { },
        success: function (reponse) {
            let tabl = '';
            for (var i = 0; i < reponse.data.length; ++i) {
                tien = reponse.data[i].giaBan;
                tien = tien - (tien % 1000);
                tabl = tabl + `
                <div class="col-12 col-sm-6 col-lg-3">
                    <div class="single-product-area mb-50 wow fadeInUp" data-wow-delay="200ms">
                        <div class="product-img">
                            <a href="shop-details.html??idProduct=${reponse.data[i].maSp}"><img src="img/bg-img/10.jpg" alt=""></a>
                            <div class=" product-meta d-flex justify-content-center">
                                <a href="cart.html" class="add-to-cart-btn ">Thêm vào giỏ</a>
                                <a href="cart.html" class="add-to-cart-btn ">Mua ngay</a>
                            </div>
                        </div>
                        <div class="product-info mt-15 text-center">
                            <a href="shop-details.html">
                                <p class="content">${reponse.data[i].tenSp}</p>
                            </a>
                            <h6>${tien.toString().replace(/(\d)(?=(\d{3})+(?!\d))/g, "$1,")} ₫</h6>
                        </div>
                    </div>
                </div>
                `
            }
            document.getElementById('listnews').innerHTML = tabl;
        },
        fail: function (response) { }
    });
}
function GetHots() {
    $.ajax({
        url: 'https://localhost:7132/api/Product?pageNumber=1&pageSize=4',
        method: 'GET',
        contentType: 'application\json',
        dataType: 'json',
        error: function (response) { },
        success: function (reponse) {
            let tabl = '';
            for (var i = 0; i < reponse.data.length; ++i) {
                tien = reponse.data[i].giaBan;
                tien = tien - (tien % 1000);
                tabl = tabl + `
                <div class="col-12 col-sm-6 col-lg-3">
                    <div class="single-product-area mb-50 wow fadeInUp" data-wow-delay="200ms">
                        <div class="product-img">
                        <a href="shop-details.html??idProduct=${reponse.data[i].maSp}"><img src="img/bg-img/10.jpg" alt=""></a>
                        <div class=" product-meta d-flex justify-content-center">
                                <a href="cart.html" class="add-to-cart-btn ">Thêm vào giỏ </a>
                                <a href="cart.html" class="add-to-cart-btn ">Mua ngay</a>
                            </div>
                        </div>
                        <div class="product-info mt-15 text-center">
                            <a href="shop-details.html">
                                <p class="content">${reponse.data[i].tenSp}</p>
                            </a>
                            <h6>${tien.toString().replace(/(\d)(?=(\d{3})+(?!\d))/g, "$1,")} ₫</h6>
                        </div>
                    </div>
                </div>
                `
            }
            document.getElementById('listhot').innerHTML = tabl;
        },
        fail: function (response) { }
    });
}
function login(){
    username = document.getElementById("username").value
    password = document.getElementById("password").value
}