// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract ERC20MyToken is ERC20{
    constructor(string memory name_, string memory symblo_,uint256 initialSupply) ERC20(name_,symblo_){

        _mint(msg.sender,initialSupply);
    }
}