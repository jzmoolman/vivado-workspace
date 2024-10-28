
git fetch
git reset --hard origin/main
rm -rf ../vivado-risc-v/workspace/Rocket64x1
cp -r Rocket64x1 ../vivado-risc-v/workspace/
