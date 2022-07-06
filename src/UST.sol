// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "solmate/tokens/ERC20.sol";

contract UST is ERC20 {
    constructor(address depositAddress)
        ERC20("USDTerra", "UST", 1) // name, symbol, decimalz
    {
        _mint(depositAddress, 99999);
    }
}
