ls
ls -a
whoami
ls -ltrh
ls
ls -a
exit
ls -ltrh
ls -a
cd .profile
git config
mkdir TD_1
mkdir TD_2
mkdir TD_3
mkdir TD_4
mkdir TD_5
ls -a
ls -ltrh
sudo upgrade apt
upgrade apt
sudo apt-get update
sudo apt-get install emacs
sudo apt install git
sudo apt install cmatrix
sudo apt install tmux
ls
ls -a
ls -ltrh
ls -l
cd TD_1
emacs test
cat test
bash test
ls -l
pwd
cd /
ls
mkdir test
cd home
ls
whoami
cd
whoami
cd ..
cd
pwd
mkdir test
ls -l
rmdir test
cd TD_1
mkdir TD1_1
mkdir TD1_2
ls -l
chmod 644 test
ls -l
chmod 600 test
bash test
ls -l
ls -ltrh
cd ..
cd TD_2
mkdir TD2_1
mkdir TD2_2
mkdir TD2_3
cd ..
cd TD_1
cd TD1_1
mkdir linux_ex_1
cd linux_ex_1
touch Mourad_Sylla.txt
ls -l
groups
cd
ls -ltrh
cd TD_1
ls -l
TD1_1
cd TD1_1
mv test 
mv --help
ls
cd linux_ex_1
mkdir notes
cd notes
touch fichier.txxt
cd ../
emacs
emacs script_1.sh
ls -l
car script_1.sh
cat script_1.sh
bash script_1.sh
./script_1.sh
ls -l
chmod 744 script_1.sh
ls -l
./script_1.sh
emacs credentials
ls -l
cat credentials
bash credentials
more credentials
ls -l
chmod 644 credientials
chmod 644 credentials
ls -l
chmod 744 credentials
ls l-
ls -l
chmod 777 credentials
ls -l
cat .private file
cd ..
cd /
sudo emacs .private_file
cat .private_file
ls - ltrha
ls -ltrha
sudo chmod 777 .private_file
ls -ltrha
cmatrix
curl -s https://stockx.com/fr-fr/nike-sb-dunk-low-ebay-sandy-boedecker | grep -oE 'lowest ask\$[0-9,]+' | cut -c 12-
curl -s https://stockx.com/fr-fr/nike-sb-dunk-low-ebay-sandy-boedecker | grep -oE 'lowest ask\$[0-9,]+' | cut -c 12- > DunkL_Lowest_ask_price
emac DunkL_Lowest_ask_price
nano DunkL_Lowest_ask_price
ls
mkdir Project
ls
rm DunkL_Lowest_ask_price
ls
cd Project
curl -s https://stockx.com/fr-fr/nike-sb-dunk-low-ebay-sandy-boedecker | grep -oE 'lowest ask\$[0-9,]+' | cut -c 12- > DKL_LaskPrice.txt
nano DKL_LaskPrice.txt
cat DKL_LaskPrice.txt
curl -s https://stockx.com/fr-fr/nike-sb-dunk-low-ebay-sandy-boedecker > DKL_StockX.txt
nano DKL_StockX.txt
curl -s https://www.coingecko.com/en/coins/bitcoin | sed -n 's/.*class="no-wrap text-lg font-bold" data-coin-price="\(.*\)".*/\1/p' > coin_gecko_bitcoin.txt
nano coin_gecko_bitcoin.txt
rm coin_gecko_bitcoin.txt
curl -s https://www.coingecko.com/en/coins/bitcoin > coingecko_BC.txt
nano coingecko_BC.txt
nano DKL_StockX.txt
curl -s https://moning.co/stocks/AAPL.US > Moning_AAPL.txt
nano Moning_AAPL.txt
curl -s https://moning.co/stocks/AAPL.US | grep -oE '<div class="series-price">[0-9]+\.[0-9]+ \$</div>' | sed -e 's/<[^>]*>//g' -e 's/\$//g'
curl -s https://moning.co/stocks/AAPL.US | grep -oE '<div class="series-price">[0-9]+\.[0-9]+ \$</div>' | sed -e 's/<[^>]*>//g' -e 's/\$//g' | awk '$0 >= "2012-03-05"'
cat Moning_AAPL.txt | grep -A1 -m1 'Price over 10 years' | tail -n1 | sed 's/^ *//;s/ *$//'
cat Moning_AAPL.txt | grep -A1 -m1 'Price over 10 years' 
cat Moning_AAPL.txt | grep -o -m1 "<title>.*</title>" | sed 's/<title>\(.*\)<\/title>/\1/'
curl -s https://moning.co/stocks/AAPL.US | grep -oE 'data-graph="[^"]+"' | sed -e 's/data-graph="//' -e 's/"$//' | base64 -d | grep -oE '"c":([0-9]+\.[0-9]+)' | sed -e 's/"c"://'
curl -s https://moning.co/stocks/AAPL.US | grep -oE 'data-graph="[^"]+"'
curl -s https://moning.co/stocks/AAPL.US | grep -oE 'data-graph="[^"]+"' | sed -e 's/data-graph="//' -e 's/"$//' | base64 -d | grep -oE '{"x":"[^"]+","y":"[^"]+"}' | sed -e 's/{"x":"\([^"]*\)","y":"\([^"]*\)"}/Date : "\1"; Price : "\2"/'
curl -s https://moning.co/stocks/AAPL.US | grep -oE 'data-graph="[^"]+"' | grep -oE '{"x":"[^"]+","y":"[^"]+"}' | sed -e 's/{"x":"\([^"]*\)","y":"\([^"]*\)"}/Date : "\1"; Price : "\2"/'
curl -s https://moning.co/stocks/AAPL.US | grep -oE 'data-graph="[^"]+"' | sed -e 's/data-graph="//' -e 's/"$//' | base64 -d | grep -oE '{"x":"[^"]+","y":"[^"]+"}' | sed -e 's/{"x":"\([^"]*\)","y":"\([^"]*\)"}/Date : "\1"\nPrice : "\2"/'
curl -s https://moning.co/stocks/AAPL.US | grep -oE 'data-graph="[^"]+"' | sed -e 's/data-graph="//' -e 's/"$//' | grep -oE '{"x":"[^"]+","y":"[^"]+"}' | sed -e 's/{"x":"\([^"]*\)","y":"\([^"]*\)"}/Date : "\1"\nPrice : "\2"/'
curl -s https://moning.co/stocks/AAPL.US | grep -oE '{"x":"[^"]+","y":"[^"]+"}' | sed -e 's/{"x":"\([^"]*\)","y":"\([^"]*\)"}/Date : "\1"; Price : "\2"/'
curl -s https://moning.co/stocks/AAPL.US | grep -oE '{&quot;x&quot;:&quot;[^&quot;]+&quot;,&quot;y&quot;}:&quot;}[^&quot;}]+&quot;}' | sed -e 's/{"x":"\([^"]*\)","y":"\([^"]*\)"}/Date : "\1"; Price : "\2"/'
curl -s https://moning.co/stocks/AAPL.US | pup 'canvas#priceChart'
curl -s https://moning.co/stocks/AAPL.US | grep -oE 'canvas id="priceChart"[^>]+>' | sed -e 's/.*var data = //' -e 's/;.*$//' | jq '.data[] | [.t,.c]' | sed -e 's/^\[//' -e 's/\]$//' -e 's/,/;/g'
curl -s https://moning.co/stocks/AAPL.US | grep -oE 'canvas id="priceChart"[^>]+>' 
curl -s https://moning.co/stocks/AAPL.US | grep -oE 'canvas id="priceChart"[^>]+>' > Moning_AAPL_Prices.txt
ls 
Moning_AAPL_Prices.txt | sed -e 's/.*var data = //' -e 's/;.*$//'
Moning_AAPL_Prices.txt | sed -e 's/^\[//' -e 's/\]$//' -e 's/,/;/g'
Moning_AAPL_Prices.txt |  sed 's/&quot;/"/g'
Moning_AAPL_Prices.txt | sed 's/&quot;/"/g'
Moning_AAPL_Prices.txt | sed 's/&quot;/"/g' | sed -e 's/.*var data = //' -e 's/;.*$//' | jq '.data[] | [.t,.c]' | sed -e 's/^\[//' -e 's/\]$//' -e 's/,/;/g'
Moning_AAPL_Prices.txt | sed -e 's/&quot;/"/g' | sed -e 's/.*var data = //' -e 's/;.*$//' | jq '.data[] | [.t,.c]' | sed -e 's/^\[//' -e 's/\]$//' -e 's/,/;/g' -e 's/"//g' | sed -e 's/Date/ "Date"/g' -e 's/Price/ "Price"/g'
sudo apt-get install python3-pip
sudo pip3 install virtualenv
virtualenv myenv
source myenv/bin/activate
pip install requests
pip install dash
ls -l
rm myenv
cd Project
ls
cd ..
-i "LightsailDefaultKey-eu-west-3.pem" admin@52.47.153.190 > VM_Mourad_Sylla
cd TD_1
ls
TD1_2
ls
cd TD1_2
ls
cat /etc/os-release
ps -ef
lscpu|grep cache
df -h
du -h
cat /proc/monts
cat /proc/mounts
dmesg | grep cache
dmesg | grep usb
hostname
emacs script_td2/9_ex1.txt
bash script_td2/9_ex1.txt
exit
cd TD_1
cd TD1_2
x = "piri pimpin"
x="piri pimpin"
$x
echo $x
x="$x piri pimpon"
echo $x
mkdir my_programs
ls
cs script_td2
cd script_td2
ls
ls -l
emacs 9_ex1.txt
rm 9_ex1.txt
cd ..
rm script_td2
rmdir script_td2
emacs script_TD2_9_ex1.txt
ls
cd my_programs
echo "echo pilou pilou" > pilou
bash pilou
./pilou
chmod +x pilou
./piloi
./pilou
echo $PATH
export PATH=$PATH:$(pwd)
export PATH
cd ~
pilou
nano ~/.profile
export PATH=$PATH:/path/to/my_programs
emacs .profile
ls
emacs VM_Mourad_Sylla
rm VM_Mourad_Sylla
cd TD_1
cd TD1_2
nano say_hello.sh
ls
more say_hello.sh
chmod +x say_hello.sh
./say_hello.sh
nano say_hello.sh
./say_hello.sh
ls
date
crontab -e
crontab -l
PATH
echo $PATH
whoami
crontab -e
pwd
crontab -e
crontal -l
crontab -l
cat hello.txt
ls -l
cat hellos.txt
./say_hellos.sh
./say_hello.sh
bash hellos.txt
nano hellos.txt
crontab -e
cat hellos.txt
ls -l
mkdir hash_checksum
cd hash_checksum
touch .sensible_addresses .sensible_passwords
ls
ls -l
ls -a
echo "echo 'Have a good day'" > gentle_script.sh
sha256sum gentle_script.sh >log_sha
ls
cat log_sha
./gentle_script.sh
rm .sensible*
sha256sum gentle_script.sh > log_sha
./gentle_script.sh
cat log_sha
ls 
ls -a
nano script_TD2_9_ex4.txt
cd ..
cat log_sha
ls -a
sudo apt-get update
sudo apt_get install qpdf
sudo apt-get install qpdf
mkdit compress
mkdir compress
cd compress
echo "Hello" > hello
cat hello | zlib-flate -compress=1 > hello.z
cat hello.z
xH?~/TD1_2/compress>
pwd
xH?/home/admin/TD_1/TD1_2/compress/TD1_2/compress>
cat hello.z | zlib-flate -uncompress
Hello
ls -l hello >>log_compress
ls -l hello.z >>log_compress
cat log_compress
nano write_hellos.sh
more write_hellos.sh
wc -l hello_multiple
yes "Hello" | head -n 1000 > hello_multiple
nano hello_multiple
zlib-flate -1 < hello_multiple | wc -c >> log_compress
for i in {1..100}; do echo "Hello $i" >> hello_multiple_i; done
nano hello_multiple_i
zlib-flate -1 < hello_multiple_i | wc -c >> log_compress
cat log_compress | awk '{print $1/1000}' | xargs -I {} echo "{} :1"
cat hello_multiple | zlib-flate -compress=1 > hello_multiple.z
cat hello_multiple.z | zlib-flate -uncompress | tail
cat hello_multiple.z | zlib-flate -uncompress | wc -l
ls -l hello_multiple >>log_compress
ls -l hello_multiple.z >>log_compress
cat hello_multiple_i | zlib-flate -compress=1 > hello_multiple_i.z
cat hello_multiple_i.z | zlib-flate -uncompress | tail
cat hello_multiple_i.z | zlib-flate -uncompress | wc -l
cat log_compress
ls -l
sudo useradd -m client_1
sudo passwd client_1
sudo useradd -m client_2
sudo passwd client_2
cd ..
sudo useradd -m client_1
sudo passwd client_1
sudo useradd -m contributor_1
sudo passwd contributor_1
sudo useradd -m contributor_2
sudo passwd contributor_2
sudo groupadd clients
sudo groupadd contributors
sudo usermod -a -G clients client_1
sudo usermod -a -G contributors contributor_1
sudo usermod -a -G contributors contributor_2
getent passwd
getent group
mkdir lika_project
sudo chgrp clients lika_project
sudo chmod 750 lika_project
sudo setfacl -m g:clients:r lika_project
sudo setfacl -m g:contributors:rw lika_project
ls 
ls -l lika_project
su client_1
ls -ltrh
sudo usermod -a -G clients client_1
sudo usermod -a -G contributors contributor_1
sudo usermod -a -G contributors contributor_2
sudo usermod -a -G clients client_2
cd lika_project
echo "commands : useradd, groupadd, usermod, su, getent" >> script_TD2_9_ex6.txt
cat script_TD2_9_ex6.txt
cd ..
ls
cd TD_2
ls
cd TD2_1
cd ..
cd TD_2
ls
cd TD2_2
echo " ssh -i "LightsailDefaultKey-eu-west-3.pem" admin@52.47.153.190" >> login_ssh_AWS.txt
cat login_ssh_AWS
cat login_ssh_AWS.txt
nano login_ssh_AWS.txt
cd ~
ls -ltrh
cd .ssh
ls -ltrha
sudo chmod 744 authorized_keys
ls -a
ls -la
echo "LightsailDefaultKey-eu-west-3.pem" > id_rsa
ls -ltrha
cd ..
ls
echo " ssh -i "LightsailDefaultKey-eu-west-3.pem" admin@52.47.153.190" >> connect_ssh_AWS.sh
more connect_ssh_AWS.sh
chmod 744 connect_ssh_AWS.sh
./connect_ssh_AWS.sh
logout
ls
cd TD_2
cd TD2_2
echo "COMMANDS: ssh admin@13.38.52.82      ./connect.sh        scp test admin@13.38.52.82:/home/admin         scp admin@13.38.52.82:/home/admin/distant_test_file .         ./scp_to_remote_instance.sh local_test_file /home/admin            ./scp_from_remote_instance.sh /home/admin distant_test_file " >> script_TD4_9.txt
nano script_TD4_9.txt
cd..
cd ..
cd TD2_3
curl -s COMMANDS:ssh admin@13.38.52.82./connect.shscp test admin@13.38.52.82:/home/adminscp admin@13.38.52.82:/home/admin/distant_test_file .
curl -s https ://opendomesday.org/api/1.0/manor/181/ > manor
nano manor
curl -s https ://opendomesday.org/api/1.0/manor/181/
curl -s https ://opendomesday.org/api/1.0/country/ | grep -oP '\{.*?\[.*?\]\}' | grep Derbyshire > derbyshire.json
curl -s https ://opendomesday.org/api/1.0/country/ | grep -oP '\{.*?\[.*?\]\}' | grep Derbyshire
curl -s https://opendomesday.org/api/1.0/manor/181/
curl -s https://opendomesday.org/api/1.0/manor/181/ > manor
curl -s https://opendomesday.org/api/1.0/country/ | grep -oP '\{.*?\[.*?\]\}' | grep Derbyshire > derbyshire.json
nano derbyshire.json
curl -s https://opendomesday.org/api/1.0/country/ | grep -oP '\{.*?\[.*?\]\}' | grep Derbyshire 
curl -s https://opendomesday.org/api/1.0/country/ | grep -oP '\{.*?\[.*?\]\}'
curl -s https://opendomesday.org/api/1.0/country/ 
curl -s https://opendomesday.org/api/1.0/country/ | grep -oP '\{.*?\[.*?\]\}'
curl -s https://opendomesday.org/api/1.0/country/| grep -oP '\{.*?\[.*?\]\}'
curl -s https://opendomesday.org/api/1.0/manor/181| grep -oP '\{.*?\[.*?\]\}'
curl -s https://opendomesday.org/api/1.0/manor/181/ | grep -oP '\{.*?\[.*?\]\}'
cd ..
cd TD2_1
ls
ls -a
curl https ://en.wikipedia.org/wiki/List_of_cyberattacks > cyberattacks.txt
grep meta cybertattacks
grep meta cybertattacks.txt
nano cyberattacks.txt
curl https://en.wikipedia.org/wiki/List_of_cyberattacks > cyberattacks.txt
nano cyberattacks.txt
grep meta cybertattacks.txt
nano cyberattacks.txt
grep meta cyberattacks.txt
echo 'cat cyberattacks.txt | grep -A1 '<meta charset="UTF-8"/>.*' | grep -v meta | grep -oP '>\K.*(?=<)'' > script_td3_9_ex2.sh
bash script_td3_9_ex2.sh
cat cyberattacks.txt | grep -A1 '<meta charset="UTF-8"/>.*' | grep -v meta | grep -oP '>\K.*(?=<)'
cat cyberattacks.txt | grep -A1 '<meta charset="UTF-8"/>.*' | grep -v meta | grep -oP '>\K.*(?=<)' > script_td3_9_ex2.sh
bash script_td3_9_ex2.sh
nano script_td3_9_ex2.sh
bash script_td3_9_ex2.sh
nano script_td3_9_ex2.sh
bash script_td3_9_ex2.sh
nano script_td3_9_ex2.sh
bash script_td3_9_ex2.sh
nano script_td3_9_ex2.sh
bash script_td3_9_ex2.sh
ls
cd ..
ls -l
ls -l TD2_1
ls -l TD2_2
ls -l TD2_3
cd TD2_3
history
cd ..
history_1 > total_script_made.txt
history > total_script_made_1.txt
nano total_script_made_1.txt
git config
git
git config --global user.name "Mourad Sylla"
git config --global user.email "mourad.sylla@edu.devinci.fr"
git config --list
cd TD_3
mkdir test_repository
cd test test_repository
cd test_repository
get init
git init
ls -a
git status
touch test
git add test
git status
git commit -m "Add readme file"
git status
git log
ls -a
git config --list
echo "# Test repository" > readme.md
status
git status
git add readme.md
git status
git commit -m "Add readme file"
git status
git log
touch main.py
touch function.py
ls -ltrh
git status
git add main.py
git status
git commit -m "Add main file"
git status
git add function.py
git commit -m "Add function file"
git log
touch requirements.txt
touch .gitignore
touch .private
git status
git add*
git add *
git status
git add *.
git add .gitignore
git add .private
git status
git commit -m "Add standard repo files"
git status
git log
git log --oneline
echo "Test 2" >> readme.md
git add readme.md
git diff --staged
git commit -m "new version readme"
git diff
git log
history > total_script_made_2.txt
nano total_script_made_2.txt
rm total_script_made_2.txt
ls -l
cd td_2
cd TD_2
ls -l TD2_3
ls -l TD2_2
ls -l TD2_1
cd TD2_1
nano script_td3_9_ex2.sh
curl -s https://moning.co/stocks/AAPL.US | grep -oE 'canvas id="priceChart"[^>]+>'
curl -s https://moning.co/stocks/AAPL.US | grep -oE 'canvas id="priceChart"[^>]+>' | sed 's/"//g'
curl -s https://moning.co/stocks/AAPL.US | grep -oE 'canvas id="priceChart"[^>]+>' | sed 's/&quot;//g'
curl -s https://moning.co/stocks/AAPL.US | grep -oE 'canvas id="priceChart"[^>]+>' | sed 's/&quot;//g' | grep -oP '(?<=data-graph="[).*?(?=]" data-currency="USD")'
curl -s https://moning.co/stocks/AAPL.US | grep -oE 'canvas id="priceChart"[^>]+>' | sed 's/&quot;//g' | grep -oP '(?<=data-graph="[).*(?=]" data-currency="USD")'
curl -s https://moning.co/stocks/AAPL.US | grep -oE 'canvas id="priceChart"[^>]+>' | sed 's/&quot;//g' | grep -oP '(?<=data-graph="[).*(?=]" data-currency="USD")' | grep -oP '(?<=>).*'
curl -s https://moning.co/stocks/AAPL.US | grep -oE 'canvas id="priceChart"[^>]+>' | sed 's/&quot;//g' | grep -oP '(?<=data-graph="[).*(?=<]" data-currency="USD")' | grep -oP '(?<=>).*'
curl -s https://moning.co/stocks/AAPL.US | grep -oE 'canvas id="priceChart"[^>]+>' | sed 's/&quot;//g' | grep -oP 'data-graph="\[\K.*?(?=\]".*data-currency="USD")'
curl -s https://moning.co/stocks/AAPL.US | grep -oE 'canvas id="priceChart"[^>]+>' | sed 's/&quot;//g' | grep -oP 'data-graph="\[\K.*?(?=\]".*data-currency="USD")' | grep -oP '\{x:\K[0-9-]+|y:\K[0-9.]+(?=\})'
curl -s https://moning.co/stocks/AAPL.US | grep -oE 'canvas id="priceChart"[^>]+>' | sed 's/&quot;//g' | grep -oP 'data-graph="\[\K.*?(?=\]".*data-currency="USD")' | grep -oP '\{x:\K[0-9-]+|y:\K[0-9.]+(?=\})' | paste -d ',' - - 
curl -s https://moning.co/stocks/AAPL.US | grep -oE 'canvas id="priceChart"[^>]+>' | sed 's/&quot;//g' | grep -oP 'data-graph="\[\K.*?(?=\]".*data-currency="USD")' | grep -oP '\{x:\K[0-9-]+|y:\K[0-9.]+(?=\})' | paste -d ',' - - -
cd project
ls
cd Project
curl -s https://moning.co/stocks/AAPL.US | grep -oE 'canvas id="priceChart"[^>]+>' | sed 's/&quot;//g' | grep -oP 'data-graph="\[\K.*?(?=\]".*data-currency="USD")' | grep -oP '\{x:\K[0-9-]+|y:\K[0-9.]+(?=\})' | paste -d ',' - - > Moning_Prices_AAPL.csv
nano Moning_Prices_AAPL.csv
echo "curl -s https://moning.co/stocks/AAPL.US | grep -oE 'canvas id="priceChart"[^>]+>' | sed 's/&quot;//g' | grep -oP 'data-graph="\[\K.*?(?=\]".*data-currency="USD")' | grep -oP '\{x:\K[0-9-]+|y:\K[0-9.]+(?=\})' | paste -d ',' - - > Moning_Prices_AAPL.csv" > price_extraction.sh


echo "curl -s https://moning.co/stocks/AAPL.US | grep -oE 'canvas id="priceChart"[^>]+>' | sed 's/&quot;//g' | grep -oP 'data-graph="\[\K.*?(?=\]".*data-currency="USD")' | grep -oP '\{x:\K[0-9-]+|y:\K[0-9.]+(?=\})' | paste -d ',' - - > Moning_Prices_AAPL.csv" > price_extraction.sh
ls -l
touch price_extraction.sh
nano price_extraction.sh
cat price_extraction.sh
chmod 744 price_extraction.sh
ls -l
ls
cd TD_5
git init
sudo apt-get install python3-pip
pip3 install virtualenv
virtualenv .env
source .env/bin/activate
pip list
git status
touch .gitignore
*.pyc
ls
ls -l
ls -a
*.pyc
__pycache__/
.env/
nano .gitignore
git status
git add .
git commit -m "Initial commit"
git status
pip install requests
nano derbyshire_places.py
source .env/bin/activate
python derbyshire_places.py
git status
git add derbyshire_places.py
git commit -m "derbyshire test"
git status
nano derbyshire_places.py
python derbyshire_places.py
git add derbyshire_places.py
git commit -m "derbyshire test"
nano mymodule.py
python3
>>> import mymodule
>>> mymodule.get_manor_ids('12345')
python3
>>> import mymodule
>>> derbyshire_place_id = '635'
>>> manor_ids = mymodule.get_manor_ids(derbyshire_place_id)
>>> print(manor_ids)
pythob3
python3
nano mymodule.py
python3 mymodule.py
git status
git add mymodule.py
git commit -m "my module test"
git log
nano mymodule.py
python3 mymodule.py
nano mymodule.py
git add mymodule.py
git commit -m "Added docstrings to functions"
git log
git config --global--list
git config --list
git push -u origin main
git clone git@github.com:MouradSylla29/Python-Git-Linux.git
cd ~
ls -a
cd .ssh
ls -a
nano authorized_keys
nano is_rsa
rm 
nano know_hosts
rm know_hosts
nano known_hosts
ls -a
cd ..
cd TD_5
git clone git@github.com:MouradSylla29/Python-Git-Linux.git
git clone https://github.com/MouradSylla29/Python-Git-Linux.git
git push -u origin main
git log
git push -u origin master
git push -u master 
git pull
git push -f origin manin
git log --graph
ssh-keygen
cd /home/admin/.ssh/id_rsa
cd ~
cd /home/admin/.ssh/id_rsa
ls -a
cd .ssh
ls -a
cat ~/.ssh/id_rsa.pub
ssh-keygen
ls -a
nano id_rsa
nano id_rsa.pub
cat ~/.ssh/id_rsa.pub
cd ..
cd TD_5
ls -a
nano github
cd Python-Git-Linux
git clone git@github.com:MouradSylla29/Python-Git-Linux.git
git add .
git commit -m "Added new feature"
git push origin master
git push --set-upstream origin feature-branch
git push --set-upstream origin master
git log
git push -u origin main
git log 
git push -u origin main
git merge origin/main
git push -u origin main
git pull origin main 
git fetch
git log
git merge
git init
git log
ls -l
cd TD_4
echo" un test" > test.txt
echo "un test" > test.txt
ls
git add .
git commit -m "test"
git push -u origin main
git log
git push -u origin master
ls 
git clone https://github.com/MouradSylla29/Python-Git-Linux.git
ls
cd Python-Git-Linux
ls
echo "test" > test.txt
git add .
git commit -m "mon test"
git log
git push -u origin main
git push -u origin master
git push -u origin main
ls -l
cd Project
ls -l
nano Moning_AAPL_Prices.txt
nano scraper.sh
bash scraper.sh
./scraper.sh
chmod +x scraper.sh
./scraper.sh
nano scraper.sh
./scraper.sh
nano dashboard.py
pip install dash dash_core_components
pip install dash_html_components dash_renderer plotly
python dashboard.py
python --version
sudo apt-get install python
python dashboard.py
pip install dash
pip install dash dash_core_components dash_html_components dash_renderer plotly
python dashboard.py
pip --version
pip3 install dash
python -m venv myenv
sudo apt-get install python3-pip
pip3 install virtualenv
virtualenv .env
source .env/bin/activate
pip list
pip install dash dash_core_components dash_html_components dash_renderer plotly
python dashboard.py
nano dashboard.py
python dashboard.py
nano dashboard.py
python dashboard.py
pip show dash
pip install dash --upgrade
python dashboard.py
nano dashboard.py
python dashboard.py
nano dashboard.py
python dashboard.py
nano dashboard.py
python dashboard.py
pip install dash --upgrade
python dashboard.py
nano dashboard.py
nano dashboard2.py
pip install requests
python dashboard2.py
nano dashboard2.py
python dashboard2.py
nano dashboard.py
rm dashboard2.py
cd Project
rm dashboard2.py
nano dashboard2.py
