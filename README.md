# QuLab-DataManager



### Docker deployment test

```bash
$ docker network create --driver bridge datamanager_net
$ docker run --name datamanager_mysql --network=datamanager_net -e MYSQL_ROOT_PASSWORD=123456 -p 3307:3306 -d mysql:5.7
# HERE, To prepare your database `datamanager`
$ docker run -d -p 8080:80 --network=datamanager_net --env name=datamanager --env user=root --env password=123456 --env debug=False --name datamanager datamanager_con:latest
```



