// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import {ERC20} from "../lib/openzeppelin-contracts//contracts/token/ERC20/ERC20.sol";
//import {Ownable} from "../lib/openzeppelin-contracts/contracts/access/Ownable.sol";

// This ERC-20 contract mints the specified amount of tokens to the contract creator
contract WhiteROCK is ERC20 {
    constructor(uint256 initialSupply) ERC20("WhiteROCK", "wROCK") {
        _mint(msg.sender, initialSupply);
    }

// An external minting function allows anyone to mint as many tokens as they want
  function mint(uint256 toMint, address to) external {
    require(toMint <= 1 ether);
    _mint(to, toMint);
  }

}