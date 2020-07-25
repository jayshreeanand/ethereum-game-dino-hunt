pragma solidity ^0.5.0;

contract Adoption {
  address[16] public adopters;

  // Capturing a Dino
  function adopt(uint dinoId) public returns (uint) {
    require(dinoId >= 0 && dinoId <= 15);

    adopters[dinoId] = msg.sender;

    return dinoId;
  }

  function getAdopters() public view returns (address[16] memory) {
    return adopters;
  }
}