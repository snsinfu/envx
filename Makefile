DESTDIR = /usr/local/bin

.PHONY: test install

test:
	@tests/run

install:
	mkdir -p $(DESTDIR)
	cp envx $(DESTDIR)
	chmod 0755 $(DESTDIR)/envx
