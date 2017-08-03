TARGET=/dev/shm/box-admin-api.html
SRC=$(shell find . -name "*.yaml")
SHM=$(patsubst %.yaml,%.json,$(SRC))
all: $(TARGET)

%.json: %.yaml
	yaml-to-json $< | json_reformat > $@

$(TARGET): api.raml session.raml account.raml device.raml upgrade.raml $(SHM)
	raml2html -i api.raml -o $(TARGET)

clean:
	rm -rf $(TARGET)
	rm -rf schema/*.json
	rm -rf example/*.json

.PHONY: all clean
