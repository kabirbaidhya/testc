FROM gcc:7 AS builder
COPY . /source
WORKDIR /source
RUN make build

FROM scratch
COPY --from=builder /source /source
WORKDIR /source
CMD ["./bin/app"]
