all: codehandler.bin codehandlerslota.bin codehandleronly.bin

codehandler.bin: codehandler.s
	powerpc-eabi-gcc -nostartfiles -nodefaultlibs -Wl,-Ttext,0x80001800 -o codehandler.elf codehandler.s
	powerpc-eabi-strip --strip-debug --strip-all --discard-all -o codehandlers.elf -F elf32-powerpc codehandler.elf
	powerpc-eabi-objcopy -I elf32-powerpc -O binary codehandlers.elf codehandler.bin
	raw2c codehandler.bin

codehandlerslota.bin: codehandlerslota.s
	powerpc-eabi-gcc -nostartfiles -nodefaultlibs -Wl,-Ttext,0x80001800 -o codehandlerslota.elf codehandlerslota.s
	powerpc-eabi-strip --strip-debug --strip-all --discard-all -o codehandlerslotas.elf -F elf32-powerpc codehandlerslota.elf
	powerpc-eabi-objcopy -I elf32-powerpc -O binary codehandlerslotas.elf codehandlerslota.bin
	raw2c codehandlerslota.bin

codehandleronly.bin: codehandleronly.s
	powerpc-eabi-gcc -nostartfiles -nodefaultlibs -Wl,-Ttext,0x80001800 -o codehandleronly.elf codehandleronly.s
	powerpc-eabi-strip --strip-debug --strip-all --discard-all -o codehandleronlys.elf -F elf32-powerpc codehandleronly.elf
	powerpc-eabi-objcopy -I elf32-powerpc -O binary codehandleronly.elf codehandleronly.bin
	raw2c codehandleronly.bin

clean:
	rm -f codehandler*.elf codehandler*.bin codehandler*.h codehandler*.c
