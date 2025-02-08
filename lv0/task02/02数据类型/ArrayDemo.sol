// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity >0.8.0;

contract ArrayDemo {
    uint[] public dynamicArray;

    function addElement(uint _element) public {
        dynamicArray.push(_element); // 向数组添加元素
    }

    function removeLastElement() public {
        dynamicArray.pop(); // 删除数组最后一个元素
    }

    function getLength() public view returns (uint) {
        return dynamicArray.length; // 获取数组长度
    }

    function sum(uint[] memory arr) public pure returns (uint){
        uint y;
        for (uint i = 0; i < arr.length; i++) {
          y += arr[i];
        }
        return y;
    }

    function removeElement(uint index) public {
        delete dynamicArray[index];
    }
}
