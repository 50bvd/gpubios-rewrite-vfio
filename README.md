# <img src="https://creazilla-store.fra1.digitaloceanspaces.com/icons/3247810/perl-icon-md.png" alt="perlicon" style="width:70px;"/> gpubios-rewrite-vfio
This script automatically rewrites your GPU bios to increment it to your VFIO driver.

1. Render the executable with the command:
```bash
chmod +x gpu_bios_vfio.pl
```
2. Execute it in the directory where your rom file is located:
```bash
./gpu_bios_vfio.pl
```
3. The script asks for the name of the rom file, insert it and let it run. 

_Note: this script may be useful if you work in a datacenter offering cloud computing services, as you'll probably be using VFIO drivers to dedicate GPUs to VMs usually running the KVM hypervisor. You'll need to rewrite the rom file each time with a hexadecimal editor, so to save time I've created this script._

Here's the link to the ROM file step in the "Single GPU Passtrough" guide 

:arrow_right_hook: https://gitlab.com/risingprismtv/single-gpu-passthrough/-/wikis/6)-Preparation-and-placing-of-the-ROM-file
