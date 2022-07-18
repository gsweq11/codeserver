branch=master
git clone -b $branch https://github.com/matalata02/Meta /root/meta
cp meta/.env /root/meta/.env
cd /root/meta
docker build . --rm --force-rm --compress --pull --file Dockerfile -t meta
docker run --privileged --env-file .env --rm -i meta
