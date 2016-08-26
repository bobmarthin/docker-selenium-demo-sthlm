
## This repository demonstrates using docker-compose with rspec integration tests.

### as well as using vagrant for dockers and diffy

Link to presenation:
https://drive.google.com/open?id=12KpYlNVpTOB9r4hsRQ4ZLu3HV3JzwXVOai0eiCRmzlI

Results from respondents on DayOfCont-STHLM 24/08/2016
 ![alt tag](https://github.com/bobmarthin/docker-selenium-demo-sthlm/blob/master/survey.png)


example:
```
git clone https://github.com/bobmarthin/docker-selenium-demo-sthm.git
cd docker-selenium-demo-sthm


git checkout sample-2-rspec
# build the ruby on rails image
docker-compose build
# bring up db and web application
docker-compose up -d && ./init.sh 
# execute tests
docker-compose run web rspec spec/integration/users-firefox.rb
#vnc to firefox machine
open vnc://localhost:<vnc-port>

git checkout sample-3-vagrant
vagrant up 

git checkout sample-4-diffy
docker-compose up -d
#see all servers on http://localhost:9881/users http://localhost:9882/users http://localhost:9883/users
#hit the diffy 
curl localhost:31900/users
#diffy results on http://localhost:8888

```

## As well vagrant can be in use


