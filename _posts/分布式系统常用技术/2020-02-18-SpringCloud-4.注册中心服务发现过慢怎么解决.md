## 1. ZK

zk，一般来说还好，服务注册和发现，都是很快的，秒级可用响应。



## 2. Eureka（必须优化参数）

**eureka.client.registryFetchIntervalSeconds = 30000**

**eureka.client.leaseRenewalIntervalInSeconds = 30**

**eureka.server.responseCacheUpdateIntervalMs = 3000** 

**eureka.server.evictionIntervalTimerInMs = 6**

**eureka.instance.leaseExpirationDurationInSeconds = 90**



**服务发现的时效性变成秒级，几秒钟可以感知服务的上线和下线**

