// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

/**
 * @title Storage (COMP842 Exercise 6 - modified)
 * @dev Remix tutorial Storage contract, extended with a Product ID for a
 *      simple supply-chain use case. Only the contract owner can update it.
 */
contract Storage {

    uint256 number;                 // original tutorial variable

    string private productId;       // NEW: product / batch identifier (e.g. "SKU-2026-0042")
    address public owner;           // account that deployed the contract

    // Emitted every time the product ID changes -> gives an on-chain audit trail
    event ProductIdUpdated(string oldId, string newId, address updatedBy);

    constructor() {
        owner = msg.sender;         // the deployer becomes the owner
    }

    // Access control: reverts the call if the sender is not the owner
    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can update the product ID");
        _;
    }

    // ----- original tutorial functions -----

    /**
     * @dev Store value in variable
     * @param num value to store
     */
    function store(uint256 num) public {
        number = num;
    }

    /**
     * @dev Return value
     * @return value of 'number'
     */
    function retrieve() public view returns (uint256) {
        return number;
    }

    // ----- new functions -----

    /**
     * @dev Update the product ID (owner only)
     * @param newId new product identifier
     */
    function setProductId(string memory newId) public onlyOwner {
        emit ProductIdUpdated(productId, newId, msg.sender);
        productId = newId;
    }

    /**
     * @dev Read the product ID (free call, no gas when called off-chain)
     * @return current product identifier
     */
    function getProductId() public view returns (string memory) {
        return productId;
    }
}
