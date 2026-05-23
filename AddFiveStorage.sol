// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {SimpleStorage} from "./SimpleStorage.sol";

/*
AddFiveStorage Contract

This contract inherits from SimpleStorage
and overrides the store() function.

Instead of storing the exact number,
it stores the number + 5.

Concepts learned:
- Inheritance
- Imports
- Override functions
- Contract extension
*/

contract AddFiveStorage is SimpleStorage {

    function store(uint256 _newNumber) public override {
        favoriteNumber = _newNumber + 5;
    }
}
