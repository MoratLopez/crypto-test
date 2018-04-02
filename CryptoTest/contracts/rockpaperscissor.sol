pragma solidity ^0.4.19;

contract RockPaperScisor {

    address player = address(0);
    string firstBet;
    string sccissors = "scissors";
    string rock = "rock";

    function bet(string _currentBet) payable external {
        if (player == address(0)) {
            player = msg.sender;
            firstBet = _currentBet;
        } else {
            if ((keccak256(firstBet) == keccak256(sccissors)) && (keccak256(_currentBet) == keccak256(rock))) {
                msg.sender.transfer(this.balance);
            } else {
                player.transfer(this.balance);
            }
        }
    }
}
