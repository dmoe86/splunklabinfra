qm stop 301;
qm stop 302;
qm stop 303;
qm stop 401;
qm stop 402;
qm stop 501;
qm stop 502;
qm stop 503;
sleep 5
qm snapshot 301 base;
qm snapshot 302 base;
qm snapshot 303 base;
qm snapshot 401 base;
qm snapshot 402 base;
qm snapshot 501 base;
qm snapshot 502 base;
qm snapshot 503 base;
sleep 5
qm start 301;
qm start 302;
qm start 303;
qm start 401;
qm start 402;
qm start 501;
qm start 502;
qm start 503;
