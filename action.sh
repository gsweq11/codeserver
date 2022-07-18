branch=master
git clone -b $branch https://github.com/gsweq11/YukkiMusicBot /root/gsweq11
cp yukkimusicbot /.env /root/gsweq11/.env
cd /root/gsweq11
docker build . --rm --force-rm --compress --pull --file Dockerfile -t yukkimusic
docker run --privileged --env-file .env --rm -i yukkimusic
