# Voting Contract
A simple Solidity voting contract with SafeMath integration.

## Overview
- **BasicVote**: Uses a mapping to track voters, prevents repeat voting with error handling.
- **OptimizedVote**: Reduces Gas by removing mapping, uses balance check (example).

## Deployment
1. Open Remix IDE[](https://remix.ethereum.org).
2. Select Solidity compiler 0.8.x.
3. Deploy using JavaScript VM.
4. Test `vote()` and `getTotalVotes()`.

## Gas Analysis
- **BasicVote.vote()**: ~25,000-30,000 Gas (two state writes: mapping, totalVotes).
- **OptimizedVote.vote()**: ~5,000-10,000 Gas (single state write: totalVotes).

