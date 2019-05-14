.PHONY: run clean

clean:
	rm -rf Mobile.framework main

Mobile.framework:
	gomobile bind -a -v -target=ios .

main: Mobile.framework
	swiftc -F. main.swift

run: main
	./main
