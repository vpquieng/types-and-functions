// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.8.0/contracts/token/ERC20/ERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.8.0/contracts/access/Ownable.sol";

contract vpqToken is ERC20, Ownable{

    constructor(uint256 initialAmount) ERC20("vpquieng", "vpq"){
        _mint(msg.sender, initialAmount);
    }

    function mint(address to, uint amount) external onlyOwner{
        _mint(to, amount);
    }

    function burn(uint256 amount) external  {
        _burn(msg.sender, amount);
    }

    function transfer(address to, uint256 amount) public override returns (bool){
        _transfer(msg.sender, to, amount);
        return true;
    }
}
