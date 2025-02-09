// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity >0.8.0;

contract FunctionDemo {
    function tupleTest() public pure returns (bool, uint, uint) {
        return (true, 1, 2);
    }

    function tupleTest2() public pure {
        (bool a, uint b, uint c) = tupleTest(); //多值赋值
    }

    function privateFunction() private pure returns (string memory) {
        return "Private";
    }

    function internalFunction() internal pure returns (string memory) {
        return "Internal";
    }

    function externalFunction() external pure returns (string memory) {
        return "External";
    }

    function publicFunction() public pure returns (string memory) {
        return "Public";
    }

    function deposit() public payable {
        //接收以太币
    }


    uint256 private data;

    function setData(uint256 _data) external {
        data = _data;  // 修改状态变量
    }

    function getData() external view returns (uint256) {
        return data;  // 读取状态变量
    }

    // function add(uint256 a, uint256 b) external pure returns (uint256) {
    //     return a + b;  // 纯计算函数
    // }

    function add(uint x,uint y) public pure returns(uint){
        return x + y;
    }

    function multiple(uint x,uint y) public pure returns(uint){
        return x * y;
    }

    mapping(address => uint) userPoints;

    function recive() public payable {
        userPoints[msg.sender] += msg.value; 
    }

    function getUserPoints() public view returns (uint){
        return userPoints[msg.sender];
    }



}
