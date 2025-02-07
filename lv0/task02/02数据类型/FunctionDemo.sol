// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity >0.8.0;
contract FunctionDemo {


    bytes4 public storedSelector ;

    

    function square(uint x) public pure returns (uint){
        return x * x ;
    }

    function double(uint x) public pure returns (uint){
        return 2 * x;
    }



    function getSquareSelector() public pure returns (bytes4){
        return this.square.selector;
    }


    function executeFunction(bytes4 selector,uint x) public returns (uint){
    
        (bool success,bytes memory data) = address(this).call(abi.encodeWithSelector(selector,x));
        require(success,"Function call failed.");
        return abi.decode(data,(uint));
    }

    function storeSelector(bytes4 _selector) public {
         storedSelector = _selector;
    }

    function execcuteStoredSelector(uint x) public returns (uint){
        require(storedSelector != 0,"Selector not set");
        (bool success,bytes memory data) = address(this).call(abi.encodeWithSelector(storedSelector,x));
        require(success,"Function call failed.");
        return abi.decode(data,(uint));
    }










}