## TODO
* [ ]Redesign convolution through #pragma HLS dataflow that make the circle detection A LOT faster than current filters.
* [x]Set up AXI Direct Memory Access through PetaLinux userspace.
* [x]Implement CircleFilter design into HW, with Vivado & PetaLinux.

## FINISHED
* [x]HLS_SimpleDesign acts as a pass through of the input image with an AXI Stream transfer. The HLS IP-core reads its from a DMA and returns it as an AXI Stream to the DMA into the DDR. (This is mainly used as a test to experiment the HLS dataflow.)
* [x]HLS CalcGain_Zed is the HLS project of project ZedBoard_DMA_HLSGAIN in Vivado.
* [x]HLS_CircleFilter is the HLS project of project ZedBoard_DMA_Filter in Vivado.
* [x]HLS_SimpleDesign_ZedBoard is the HLS project of project ZedBoard_DMA_SimpleDesign in Vivado. (HLS_SimpleDesign is for Minized showcase)
