// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/MerkleProofVerifier.sol";

contract MerkleProofVerifierTest is Test {
    MerkleProofVerifier public verifier;

    function setUp() public {
        verifier = new MerkleProofVerifier();
    }
}
