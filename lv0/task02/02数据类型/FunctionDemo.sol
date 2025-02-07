// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity >0.8.0;
contract FunctionDemo {

    bytes4 public storedSelector ;

    function square(uint x) public pure returns (uint){
        return x * x ;
    }

    funcion double(uint x) public pure returns (uint){
        return 2 * x;
    }


    function executeFunction(bytes4 selector,uint x) public returns (uint){
        (bool success,bytes memory data) = address(this).call(abi.encodeWithSelector(selector,x));
        require(success,"Function call failed.")
        return abi.decode(data,(uint));
    }

    function storedSelector(bytes _selector) public {
         storedSelector = _selector;
    }

    function execcuteStoredSelector(uint x) public returns (uint){
        require(storedSelector != bytes[4],"Selector not set");
        (bool sucess,bytes memory data) = address(this).call(abi.encodeWithSelector(storedSelector,x));
        return abi.decode(data,(uint));
    }










}