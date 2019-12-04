all: build

.PHONY: build
build:
	GOOS=linux go build -o ./bin/app .

clean:
	rm -rf ./bin