set architecture i386:x86-64
set disassembly-flavor intel
set pagination off
symbol-file build/byteos.sym
target remote localhost:1234
hbreak long_mode_start
continue
define hook-stop
list *$pc
end
tui enable
