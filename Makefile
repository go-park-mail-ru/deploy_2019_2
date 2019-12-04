all: build

.PHONY: build
build:
	go build -o ./bin/app .

clean:
	rm -rf ./bin

docker:
	docker build -t dmitrydorofeev/beepteam.ru: