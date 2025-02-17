genVmapAsm vmap.txt setup_page_tables.s
compileToSparc.py -g -I /usr/include -I ./ -s init.s -s setup_page_tables.s  -s $AJIT_TOOLS_RELEASE/tools/ajit_access_routines/asm/trap_handlers.s -I $AJIT_TOOLS_RELEASE/tools/ajit_access_routines/include -C $AJIT_TOOLS_RELEASE/tools/ajit_access_routines/src -C $AJIT_TOOLS_RELEASE/tools/minimal_printf_timer/src -I $AJIT_TOOLS_RELEASE/tools/minimal_printf_timer/include -s sorting.s -E sorting.elf -V sorting.vars -H sorting.hex -M sorting.mmap -O sorting.objdump  -L LinkerScript.lnk  -D AJIT
echo "\nREADELF\n"
sparc-linux-readelf  --hex-dump=1 --hex-dump=2 --hex-dump=3  --hex-dump=.bss sorting.elf | grep 0x > sorting.hex 
generateMemoryMap_Byte sorting.hex > sorting.mmap
remapMemmap vmap.txt sorting.mmap sorting.mmap.remapped
