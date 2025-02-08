// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity >0.8.0;
contract MappingDemo {
    
    mapping(address => uint256) public balances;

    function add(uint256 amount) public {
        require(amount > 0,"Amount must be greater than 0.");
        balances[msg.sender] += amount;
    }

    function getBalance() public view returns (uint256){
        return balances[msg.sender];
    }

    function transfer(address to, uint256 amount) external {
        require(balances[msg.sender] >= amount, "Insufficient balance");
        require(to != address(0), "Invalid recipient address");
        balances[msg.sender] -= amount;
        balances[to] += amount;
    }



}