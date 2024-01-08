// SPDX-License-Identifier: LGPLv3
pragma solidity ^0.8.20;

contract RFVoting {
    mapping(address account => bool isAuthorized) public authorized;
    string public tester = "test";
}
