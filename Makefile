SUBDIRS += base-image
SUBDIRS += foxy-ros-base
SUBDIRS += foxy-desktop
SUBDIRS += galactic-ros-base
SUBDIRS += galactic-desktop

all: $(SUBDIRS)
$(SUBDIRS):
	$(MAKE) -C $@ $(MAKECMDGOALS)

.PHONY: all $(SUBDIRS)

clean: $(SUBDIRS)
