branch=master
git clone -b $branch https://github.com/gsweq11/YukkiMusicBot /root/YukkiMusicBot
cp YukkiMusicBot /.env /root/YukkiMusicBot/.env
cd /root/YukkiMusicBot
docker build . --rm --force-rm --compress --pull --file Dockerfile -t yukkimusic
docker run --privileged --env-file .env --rm -i yukkimusic
