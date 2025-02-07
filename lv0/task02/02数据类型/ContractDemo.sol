// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity >0.8.0;

contract ContractDemo {
    function getAddress() public view returns (address) {
        return address(this); //返回当前合约的地址
    }

    function destroyContract(address payable receiveAddr) public {
        selfdestruct(receiveAddr); // 销毁合约并发送以太币
    }

    // type(Hello).name: 获取合约的名字。
    // type(Hello).creationCode: 获取创建合约的字节码。
    // type(Hello).runtimeCode: 获取合约运行时的字节码。
    // function getContractInfo() public pure returns (string memory, bytes memory, bytes memory) {
    //     return (type(ContractDemo).name, type(ContractDemo).creationCode, type(ContractDemo).runtimeCode);
    // }

    function isContract(address addr) internal view returns (bool) {
        uint256 size;
        assembly {
            size := extcodesize(addr)
        } // 获取地址的代码大小
        return size > 0; // 大于 0 说明是合约地址
    }


    

    //     //web3.eth.getCode("0x1234567890123456789012345678901234567890").then(console.log);
}
