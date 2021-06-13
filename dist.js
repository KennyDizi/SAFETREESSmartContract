const path = require('path');
const fs = require('fs');

const TREESTokenContract = path.resolve(__dirname, './build/contracts/TREESToken.json');

const {
  abi, bytecode, sourceMap, source, compiler, schemaVersion,
} = require(TREESTokenContract);

const contractContent = {
  abi, bytecode, sourceMap, source, compiler, schemaVersion,
};

fs.writeFileSync('./.exported.js', `module.exports = ${JSON.stringify(contractContent)};`, 'utf-8');