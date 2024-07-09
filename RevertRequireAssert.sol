pragma solidity >=0.7.0 <0.9.0;

contract Exercice{

    uint nombre;

    function setNombre(uint _nombre) public
    {
        /*if(_nombre == 10)
        {
            revert("Le nombre ne peut pas etre 10");
        }*/
        require(_nombre != 10, 'Le nombre ne peut pas etre 10');
        nombre = _nombre;
    }

    function getNombre() public view returns(uint)
    {
        return nombre;
    }

}