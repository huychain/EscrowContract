pragma solidity ^0.4.18;

contract Escrow {
  address public buyer;
  address public seller;
  uint256 public createdAt = 0;
  uint256 public buyerOK = 0;
  uint256 public sellerOK = 0;

  constructor(address _seller) public payable {
    // TODO: validate deposit value???

    buyer = msg.sender;
    seller = _seller;
    createdAt = now;
  }

  function accept() public {
    if (msg.sender == buyer && buyerOK == 0) {
      buyerOK = now;
    } else if (msg.sender == seller && sellerOK == 0) {
      sellerOK = now;
    }
    // if both OK, release money
    if (buyerOK != 0 && sellerOK != 0) {
      // release money to seller
      seller.transfer(address(this).balance);
      // then, destroy contract
      selfdestruct(buyer);
    }
  }

  function reject() public {
    if (msg.sender == seller) {
      // refund to buyer
      buyer.transfer(address(this).balance);
    } else if (msg.sender == buyer) {
      // TODO: make sure seller get their goods back
      // then, refund to buyer
      buyer.transfer(address(this).balance);
    }
    // destroy contract
    selfdestruct(buyer);
  }
}
