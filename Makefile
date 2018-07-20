# Golang env
GOCMD=go
GOBUILD=$(GOCMD) build
GOCLEAN=$(GOCMD) clean
GOTEST=$(GOCMD) test
GOGET=$(GOCMD) get
BINARY_NAME=helloworld# Golang env
GOCMD=go
GOBUILD=$(GOCMD) build
GOCLEAN=$(GOCMD) clean
GOTEST=$(GOCMD) test
GOGET=$(GOCMD) get
BINARY_NAME=helloworld
BINARY_WIN=$(BINARY_NAME).exe
BINARY_MAC=$(BINARY_NAME)_mac
BINARY_UNIX=$(BINARY_NAME)_unix

all: test build
build:
	$(GOBUILD) -o $(BINARY_MAC)
	GOARCH=amd64 GOOS=linux $(GOBUILD) -o $(BINARY_NAME)
	$(GOBUILD) -o $(BINARY_WIN)
test:
	$(GOTEST) -v ./...
clean:
	$(GOCLEAN)
	rm -f $(BINARY_MAC)
	rm -f $(BINARY_UNIX)
run:
	$(GOBUILD) -o $(BINARY_NAME) -v ./...
	./$(BINARY_NAME)
BINARY_WIN=$(BINARY_NAME).exe
BINARY_MAC=$(BINARY_NAME)_mac
BINARY_UNIX=$(BINARY_NAME)_unix

all: test build
build:
	$(GOBUILD) -o $(BINARY_MAC)
	GOARCH=amd64 GOOS=linux $(GOBUILD) -o $(BINARY_NAME)
	$(GOBUILD) -o $(BINARY_WIN)
test:
	$(GOTEST) -v ./...
clean:
	$(GOCLEAN)
	rm -f $(BINARY_MAC)
	rm -f $(BINARY_UNIX)
run:
	$(GOBUILD) -o $(BINARY_NAME) -v ./...
	./$(BINARY_NAME)