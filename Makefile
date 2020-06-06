build:
	go mod download
	env GOOS=linux go build -ldflags="-s -w" -o bin/main src/handler/main.go

deploy: build
	sls deploy --verbose --aws-profile $(PROFILE)
