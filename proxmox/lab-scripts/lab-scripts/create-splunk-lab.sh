lab_iteration=$1;n=8200;for i in {1..3};do vmname="splunk-lab${lab_iteration}-idx${i}"; newid=$((300+$i)) ; qm clone $n $newid --name $vmname;done
for i in {1..2};do vmname="splunk-lab${lab_iteration}-uf${i}"; newid=$((400+$i)) ; qm clone $n $newid --name $vmname;done
qm clone $n 501 --name splunk-lab${lab_iteration}-sh;
qm clone $n 502 --name splunk-lab${lab_iteration}-ds;
qm clone $n 503 --name splunk-lab${lab_iteration}-cm;
qm start 301;
sleep 15;
qm start 302;
sleep 15;
qm start 303;
sleep 15;
qm start 401;
sleep 15;
qm start 402;
sleep 15;
qm start 501;
sleep 15;
qm start 502;
sleep 15;
qm start 503;
