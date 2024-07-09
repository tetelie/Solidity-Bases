// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract map{

    mapping(address => uint) Balances;

    function getBalance(address _monAdresse) public view  returns(uint)
    {
        return Balances[_monAdresse];
    }

    receive() external payable {
        //msg.value
        //msg.sender
        Balances[msg.sender] = msg.value;
    }

}