// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity >0.8.0;

contract ScopeDemo {
    function sum(uint256 n) external pure returns (uint256) {
        uint256 sumValue;
        for (uint256 i = 1; i < n; i++) {
            if (i % 2 != 0) {
                sumValue += i;
            }
        }
        return sumValue;
    }
}

contract ScopeInvoke {
    function invokeSumFunc(address externalContractAddress, uint256 maxValue)
        public
        pure
        returns (bool, uint256)
    {
        try ScopeDemo(externalContractAddress).sum(maxValue) returns (
            uint256 result
        ) {
            // 如果调用成功，返回结果
            return (true, result);
        } catch {
            // 如果调用失败，返回 false 和 0
            return (false, 0);
        }
    }
}
