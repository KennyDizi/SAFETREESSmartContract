const path = require('path');
const fs = require('fs');

const TREESTokenContract = path.resolve(__dirname, './build/contracts/TREESToken.json');

const getSubContent = ({abi, bytecode, sourceMap, source, compiler, schemaVersion}) => ({abi, bytecode, sourceMap, source, compiler, schemaVersion})

const contractsContent = {
  CharityChallenge: getSubContent(require(CharityChallengeContract)),
  RealityCheckMock: getSubContent(require(RealityCheckMockContract)),
  TestableCharityChallenge: getSubContent(require(TestableCharityChallengeContract))
}

fs.writeFileSync('./.exported.js', `module.exports = ${JSON.stringify(contractsContent)};`, 'utf-8');