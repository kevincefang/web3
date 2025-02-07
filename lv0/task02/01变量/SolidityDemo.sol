// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.0;

contract SolidityDemo {
    uint storedData; //状态变量

    constructor() public {
        storedData = 100; //使用状态变量
    }

    function getResult() public pure returns (uint) {
        uint a = 1;
        uint b = 2;
        uint c = a + b;
        return c;
    }
}
