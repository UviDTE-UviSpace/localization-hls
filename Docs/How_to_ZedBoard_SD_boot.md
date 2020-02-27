---
# Creating an Embedded Operating System with Petalinux.
___
## Installing Petalinux
Petalinux is required to run a Linux OS. If you have a Windows OS, you can download a VM-Box with an Ubuntu image (version 18.04 used in this tutorial).
## Minimal Linux OS on boot SD card for ZedBoard. 
To start off the correct preset bsp files are required for the target board, in this case the ZedBoard. We can 
petalinux-create project
petalinux-build
Format SD card with 2 partitions with gparted 
https://www.acmesystems.it/microsd_format
Fat32 (BOOT)
Ext4 (rootfs)
in ubuntu vm cp files from petalinux project to sd card
copy over BOOT.BIN & image.ub to boot : “ cp images/linux/BOOT.bin /dev/sdb1 ”, “ cp images/linux/image.ub /dev/sdb1 ”
rootfs.cpio to rootfs : “ cp images/linux/rootfs.cpio /dev/sdb2 ”

Advanced costum OS for part 4
https://www.hackster.io/news/design-flow-for-a-custom-fpga-board-in-vivado-and-petalinux-b998c0b4f9f7
This will be used in part 4 for costum kernel creation with costum ip block from HLS (import hdf file,bitstream, etc.. to petalinux project)
switch zedboard mode jumper in sdcard boot config https://reference.digilentinc.com/learn/programmable-logic/tutorials/zedboard-programming-guide/start?_ga=2.62675817.453303399.1581945309-466627596.1581344282

<!-- Headings -->
# Heading 1
## Heading 2
### Heading 3
#### Heading 4
##### Heading 5
###### Heading 6

<!-- Italics -->
*This text* is italic

_This text_ is italic

<!-- Strong -->
**This text** is italic

__This text__ is italic

<!-- Strikethrough -->
~~This text~~ is strikethrough

<!-- Horizontal Rule -->

---
___

<!-- Blockquote -->
> This is a quote

<!-- Links -->
[Traversy Media](http://www.traversymedia.com)

[Traversy Media](http://www.traversymedia.com "Traversy Media")

<!-- UL -->
* Item 1
* Item 2
* Item 3
  * Nested Item 1
  * Nested Item 2

<!-- OL -->
1. Item 1
1. Item 2
1. Item 3

<!-- Inline Code Block -->
`<p>This is a paragraph</p>`

<!-- Images -->
![Markdown Logo](https://markdown-here.com/img/icon256.png)

<!-- Github Markdown -->

<!-- Code Blocks -->
```bash
  npm install

  npm start
```

```javascript
  function add(num1, num2) {
    return num1 + num2;
  }
```

```python
  def add(num1, num2):
    return num1 + num2
```

<!-- Tables -->
| Name     | Email          |
| -------- | -------------- |
| John Doe | john@gmail.com |
| Jane Doe | jane@gmail.com |

<!-- Task List -->
* [x] Task 1
* [x] Task 2
* [ ] Task 3