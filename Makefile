.PHONY: run clean debug

clean:
	rm -rf Mobile.framework main

Mobile.framework:
	gomobilex bind -v -target=ios -work .

main: Mobile.framework
	swiftc -g -F. main.swift

run: main
	./main

debug: Mobile.framework
	swift -F . -g ./main.swift
