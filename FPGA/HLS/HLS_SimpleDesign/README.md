# Designing a costum IP Core for UviSpace with HLS
___
## This shows an example of a simple OpenCV usage.
IP Core function 'Convolution':
* #pragma HLS dataflow
* Mat SRC, DST
* 3x3 Kernel
* 2D Convolution

We basically develop the IP as a C++ function in this step. We only design the IP core for functional testing. The usage of '#pragma HLS dataflow' is required as it indicates the functions used of HLS.

Test bench:

#
