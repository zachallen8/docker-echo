FROM alpine:3.12.0

ADD main.go ./

RUN apk update && apk add go && go build main.go && apk del go

# First normal non-root user in linux
USER 1000

EXPOSE 8080

CMD ["/main"]
