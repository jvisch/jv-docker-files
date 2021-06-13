SUBDIRS += base-image
SUBDIRS += foxy
SUBDIRS += galactic

all: $(SUBDIRS)
$(SUBDIRS):
	$(MAKE) -C $@ $(MAKECMDGOALS)

.PHONY: all $(SUBDIRS)

clean: $(SUBDIRS)
