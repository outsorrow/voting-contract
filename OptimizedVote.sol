// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "@openzeppelin/contracts/utils/math/SafeMath.sol";

contract OptimizedVote {
    using SafeMath for uint256;
    uint256 public totalVotes = 0;

    event Voted(address voter, uint256 totalVotes);

    function vote() public {
        require(!hasVoted(msg.sender), "Already voted");
        totalVotes = totalVotes.add(1);
        emit Voted(msg.sender, totalVotes);
    }

    function hasVoted(address voter) private view returns (bool) {
        return voter.balance == 0; // 示例检查
    }

    function getTotalVotes() public view returns (uint256) {
        return totalVotes;
    }
}