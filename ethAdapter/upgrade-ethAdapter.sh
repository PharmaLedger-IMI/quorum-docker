./ethAdapter/clean-ethAdapter.sh
docker image rm ethadapter
cd ethAdapter
echo ''
echo 'Download the ethAdapter dockerfile'
echo ''
curl -LO https://raw.githubusercontent.com/PharmaLedger-IMI/ethadapter/master/EthAdapter/dockerfile
docker-compose build --no-cache
cd ..
./ethAdapter/deploy-ethAdapter.sh
