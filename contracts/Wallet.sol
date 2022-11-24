// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.4;
contract Wallet {
    //smart contract implmentation to deposit ether to callers
    // wallet as well as to check their balance
    event deposited(address indexed from, uint256 value);

    mapping(address => uint256) balances;

    constructor() {
       
    }

    //function for depositing ether
    function deposit () public payable {
        balances[msg.sender] += msg.value;
        //emit event for successful transaction
        emit deposited(msg.sender, msg.value);
    }

    //function to check callers balance
    function balanceOf() public view returns (uint256 balance) {
        return balances[msg.sender];
    }
}