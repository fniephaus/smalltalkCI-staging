curl -f -L --retry 3 -o cog.tar.gz https://dl.bintray.com/opensmalltalk/vm/cog_linux32x86_squeak.cog.spur_201611162256.tar.gz
curl -f -L --retry 3 -o image.tar.gz https://dl.bintray.com/hpi-swa-lab/smalltalkCI/Squeak-5.1.tar.gz
tar xzf cog.tar.gz
tar xzf image.tar.gz

echo "VM..."
./products/sqcogspurlinuxht/squeak -version
echo "Run..."
./products/sqcogspurlinuxht/squeak -nosound -nodisplay ./Travis.image "$(pwd)/script.st"
