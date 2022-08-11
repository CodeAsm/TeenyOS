# TeenyOS

This project is for experimental purposes only. TeenyOS is my attempt at creating a minimalistic ecosystem of buildfiles and sources to boot into a somewhat experimental operation system.

Goals:

- Boot my code
- Boot monitor mode
- Boot my kernel
  - file system
  - "graphics"

Lets just say I hope to be able to boot some x86 code of my own that can do "things". My first goal is running some of my own code, that displays something and can take instructions from the keyboard.

A monitor mode would be awesome, as i would love to adapt that for other platforms aswell. A kind of bootloader and kernel might follow but I dont count on that for a while. Monitor code is what I "need" to get working first anyway.

## Howto

Just run make and qemu should start. Ow and I asume you know how git(hub) works. if not, you should clone this repo first. or download a zip version of this and extract it. You also require linux to run this in, from the terminal, and need nasm, qemu and maybe gcc.
Message me somehow to get more help, probably worth alott more to just head over to osdev.org

## Inspiration and thanks

A few resources that might help you arround or simply inspired me.

- [https://stackoverflow.com/questions/8287181/how-to-do-source-level-debugging-of-x86-code-with-gdb-inside-qemu]
- [https://wiki.osdev.org/Babystep1] (truly inspired me, or...copied)
- [https://programming.vip/docs/teach-you-how-to-debug-linux-kernel-with-vs-code-qemu-gdb.html]
- [https://web.archive.org/web/20140910002013/http://joelgompert.com/OS/h.asm] (this original code?!)
- [https://stackoverflow.com/questions/8662468/remote-g-packet-reply-is-too-long]
- [https://stackoverflow.com/questions/44755602/label-offsets-in-nasm]
- [https://stackoverflow.com/questions/8140016/x86-nasm-org-directive-meaning]
- [https://0xax.gitbooks.io/linux-insides/content/Booting/linux-bootstrap-1.html]
truly helped with NASM and the 16bit assembly:

- [https://stackoverflow.com/questions/19200333/architecture-of-i386-input-file-is-incompatible-with-i386x86-64]
- [https://gist.github.com/yellowbyte/d91da3c3b0bc3ee6d1d1ac5327b1b4b2]
- [https://stackoverflow.com/questions/49361726/nasm-how-to-use-org-directive-when-you-want-debug-symbol-too]
- [https://code.visualstudio.com/docs/cpp/config-linux]

These influenced or gave true insigt in various issues

- [https://board.flatassembler.net/topic.php?t=15540]
- [https://askubuntu.com/questions/1202094/setup-an-fat12-floppy-image-with-mbr]
- [http://www.baldwin.cx/386htm/toc.htm]
- [https://github.com/limine-bootloader/limine]

GDB

- [https://hackaday.com/2022/03/22/hacked-gdb-dashboard-puts-it-all-on-display/]
- [https://www.geeksforgeeks.org/gdb-step-by-step-introduction/]
