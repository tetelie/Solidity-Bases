// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract Owner
{
    address owner;

    constructor()
    {
        owner = msg.sender;
    }

    modifier isOwner()
    {
        require(msg.sender == owner, "Not the owner");
        _;
    }
}


contract Exercice is Owner
{
    uint nombre;

    function setNombre(uint _nombre) public isOwner
    {
        nombre = _nombre;
    }

    function getNombre() public view returns(uint)
    {
        return nombre;
    }
}