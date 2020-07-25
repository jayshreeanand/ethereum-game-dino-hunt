pragma solidity ^0.5.0;

contract DinoFactory {

    // declare our event here

    uint dnaDigits = 16;
    uint dnaModulus = 10 ** dnaDigits;

    struct Dino {
        string name;
        uint dna;
    }

    Dino[] public dinos;

    function _createDino(string memory _name, uint _dna) private {
        dinos.push(Dino(_name, _dna));
        // and fire it here
    } 

    function _generateRandomDna(string memory _str) private view returns (uint) {
        uint rand = uint(keccak256(abi.encodePacked(_str)));
        return rand % dnaModulus;
    }

    function createRandomDino(string memory _name) public {
        uint randDna = _generateRandomDna(_name);
        _createDino(_name, randDna);
    }

}
