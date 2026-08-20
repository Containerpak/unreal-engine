INTEGRATION_VERSION := 1.0.0
INTEGRATION_ARCHIVE := unreal-engine-cpak-integration_$(INTEGRATION_VERSION).tar.gz

.PHONY: integration clean

integration:
	mkdir -p build
	tar --sort=name --mtime='@0' --owner=0 --group=0 --numeric-owner -cf - -C integration usr | gzip -n > build/$(INTEGRATION_ARCHIVE)

clean:
	rm -rf build
