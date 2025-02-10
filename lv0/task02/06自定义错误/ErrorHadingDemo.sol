// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity >0.8.0;
contract ErrorHandingDemo {

    address public owner;
    constructor() public {
        owner = msg.sender;
    }

    function transferOwner(address newOwner) public {
        owner = newOwner;
    }

    function checkBalance(uint a,uint b) public pure returns(uint){
        uint result = a + b;
        assert(result >= a);
        return result;
    }

    function checkValue(uint value) public pure {
        if(value > 10){
            revert("Value cannot exceed 10"); // 返回自定义错误信息
        }
    }

    error Unauthorized(address caller);//自定义错误
    
    function errorTest() public{
        if(msg.sender != owner){
            revert Unauthorized(msg.sender);
        }
    }



}