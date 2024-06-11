// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.26;

contract Tournament {
    struct Player {
        address playerAddress;
        uint score;
    }

    mapping(address => Player) public players;
    address[] public playerAddresses;

    function registerPlayer(address _playerAddress) public {
        players[_playerAddress] = Player(_playerAddress, 0);
        playerAddresses.push(_playerAddress);
    }

    function updateScore(address _playerAddress, uint _score) public {
        players[_playerAddress].score += _score;
    }

    function getScore(address _playerAddress) public view returns (uint) {
        return players[_playerAddress].score;
    }

    function declareWinner() public view returns (address) {
        address winner;
        uint highestScore = 0;
        for (uint i = 0; i < playerAddresses.length; i++) {
            if (players[playerAddresses[i]].score > highestScore) {
                highestScore = players[playerAddresses[i]].score;
                winner = playerAddresses[i];
            }
        }
        return winner;
    }
}