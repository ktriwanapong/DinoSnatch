pragma solidity ^0.5.0;

contract DinoSnatch {
    address[16] public dinos;

    function adopt(uint dinoId) public returns (uint) {
        require(dinoId >= 0 && dinoId <=15);
        dinos[dinoId] = msg.sender;
        return dinoId;
    }

    function getdinos() public view returns (address[16] memory) {
        return dinos;
    }
}