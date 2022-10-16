// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.17;

import "hardhat/console.sol";

contract WavePortal {
    uint256 totalWaves;
    mapping (address => uint256) public ownerToWaves;

    constructor() {
        console.log("Yo yo, I am a contract and I am smart");
    }

    function wave() public {
        totalWaves += 1;
        ownerToWaves[msg.sender] += 1;
        console.log("%s has waved!", msg.sender);
    }

    function getTotalWaves() public view returns (uint256) {
        console.log("We have %d total waves!", totalWaves);
        return totalWaves;
    }

    function getWavesByOwner(address owner) public view returns (uint256) {
        console.log("%s has waved %d times!", owner, ownerToWaves[owner]);
        return ownerToWaves[owner];
    }
}