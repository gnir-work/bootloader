all: run


run: create_disk_image
	sudo qemu-system-x86_64 /dev/fd0


create_disk_image: boot.bin
	sudo dd if=boot.bin of=/dev/fd0


boot.bin: boot.asm
	nasm boot.asm -f bin -o boot.bin
