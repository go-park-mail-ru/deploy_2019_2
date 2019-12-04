FROM golang:alpine AS build

COPY . /src

WORKDIR /src
RUN apk add --update make
RUN make

FROM alpine

COPY --from=build /src/bin /app

CMD [ "/app/app" ]