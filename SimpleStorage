// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/*
Simple Storage Contract

This contract is a beginner Solidity project created to learn:
- State variables
- Structs
- Arrays
- Mappings
- Functions
- Storing and retrieving blockchain data

Functions:
- store(): stores a number
- retrieve(): returns the stored number
- addPerson(): adds a person's favorite number

Built using Remix IDE.
*/

contract SimpleStorage {

    uint256 public favoriteNumber;

    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    Person[] public listOfPeople;

    mapping(string => uint256) public nameToFavoriteNumber;

    function store(uint256 _favoriteNumber) public virtual {
        favoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns (uint256) {
        return favoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}
