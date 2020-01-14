DESTDIR = /usr/local/bin

.PHONY: test install

test:
	@tests/run

install:
	mkdir -p $(DESTDIR)
	cp xenv $(DESTDIR)
	chmod 0755 $(DESTDIR)/xenv
