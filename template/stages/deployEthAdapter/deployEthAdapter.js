function updateEthAdapterConfigMap(){
    const fs = require('fs');
    let ethAdapter = fs.readFileSync('../ethAdapter/template/docker-compose.yml.template').toString();
    const sc = fs.readFileSync('../ethAdapter/anchoringSCInfo.json',).toString();
    const orgAcc = fs.readFileSync('../ethAdapter/orgAcc.json').toString();



    const scData = JSON.parse(sc);
    const orgAccData = JSON.parse(orgAcc);

    ethAdapter = ethAdapter.replace('%SMARTCONTRACTADDRESS%',scData.contractAddress);
    ethAdapter = ethAdapter.replace('%SMARTCONTRACTABI%',JSON.stringify(scData.abi));
    ethAdapter = ethAdapter.replace('%ORGACCOUNT%',JSON.stringify(orgAccData));



    console.log(ethAdapter);
    fs.writeFileSync('../ethAdapter/docker-compose.yml',ethAdapter);
    console.log('Eth Adapter docker-compose file generated.')
}


module.exports = {
    updateEthAdapterConfigMap
}
