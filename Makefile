PATH=$(shell pwd)/src/bin:$(shell echo $$PATH)

default: clean linux macos win

clean:
	@rm -rf target

linux: linux-amd64

linux-amd64:
	@fetch linux-amd64 linux nix
	@package-tar linux-amd64

macos: macos-amd64

macos-amd64:
	@fetch macos-amd64 macos nix
	@package-tar macos-amd64

win: win-amd64

win-amd64:
	@fetch win-amd64 win
	@package-zip win-amd64
