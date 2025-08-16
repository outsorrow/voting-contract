// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "@openzeppelin/contracts/utils/math/SafeMath.sol";

contract BasicVote {
    using SafeMath for uint256;
    mapping(address => bool) public voted;
    uint256 public totalVotes = 0;
    event Voted(address indexed voter, uint256 totalVotes);
    error AlreadyVoted(address voter);

    function vote(address voter) public virtual {
        if (voted[voter]) {
            revert AlreadyVoted(voter);
        }
        voted[voter] = true;
        totalVotes = totalVotes.add(1);
        emit Voted(voter, totalVotes);
    }

    function getTotalVotes() public view returns (uint256) {
        return totalVotes;
    }
}