// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "openzeppelin-contracts/contracts/utils/cryptography/MerkleProof.sol";

contract MerkleProofVerifier {
    function verify(bytes32 root, bytes32[] memory proof, address addr) external pure returns (bool) {
        bytes32 leaf = keccak256(bytes.concat(keccak256(abi.encode(addr))));
        return MerkleProof.verify(proof, root, leaf);
    }

    function verifyWithAmount(bytes32 root, bytes32[] memory proof, address addr, uint256 amount)
        external
        pure
        returns (bool)
    {
        bytes32 leaf = keccak256(bytes.concat(keccak256(abi.encode(addr, amount))));
        return MerkleProof.verify(proof, root, leaf);
    }
}
