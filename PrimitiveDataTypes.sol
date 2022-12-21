//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract DataTypes {
    uint256 score = 100; // to track players  score
    uint256 energy = 100; // track players energy level
    bool fundsDonated;
    address user = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4; // eth deposit address
    enum LottoState {
        // Keep track of current Level
        OPEN,
        CALCULATING
    }
    bytes32 selector = "0x98"; // to store function selector
}
