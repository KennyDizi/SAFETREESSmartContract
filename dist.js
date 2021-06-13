const path = require('path');
const fs = require('fs');

const TREESTokenContract = path.resolve(__dirname, './build/contracts/TREESToken.json');
const TREESTokenConfigContract = path.resolve(__dirname, './build/contracts/TREESTokenConfig.json');
const BokkyPooBahsDateTimeLibraryContract = path.resolve(__dirname, './build/utils/BokkyPooBahsDateTimeLibrary.json');

const getSubContent = ({abi, bytecode, sourceMap, source, compiler, schemaVersion}) => ({abi, bytecode, sourceMap, source, compiler, schemaVersion})

const contractsContent = {
    TREESToken: getSubContent(require(TREESTokenContract)),
    TREESTokenConfig: getSubContent(require(TREESTokenConfigContract)),
    BokkyPooBahsDateTimeLibrary: getSubContent(require(BokkyPooBahsDateTimeLibraryContract))
}

fs.writeFileSync('./.exported.js', `module.exports = ${JSON.stringify(contractsContent)};`, 'utf-8');