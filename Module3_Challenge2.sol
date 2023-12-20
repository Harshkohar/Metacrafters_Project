// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract EtherConverter {
    receive() external payable {
        // This function is called when the contract receives Ether
    }
    
    function getBalanceInWei() public view returns (uint256) {
        return address(this).balance;
    }
    
    function getBalanceInEther() public view returns (uint256) {
        return address(this).balance / 1 ether;
    }
    
    function getBalanceInGwei() public view returns (uint256) {
        return address(this).balance / 1 gwei;
    }
}
