# yak

yak引擎的容器化构建

## 使用方法

下面是一个docker-compose示例

```yaml
version: '3'
services:
  app:
    image: 'mrxianyu/yak:latest'
    restart: unless-stopped
    container_name: yak
    environment:
      TZ: 'Asia/Taipei'
    volumes:
      - ./yak-data:/root/yakit-projects/
    networks:
      app_net:
        ipv4_address: 10.20.88.10

networks:
  app_net:
    driver: bridge
    ipam:
      driver: default
      config:
        - subnet: 10.20.88.0/24
          gateway: 10.20.88.1
```


