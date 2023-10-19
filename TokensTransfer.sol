// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

interface Token {
    function transfer(address to, uint256 amount) external;

}

contract TokenContract is Token {
    mapping (address=>uint256) public balances;
    function transfer(address to, uint256 amount) external override {
        require(amount > 0, "Amount must be greater than 0");
        require(balances[msg.sender]>=amount, "Insufficient balance");
        balances[msg.sender]-=amount;
        balances[to]+=amount;
    }
}