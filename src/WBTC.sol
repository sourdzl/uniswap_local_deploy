// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.5.13;

import "solmate/tokens/ERC20.sol";

contract WBTC is ERC20 {
    constructor(address depositAddress)
        ERC20("Bitcoin", "WBTC", 1) // name, symbol, decimalz
    {
        _mint(depositAddress, 999999999999999999999);
    }
}
