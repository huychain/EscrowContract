///// Backup auto-code /////
/*
var ConvertLib = artifacts.require("./ConvertLib.sol");
var MetaCoin = artifacts.require("./MetaCoin.sol");

module.exports = function(deployer) {
  deployer.deploy(ConvertLib);
  deployer.link(ConvertLib, MetaCoin);
  deployer.deploy(MetaCoin);
};
*/

var Escrow = artifacts.require("Escrow.sol");

module.exports = function(deployer, network, accounts) {
  deployer.deploy(Escrow, accounts[1], {from: accounts[0], value: web3.toWei(1, "finney")});
};
