// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract MyToken {

    // public variables here
    string public name;
    string public abbrv;
    uint public total_supply;

    // mapping variable here
    mapping(address=>uint) balances;

    constructor(string memory tokenName,string memory tokenSymbol){
        name = tokenName;
        abbrv = tokenSymbol;
    }

    function mint(address _sender,uint money) public{
        total_supply += money;
        balances[_sender] += money;
    }

    function burn(address _caller,uint money) public{
        require(money <= balances[_caller],"The balance should be higher than burn amount");
        total_supply -= money;
        balances[_caller] -= money;
    }

} 
