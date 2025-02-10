// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.0;
contract ExternalContract{

    function getValue() public pure returns(uint){
        return 100;
    }

    function revertFunc() public pure {
        revert("Faild.");
    }

}

contract TryCatchDemo {

    ExternalContract externalContract;
    constructor(){
        externalContract = new ExternalContract();
    }

    function tryCatchTest() public returns (uint ,string memory){
        try externalContract.getValue() returns (uint value){
            return (value,"Success");
        }catch {
            return (0,"Faild");
        }
    }


    function tryCatchRevert() public returns (string memory){
        try externalContract.revertFunc() {
            return "Not revert.";
        }catch Error(string memory reason){
            return reason;
        }catch{
            return "Unknown error.";
        }
    }




}

