# Compatible with GNU make and BSD make.

build:
	@ant compile

doc:
	@ceylon doc `ceylon version` --resource-folder=resources


run-test:
	@ceylon test `ceylon version`

test: build run-test

run:
	@ceylon run `ceylon version`

fat-jar:
	@ceylon fat-jar `ceylon version`

jar: build fat-jar

