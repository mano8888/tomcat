#!/bin/bash
cont_count=$1
echo "creating $cont_count containers.."
sleep 2;
for i in `seq $cont_count`
do
	echo "=============================="
    echo "Creating www.cat$i container.."
    sleep 1
   sudo docker run --name www.cat$i -d -it --rm nageshvkn/node3 /bin/bash
    echo "www.cat$i container has been created!"
	echo "=============================="
done
