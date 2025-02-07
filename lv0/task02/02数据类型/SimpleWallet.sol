// SPDX-License-Identifier: MIT
pragma solidity ^0.7.0;
contract SimpleWallet {

    mapping (address => uint256) public balances;

    address public whileAddress;


    function setWhileAddress(address adr) public {
        whileAddress = adr;
    }
    

    function deposit() public payable {
        balances[msg.sender] += msg.value;
    }

    function withdraw(uint256 amount) public {
        require(whileAddress == msg.sender,"Not allow withdraw.");
        require(balances[msg.sender] >= amount,"Account balalance is not full.");
        balances[msg.sender] -= amount;

        payable(msg.sender).transfer(amount);
    }

    function checkBalance() public view returns (uint256){

        return balances[msg.sender];
    }





}