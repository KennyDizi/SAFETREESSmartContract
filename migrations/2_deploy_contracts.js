// migrations/2_deploy_contracts.js, read more @ https://forum.openzeppelin.com/t/create-an-nft-and-deploy-to-a-public-testnet-using-truffle/2961
// SPDX-License-Identifier: MIT
const TREESToken = artifacts.require("TREESToken");

module.exports = function(deployer) {
  deployer.deploy(TREESToken, "SAFETREES Chain Token","TREES", "https://my-json-server/samplenft/tokens/");
};

/* local deployment result
Truffle Develop started at http://127.0.0.1:9545/

Accounts:
(0) 0xb4646ac10e65cacba6dceec39364b66024e64f48
(1) 0xecc8a67f4973f8b5caac3bc47b5f58613b2cf809
(2) 0x5699029bdf7dd7f236adcb3a64d0d4e9dc57dc82
(3) 0xc39cdaefcaba58da9b1f7a8ff6a3e08961d07e69
(4) 0x699f1459b8fdccfd7aa6a2692e635cf838b2394d
(5) 0xe6c7af5b9d00830915ecbdb9c9d1917275645e6f
(6) 0x41e5364c82a581a323f972d71134b403b6c3cb7e
(7) 0x22cae5e2591f384f66b886f21a5291442d111700
(8) 0x2225a6c3d94bf031fe0078fae6d4a0893f9f5150
(9) 0x4bdfb06ceee74a19a242ed699a67321389112bbe

Private Keys:
(0) a357ad2e1a13d8260a96ebe0a1f2a814b915855cd386579fe1f3a15098fab36e
(1) 5632dd7bbb886b4e4f1d5b5385c56f4e98c8ba50fadca7d1f33b3f5793b25d3a
(2) 4caf4e05bb657f9413cb8c05a1a87080c4503daf6f7d734aa6470b6fad63b384
(3) 813c0285b0d29ec8abc7228feb806e07aeca46c612c5f7d73dcc246da2c7ce78
(4) 2b564a21b4f01c6c7831f46868f08545177718161bf3fe28ebacf7f8f9e213f2
(5) 7542fcc59602b4149d2602bd01bcd9f2e209e4c4d669f352e48e8296bd9a9bf0
(6) 51a75b856d6abcbce88df7401b4f8334c762e35b900f47c15f38b3408128db33
(7) 4dff67c7d116d7cba0501e6bceceae1ecbc12f898cc828879808c406bdb730df
(8) a8f81916543e584de345ba7ecb6d6d83d74376f46a57afc9bc72487b06e3cd11
(9) 819c9e2a9c3dec492b52d357a3acac7b33526209c12756a322108631975cf353
*/