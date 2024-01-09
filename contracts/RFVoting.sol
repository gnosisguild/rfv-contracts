// SPDX-License-Identifier: LGPLv3
pragma solidity ^0.8.20;

contract RFVoting {

    mapping(address voter => bytes vote) public votes;
    string public tester = "test";
    uint256 public id = 0;

    event Voted(address indexed voter, bytes vote);

    function voteEncrypted(bytes memory _encVote) public {
        id++;
        //votes[msg.sender] = _encVote;
        emit Voted(msg.sender, _encVote);
    }

    function getVote(address id) public returns(bytes memory) {
        return votes[id];
    }
}
