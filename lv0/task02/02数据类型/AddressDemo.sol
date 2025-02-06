// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity >0.8.0;
contract AddressDemo {

    address public myAddress1 = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    address payable payableAddress = payable(myAddress1);


    address  myAddress2 = msg.sender;


    function compare() public view returns(bool){
        if (myAddress1 == myAddress2) {
            return true;
        }else{
            return false;
        }
    }


    function getBalance() public view returns(uint256){
        return msg.sender.balance;
    }




    
}