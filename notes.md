The problem is that I dont completely understand how to acces to AXI stream port from
within the Linux userspace. I have build an HLS IP block, got a vivado block design, build
PetaLinux with the hdf and tried with the mmap function in the "/dev/mem" dir without
any luck. Now I understand that you need a spefic driver (char driver) build within
PetaLinux as a module and configured in the device tree. I have looked through
the PL330 on the Zynq7000 example, but I am not sure what creates the
module core and so I am figuring out how to implement it into the PetaLinux build.

average X,Y, mean error, max error, standard deviation, avarage oration in degrees
max & standard deviation of orientation.
mean value x,y, angle = mean error, max error, standard deviation.
if no difference = algo is robust

#Vragen
Does axiVideo2Mat wait itself to fill the mat object given as parameter
typedef hls::Mat<HEIGHT,   WIDTH,   HLS_8UC3> RGB_IMAGE; ?
VDMA transfer call like DMA?
UIO, Xilinx DMA driver ?
Petalinux has DMA soft driver, but does this have to be changed from 16MB to 500?
Sending the adress of the openCV image will send it as a 1D array ?
Comparison table triangle same as Circle one created?
Algorithm is half in Hardware. Profiling showed some filters in HW should suffice.
Invite for

#TODO
* [x] send DMA soft driver, bare metal application (random data & pixel 10x10). 18/05
* [x] PetaLinux builds with DMA to passthrough IP 18/05
* [x] Read back image from DMA memory map.
* [X] STDV of angle position and place in accuracy table. 21/05
* [X] Ptlx with DMA to Filter. 21/05
* [X] triangle STDV 1000 pics (Dont spend too much time to try this)
* [ ] In user space, run TX in loop (like video stream) & see if 1 rx is working?
* [ ] baremetal timing vs Software timing, thesis can say HLS is working, but implementing it into OS it shows the filter is slower.


* [ ] Send mail jj Rodriguez prof with public paper and finished full paper.
* [ ] Update Software GitHub text & pics.
* [ ] Update images Software & HArdware chapters text in pics (Axi2Mat_DMA).
* [ ] Update images in block designs with PetaLinux, place rootfs, hw description, module, drivers etc ... on the block design.

#project
part 1 accucary
part 2 HLS to improve
part 3 hardware comparison to software

triangle STDV 1000 pics
1500mm HEIGHT
2000mm WIDTH

1) If size of data is bigger or smaller by 1 then the DMA wont stream data to the IP-core.
2) can NOT check "while (XAxiDma_Busy(&axiDMA, XAXIDMA_DMA_TO_DEVICE));" before started the DMA transfer from IP-core to DMA.

BAD:
XAxiDma_SimpleTransfer(&axiDMA, (u32) inStreamData, SIZE_ARR * sizeof(int), XAXIDMA_DMA_TO_DEVICE);

while (XAxiDma_Busy(&axiDMA, XAXIDMA_DMA_TO_DEVICE))
  ;

printf("Receive data from IP core\n");
XAxiDma_SimpleTransfer(&axiDMA, (u32) m_dma_buffer_RX, SIZE_ARR * sizeof(int), XAXIDMA_DEVICE_TO_DMA);
while (XAxiDma_Busy(&axiDMA, XAXIDMA_DEVICE_TO_DMA))
  ;

GOOD:
XAxiDma_SimpleTransfer(&axiDMA, (u32) inStreamData, SIZE_ARR * sizeof(int), XAXIDMA_DMA_TO_DEVICE);

printf("Receive data from IP core\n");
XAxiDma_SimpleTransfer(&axiDMA, (u32) m_dma_buffer_RX, SIZE_ARR * sizeof(int), XAXIDMA_DEVICE_TO_DMA);
while (XAxiDma_Busy(&axiDMA, XAXIDMA_DEVICE_TO_DMA))
  ;

Doesnt matter:

  Xil_DCacheDisable();
  Xil_ICacheDisable();

CHECK:
Is unsigned char [640x480] = {...image data...}' as big as char?

img is 640*480 = 307200 bits
img size in char (1byte) is 307200/8 = 38400 chars
img size in int (4bytes) is 307200/32 = 9600 ints
img size rgb is then 307200*24 = 7372800 bits
img size rgb in char (1byte) is 7372800/8 = 921600 chars
img size rgb in int (4bytes) is 7372800/32 = 230400 ints

img array has 2400rows*16colums = 38400 hexadecimals  (each hexi nr is 4 bits so 8bits total per hexi)
img array in bits is 38400*8 = 307200 bits

IP-core fills Hls::mat<480,640, HLS_8UC3> RGB_image so 480*640*8*3 = 7372800 unsigned bits
send stream in integer is 7372800/32 = 230400 ints
send stream in chars is 7372800/8 = 921600 chars

Base adress is 0x01000000
read TX reg with : mrd 0x01100000 64
read RX reg with : mrd 0x01300000 64
read RX reg with : devmem 0x01300000 64
