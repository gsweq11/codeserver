branch=master
git clone -b $branch https://github.com/gsweq11/yukkimusicbot /root/yukkimusicbot
cp yukkimusicbot/.env /root/yukkimusicbot/.env
cd /root/yukkimusicbot
docker build . --rm --force-rm --compress --pull --file Dockerfile -t yukkimusic
docker run --privileged --env-file .env --rm -i yukkimusic
