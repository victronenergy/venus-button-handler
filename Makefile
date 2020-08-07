FILES =	venus-button-handler

VELIB =									\
	settingsdevice.py						\
	ve_utils.py							\
	vedbus.py							\

all:

install:
	install -d $(DESTDIR)$(bindir)
	install -m 0644 $(FILES) $(DESTDIR)$(bindir)
	install -d $(DESTDIR)$(bindir)/ext/velib_python
	install -m 0644 $(addprefix ext/velib_python/,$(VELIB)) \
		$(DESTDIR)$(bindir)/ext/velib_python
	chmod +x $(DESTDIR)$(bindir)/$(firstword $(FILES))
