# Redis for Magento2
__THIS IS NOT FOR PRODUCTION USE__

## Magento Version Support
* 2.4.4
* 2.4.5

## Example Usage
`docker-compose.yaml`
```
  redis-cache:
    image: wwright/magento2-redis:
    command: [redis-server,/etc/redis/6379-redis-cache.conf]
  redis-fpc:
    image: wwwright/maegnto2-redis
    command: [redis-server,/etc/redis/6380-redis-fpc.conf]
  redis-session:
    image: wwright-magento2-redis
    command: [redis-server,/etc/redis/6381-redis-sessions.conf]
```

`docker run wwright/magento2-redis redis-server /etc/redis/6379-redis-cache.conf`

## Documentation
[Redis 6.2.x](https://hub.docker.com/_/redis)

## Defaults

## Extensibility
Configuration files can be overwritten by mounting a volume containing your customized configurations.

Examples

`docker run -v /Users/myuser/etc/redis:/etc/redis wwright/magento2-redis redis-server /etc/redis/my-custom-config.conf`

```
  redis-session:
    volumes:
     - /Users/myuser/etc/redis:/etc/redis
    image: wwright/magento2-redis
    command: [redis-server,/etc/redis/my-custom-config.conf]
```
## Tags
