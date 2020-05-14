# Vivado, Vitis projects and boot files
___
## INFO
* PetaLinux are the generated images and sysroot of the PetaLinux build to implement in the vitis platform project (linux).
* HLS are projects in the the High-Level Synthesis environment created for the circle algorithm to execute accelerated through the hardware of an FPGA, the ZedBoard in this research.
* Vivado contains the built hardware design to implement and use into PetaLinux.

### High-level Synthesis (HLS)
* CalcGain_Zed is the IP-Core for processing an array of 1000 inputs with a given gain.
* HLS_CircleFilter is the image process for Circles for ZedBoard.
* Minized_filter is with normal AXIVIDEO2MAT / MAT2AXIVIDEO function in IP-Core
* Minized_filter_2 is with special AXIVIDEO2MAT_DMA / MAT2AXIVIDEO_DMA function in IP-Core
* HLS_Convolution is future work to process the blurring and thresholding faster than current Filter implementation.

### PetaLinux

### Vivado
* Minized_filter is with ILA's connected to DMA output - Filter IP-core input and HLS IP-core output - DMA input. Normal AXIVIDEO2MAT / MAT2AXIVIDEO function in Filter IP-core.
* Minized_filter_2 is with ILA's connected to DMA output - Filter IP-core input and HLS IP-core output - DMA input. Special AXIVIDEO2MAT_DMA / MAT2AXIVIDEO_DMA function in Filter IP-core.
* https://forums.xilinx.com/t5/Other-FPGA-Architecture/Can-DMA-replace-VDMA/td-p/684030
