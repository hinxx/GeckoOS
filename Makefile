all: build patch pack

build:
	make -C Gecko_src build
	make -C rnc all

clean:
	make -C packer clean
	rm -f packer/binary.* packer/source/binary.*
	make -C rnc clean
	make -C Gecko_src clean
	rm -f boot.dol

patch:
	cp Gecko_src/boot.dol packer/binary.dol
	(cd packer && \
		../rnc/rnc64 p binary.dol binary.rnc -m 1 && \
		raw2c binary.rnc && \
		ls -al binary.* && \
		cp binary.h binary.c source)
pack:
	make -C packer build
	cp packer/boot.dol .
