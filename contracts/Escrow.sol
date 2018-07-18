pragma solidity ^0.4.18;

contract Escrow {
  address public buyer;
  address public seller;
  uint256 public createdAt;

  constructor(address _seller) public payable {
    // TODO: validate deposit value???

    buyer = msg.sender;
    seller = _seller;
    createdAt = now;
  }
}