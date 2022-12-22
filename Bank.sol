//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract Bank {
    mapping(address => uint256) public balances;

    struct User {
        string name;
        uint256 age;
    }

    User public user;

    function deposit(uint256 _amount) external payable {
        balances[msg.sender] = _amount;
    }

    function checkBalance() external view returns (uint256) {
        return balances[msg.sender];
    }

    function setUserDetails(string calldata _name, uint256 _age) public {
        user.name = _name;
        user.age = _age;
    }

    function getUserDetail() public view returns (User memory) {
        return user;
    }
}
