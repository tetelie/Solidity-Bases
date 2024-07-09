// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract Exercice{

    enum etape {commande, expedie, livre}

    struct produit{
        uint _SKU;
        Exercice.etape _etape;
    }

    mapping(address => produit) CommandesClient;

    function cmmander(address _client, uint _SKU) public{
        produit memory p = produit(_SKU, etape.commande);
        CommandesClient[_client] = p;
    }

    function expedier(address _client) public{
        CommandesClient[_client]._etape = etape.commande;
    }

    function getSKU(address _client) public view returns(uint)
    {
        return CommandesClient[_client]._SKU;
    }

    function getEtape(address _client) public view returns(etape)
    {
        return CommandesClient[_client]._etape;
    }


}