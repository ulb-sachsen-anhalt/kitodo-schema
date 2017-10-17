XSPEC = xspec.cmd
TRANG = java -jar lib/trang.jar
SAXON = java -jar lib/saxon9he.jar

%.rng: %.rnc
	$(TRANG) -I rnc -O rng $< $@

%.xsd: %.rnc
	$(TRANG) -I rnc -O xsd $< $@

%.sch: %.rng
	$(SAXON) -xsl:lib/rngsch.xsl -o:$@ $<

all: ruleset import projects properties test

import: src/import.xsd src/import.rng

ruleset: src/ruleset.xsd src/ruleset.rng src/ruleset.sch

projects: src/projects.xsd src/projects.rng

properties: src/properties.xsd src/properties.rng

.PHONY: clean
clean:
	rm -f src/*.xsd
	rm -f src/*.rng
	rm -f src/*.sch

test: src/ruleset.sch test/ruleset.xspec
	$(XSPEC) -s test/ruleset.xspec


