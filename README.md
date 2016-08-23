

## This repository demonstrates using docker-compose with rspec integration tests.

### as well as using vagrant for dockers and diffy


example:
```
git clone https://github.com/bobmarthin/docker-selenium-demo-sthm.git
cd docker-selenium-demo-sthm
# build the ruby on rails image
docker-compose build
# bring up db and web application
docker-compose up -d && ./init.sh
# execute tests
docker-compose run web rspec spec/integration/users-firefox.rb
#vnc to firefox machine
open vnc://localhost:<vnc-port>

```

## As well vagrant can be in use
