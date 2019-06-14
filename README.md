# docker-altdns

# build altdns docker image

````shell
docker build -t altdns .
````


# run altdns


````shell
docker run -t -v /root/massdns:/tmp/altdns altdns -i /tmp/altdns/subdomains.txt  -o /tmp/altdns/data_output -w /altdns/words.txt -r -s results_output.txt
````
