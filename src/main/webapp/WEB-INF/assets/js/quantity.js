
    // Hàm giảm số lượng
    function decreaseNumber(button) {
    let input = button.parentNode.querySelector('.quantityInput'); // Tìm input số lượng trong cùng hàng
    let newValue = parseInt(input.value) - 1;
    if (newValue >= 1) {
    input.value = newValue;
    updateTotalPrice(input);
}
}

    // Hàm tăng số lượng
    function increaseNumber(button) {
    let input = button.parentNode.querySelector('.quantityInput'); // Tìm input số lượng trong cùng hàng
    let newValue = parseInt(input.value) + 1;
    input.value = newValue;
    updateTotalPrice(input);

}

    // Hàm cập nhật giá tiền khi thay đổi số lượng
    function updateTotalPrice(input) {
    let quantity = parseInt(input.value);
    let pricePerItem = parseFloat(input.getAttribute('data-price'));
    let totalPriceElement = input.parentNode.previousElementSibling; // Ô chứa giá tiền

    let totalPrice = quantity * pricePerItem;
    totalPriceElement.textContent = totalPrice.toFixed(2); // Cập nhật giá tiền với hai chữ số thập phân
        calculateTotalPrice();
        calculateTotalPrice1();
}

    function calculateTotalPrice() {
        let totalPrice = 0; // Đặt lại tổng tiền về 0 trước khi tính lại
        let priceElements = document.querySelectorAll('.product-price'); // Chọn tất cả các ô hiển thị giá tiền

        priceElements.forEach(function(element) {
            totalPrice += parseFloat(element.textContent); // Cộng dồn giá tiền từng sản phẩm vào tổng tiền
        });

        document.getElementById('totalPrice').textContent = totalPrice.toFixed(2); // Hiển thị tổng tiền với hai chữ số thập phân
    }

    function calculateTotalPrice1() {
        let totalPrice1 = 0; // Đặt lại tổng tiền về 0 trước khi tính lại
        let priceElements = document.querySelectorAll('.product-price'); // Chọn tất cả các ô hiển thị giá tiền

        priceElements.forEach(function(element) {
            totalPrice1 += parseFloat(element.textContent); // Cộng dồn giá tiền từng sản phẩm vào tổng tiền
        });

        document.getElementById('totalPrice1').textContent = totalPrice1.toFixed(2); // Hiển thị tổng tiền với hai chữ số thập phân
    }

    document.addEventListener('DOMContentLoaded', function() {
        calculateTotalPrice();
        calculateTotalPrice1();
    });


    function selectPaymentMethod(paymentMethod) {
        document.getElementById('dropdownMenuLink').innerText = paymentMethod;
    }

    function sortProducts() {
        let sortDirection = document.getElementById("sortPrice").value;
        let rows = Array.from(document.querySelectorAll("#productTableBody tr"));

        rows.sort(function(rowA, rowB) {
            let priceA = parseFloat(rowA.querySelector(".product-price").textContent);
            let priceB = parseFloat(rowB.querySelector(".product-price").textContent);

            if (sortDirection === "asc") {
                return priceA - priceB;
            } else {
                return priceB - priceA;
            }
        });

        // Xóa tất cả các hàng hiện có trong bảng
        let tbody = document.getElementById("productTableBody");
        tbody.innerHTML = "";

        // Thêm lại các hàng đã sắp xếp vào bảng
        rows.forEach(function(row) {
            tbody.appendChild(row);
        });
    }


