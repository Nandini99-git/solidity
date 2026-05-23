// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {SimpleStorage} from "./SimpleStorage.sol";

/*
 * @title StorageFactory
 * @author Nandini Gupta
 *
 * @notice This contract demonstrates how to:
 * - Deploy smart contracts from another contract
 * - Store deployed contract instances
 * - Interact with multiple smart contracts
 * - Use factory contract patterns in Solidity
 */

contract StorageFactory {

    // Array to store deployed SimpleStorage contract instances
    SimpleStorage[] public listOfSimpleStorageContracts;

    /*
     * @notice Deploys a new SimpleStorage contract
     * and stores its reference in the array
     */
    function createSimpleStorageContract() public {

        SimpleStorage simpleStorageContract = new SimpleStorage();

        listOfSimpleStorageContracts.push(simpleStorageContract);
    }

    /*
     * @notice Stores a number inside a selected
     * SimpleStorage contract
     *
     * @param _simpleStorageIndex Index of the contract
     * @param _simpleStorageNumber Number to store
     */
    function sfStore(
        uint256 _simpleStorageIndex,
        uint256 _simpleStorageNumber
    ) public {

        listOfSimpleStorageContracts[_simpleStorageIndex]
            .store(_simpleStorageNumber);
    }

    /*
     * @notice Retrieves a stored number
     * from a selected SimpleStorage contract
     *
     * @param _simpleStorageIndex Index of the contract
     * @return Stored favorite number
     */
    function sfGet(
        uint256 _simpleStorageIndex
    ) public view returns (uint256) {

        return listOfSimpleStorageContracts[_simpleStorageIndex]
            .retrive();
    }
}
