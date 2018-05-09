# Libpostal REST Docker

libpostal (https://github.com/openvenues/libpostal) is a C library for
parsing and normalizing street addresses. Using libpostal requires
compiling a C program that downloads ~2GB of training data.

This Dockerfile automates that compilation and creates a container
with libpostal and [libpostal-rest](https://github.com/johnlonganecker/libpostal-rest) libpostal-rest which allows for a simple REST API
that makes it easy interact with libpostal.

## Build image and start up container
```
docker build -t libpostal-rest https://github.com/johnlonganecker/libpostal-rest-docker.git
docker run -d -p 8080:8080 libpostal-rest
```

## Build image from specific libpostal git hash
```
docker build -t libpostal-rest --build-arg COMMIT=e816b4f77e8c6a7f35207ca77282ffab3712c5b6 .
```

**Works with branch names as well**
```
docker build -t libpostal-rest --build-arg COMMIT=parser-data .
```

If a commit/hash is not specified it defaults to the **master** branch

## Feature Requests and Bugs
File a Github issue

## Contributing
Just submit a pull request :D

See REST API [here](https://github.com/johnlonganecker/libpostal-rest) 
