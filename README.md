# testc
![Travis](https://img.shields.io/travis/kabirbaidhya/testc.svg?style=flat-square)
[![Language grade: C/C++](https://img.shields.io/lgtm/grade/cpp/g/kabirbaidhya/testc.svg?logo=lgtm&logoWidth=18&style=flat-square)](https://lgtm.com/projects/g/kabirbaidhya/testc/context:cpp)

Hello World C Project with Unit Tests.

## Usage

#### Building

```
$ make build
```

#### Running

```
$ ./bin/app
Hello World!
```

#### Clean
```
$ make clean
```

## Running Tests
```
$ make test && ./bin/test
```

## Docker
#### Sample Dockerfile

```Dockerfile
FROM gcc:7 AS builder
COPY . /source
WORKDIR /source
RUN make build

FROM scratch
COPY --from=builder /source /source
WORKDIR /source
CMD ["./bin/app"]
```

#### Building
```
$ docker build -t kabirbaidhya/testc .
```

#### Running
```
$ docker run kabirbaidhya/testc
```
