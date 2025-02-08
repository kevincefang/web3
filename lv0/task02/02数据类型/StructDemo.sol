// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity >0.8.0;
contract StructDemo {

    struct Product {
        uint id;
        string name;
        uint price;
        uint stock;
    }

    mapping(uint => Product) public products;

    function add(uint id, string memory name,uint price, uint stock) public {

        products[id] = Product(id,name,price,stock);

    }

    function update(uint id, uint newStock) public {
        Product storage product =products[id];
        product.stock = newStock;
    }

    function getProduct(uint id) public view returns (string memory,uint,uint){
        Product storage product = products[id];
        return (product.name,product.price,product.stock);
    }




}