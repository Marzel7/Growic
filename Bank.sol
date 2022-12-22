//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract Bank {
    mapping(address => uint256) public balances;

    function deposit(uint256 _amount) external payable {
        balances[msg.sender] = _amount;
    }

    function checkBalance() external view returns (uint256) {
        return balances[msg.sender];
    }
}
