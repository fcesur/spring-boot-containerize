Containerizing a Spring Boot application using Multistaged Build with Docker

Steps to run the application:

1. Building an image with Docker:
```shell
docker buildx build -t <<<any tag you want>>> .
```
2. Run the image:
```shell
docker run -it -p 8080:8080 <<<tag you specified>>>
```

Thats all !