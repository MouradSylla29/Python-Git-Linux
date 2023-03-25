cat cyberattacks.txt | grep -A1 '<meta cha
rset="UTF-8"/>.*' | grep -v meta | grep -oP '>\K.*(?=<)'
cat cyberattacks.txt | grep -oP '(?<=mw-headline").*?(?=</span>)' | grep -oP '(?<=>).*' |head -n -2
