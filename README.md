# jd_sign

**docker-compose**
```
services:
    jd_sign:
        container_name: jd_sign
        ports:
            - 17840:8080
        volumes:
            - $PWD/jd_sign:/app/data
        restart: always
        logging:
            options:
                max-file: 2
                max-size: 50m
        image: freediy/jd_sign:latest
```

**docker run**
```
docker run -d \
--name=jd_sign \
-p 17840:8080 \
-v $PWD/jd_sign:/app/data \
--restart=always \
--log-opt max-file=2 \
--log-opt max-size=50m \
freediy/jd_sign:latest
```

```
http://ip:17840/sign
```
