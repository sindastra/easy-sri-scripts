all: install

install:
	install -o 0 -g 0 -m 0755 sri256.sh /usr/local/bin/sri256
	install -o 0 -g 0 -m 0755 sri384.sh /usr/local/bin/sri384
	install -o 0 -g 0 -m 0755 sri512.sh /usr/local/bin/sri512
