branch=master
git clone -b $branch https://github.com/gsweq11/yukkimusicbot /root/yukkimusic
cp yukkimusic/.env /root/yukkimusic/.env
cd /root/yukkimusic
docker build . --rm --force-rm --compress --pull --file Dockerfile -t yukkimusic
docker run --privileged --env-file .env --rm -i yukkimusic
