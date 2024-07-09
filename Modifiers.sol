// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract Exercice
{
    uint nombre;
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

    function setNombre(uint _nombre) public isOwner
    {
        nombre = _nombre;
    }

    function getNombre() public view returns(uint)
    {
        return nombre;
    }
}