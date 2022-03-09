echo "start"

function pause(){
   read -p "$*"
}

rm -rf ./files
mkdir files
cd files

echo "first line" >> 1.txt
echo "first line" >> 2.txt
echo "first line" >> 3.txt

echo "second line" >> 1.txt
echo "second line" >> 2.txt
echo "second line" >> 3.txt

echo "third line" >> 1.txt
echo "third line" >> 2.txt
echo "third line" >> 3.txt

pause 'Press [Enter] to produce conflict.'

sed -i -e 's/first line/fourth line/' ./1.txt && rm 1.txt-e
# sed -i -e 's/first line/fifth line/' ./1.txt && rm 1.txt-e
