cd template

cd anchoring-sc
curl -OL https://raw.githubusercontent.com/PharmaLedger-IMI/ethadapter/master/SmartContracts/contracts/anchoringSC.sol
cd ..
node ./stages/OrgAcc/stage.js
node ./stages/deployAnchoringSC/stage.js

mv ./stages/OrgAcc/orgAcc.json ../ethAdapter
mv ./stages/deployAnchoringSC/anchoringSCInfo.json ../ethAdapter
