for i in {1..1000}
do
    echo "Hello" >> hello_multiple
done
for j in {1..10}
do
    for j in {1..100}
    do
        echo "Hello $j" >> hello_multiple_i
    done
done
