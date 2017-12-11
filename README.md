# docker-altdns

# build altdns docker image

````shell
./build.sh
````


# run altdns
/usr/bin/python /opt/subscan/altdns/altdns.py -i $finaloutputbeforealtdns -o data_output -w words.txt -r -e -d $altdnsserver -s $altdnsoutput -t $altdnsthreads


````shell
./altdns.sh -d example.com
````