branch=dev
git clone -b $branch https://github.com/TeamKillerX/KillerX-Music /root/TeamKillerX
cp killerx-music/.env /root/TeamKillerX/.env
cd /root/TeamKillerX
docker build . --rm --force-rm --compress --pull --file Dockerfile -t killerx-music
docker run --privileged --env-file .env --rm -i killerx-music
