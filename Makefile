NAME = admin-server
VERSION = 0.1.0
BUILDDIR=/dev/shm/${NAME}

SERVERSRC:=$(BUILDDIR)/src/admin_api_server.nim
BUILDSRC:=$(BUILDDIR)/admin_api_server.nimble

all: $(SERVERSRC) $(BUILDSRC)

$(SERVERSRC): src/server.org | prebuild
	emacs $< --batch -f org-babel-tangle --kill

$(BUILDSRC): src/build.org | prebuild
	emacs $< --batch -f org-babel-tangle --kill

prebuild:
ifeq "$(wildcard $(BUILDDIR))" ""
	@mkdir -p $(BUILDDIR)/src
endif

clean:
	rm -rf $(BUILDDIR)

.PHONY: all clean prebuild
