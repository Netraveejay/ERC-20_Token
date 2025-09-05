// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CodeNexToken {
    string public name = "CodeNexToken";
    string public symbol = "CNX";
    uint8 public decimals = 18;
    uint256 public totalSupply;

    mapping(address => uint256) public balanceOf;

    // Event for wallet tracking
    event Transfer(address indexed from, address indexed to, uint256 value);

    // Constructor to create initial supply
    constructor(uint256 _initialAmount) {
        totalSupply = _initialAmount * (10 ** uint256(decimals));
        balanceOf[msg.sender] = totalSupply;

        // Emit initial transfer from 0 address (minting)
        emit Transfer(address(0), msg.sender, totalSupply);
    }

    // Transfer function
    function transfer(address _to, uint256 _amount) public returns (bool success) {
        require(balanceOf[msg.sender] >= _amount, "Not enough tokens");
        balanceOf[msg.sender] -= _amount;
        balanceOf[_to] += _amount;

        emit Transfer(msg.sender, _to, _amount);
        return true;
    }
}
