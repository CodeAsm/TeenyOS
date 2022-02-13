# TeenyOS

This project is for experimental purposes only. TeenyOS is my attempt at creating a minimalistic ecosystem of buildfiles and sources to boot into a somewhat experimental operation system.

Goals:

- Boot my code
- Boot monitor mode
- Boot my kernel
  - file system
  - "graphics"

Lets just say I hope to be able to boot some x86 code of my own that can do "things". My first goal is running some of my own code, that displays something and can take instructions from the keyboard.

A monitor mode would be awesome, as i would love to adapt that for other platforms aswell

## Howto

Just run make and qemu should start. Ow and I asume you know how git(hub) works. if not, you should clone this repo first. or download a zip version of this and extract it. You also require linux to run this in, from the terminal, and need nasm, qemu and maybe gcc.

## Inspiration and thanks

A few resources that might help you arround or simply inspired me.

- [https://stackoverflow.com/questions/8287181/how-to-do-source-level-debugging-of-x86-code-with-gdb-inside-qemu]
- [https://wiki.osdev.org/Babystep1] (truly inspired me, or...copied)
- [https://programming.vip/docs/teach-you-how-to-debug-linux-kernel-with-vs-code-qemu-gdb.html]
