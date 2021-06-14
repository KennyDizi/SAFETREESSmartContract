// migrations/2_deploy_contracts.js, read more @ https://forum.openzeppelin.com/t/create-an-nft-and-deploy-to-a-public-testnet-using-truffle/2961
// SPDX-License-Identifier: MIT
const TREESToken = artifacts.require("TREESToken");

module.exports = function(deployer) {
  deployer.deploy(TREESToken, "SAFETREES Chain Token","TREES", "https://my-json-server/samplenft/tokens/");
};