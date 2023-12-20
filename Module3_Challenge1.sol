// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract VariableContract {

    // State variables
    uint256 public uintVariable;
    bool public boolVariable;
    string public stringVariable;
    address public addressVariable;
    
    // Setters
    function setUintVariable(uint256 _value) public {
        uintVariable = _value;
    }
    
    function setBoolVariable(bool _value) public {
        boolVariable = _value;
    }
    
    function setStringVariable(string memory _value) public {
        stringVariable = _value;
    }
    
    function setAddressVariable(address _value) public {
        addressVariable = _value;
    }
    
    // Getters
    function getUintVariable() public view returns (uint256) {
        return uintVariable;
    }
    
    function getBoolVariable() public view returns (bool) {
        return boolVariable;
    }
    
    function getStringVariable() public view returns (string memory) {
        return stringVariable;
    }
    
    function getAddressVariable() public view returns (address) {
        return addressVariable;
    }
}
