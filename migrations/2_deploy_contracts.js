var ConvertLib = artifacts.require("./ConvertLib.sol");
var MetaCoin = artifacts.require("./MetaCoin.sol");

//var Escrow = artifacts.require("Escrow.sol");
var Store = artifacts.require("Store");

module.exports = function(deployer, network, accounts) {
  deployer.deploy(ConvertLib);
  deployer.link(ConvertLib, MetaCoin);
  deployer.deploy(MetaCoin);

  //deployer.deploy(Escrow, accounts[1], {from: accounts[0], value: web3.toWei(1, "finney")});
  deployer.deploy(Store);
};
