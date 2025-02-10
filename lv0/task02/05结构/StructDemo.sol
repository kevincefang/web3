// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity >0.8.0;
contract StructDemo {
    
    event Received(address adr,uint amount);

    receive() external payable {
        emit Received(msg.sender,msg.value);
    }

    event FallCalled(address adr,uint amount);

    fallback() external payable {
        emit FallCalled(msg.sender,msg.value);
    }


    address public owner;
    constructor() public {
        owner = msg.sender;
    }
    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can call this function.");
        _;
    }
    function changeOwner(address newOwner) public onlyOwner {
        owner = newOwner;
    }
}