
cd ethAdapter

curl -LO https://raw.githubusercontent.com/PharmaLedger-IMI/ethadapter/master/EthAdapter/dockerfile

cd ../template

node ./stages/deployEthAdapter/stage.js

cd ../ethAdapter

docker-compose up -d

sleep 20s
curl -I GET http://localhost:3000/check | head -n 1
