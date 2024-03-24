mkdir tmp
cd tmp
curl -L london.kapeli.com/feeds/zzz/user_contributed/build/${1}/${2}.tgz > user.tgz
tar -xzf user.tgz
rm user.tgz
mkdir -p ../build
mv *.docset ../build
cd ..
rm -rf tmp
