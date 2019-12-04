FROM golang:alpine AS build

COPY . /src

WORKDIR /src

RUN make

FROM alpine

COPY --from=build /src/bin /app

CMD [ "/app/app" ]