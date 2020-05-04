The problem is that I dont completely understand how to acces to AXI stream port from 
within the Linux userspace. I have build an HLS IP block, got a vivado block design, build 
PetaLinux with the hdf and tried with the mmap function in the "/dev/mem" dir without 
any luck. 

Now I understand that you need a spefic driver (char driver) build within
PetaLinux as a module and configured in the device tree. I have looked through 
the PL330 on the Zynq7000 example, but I am not sure what creates the 
module core and so I am figuring out how to implement it into the PetaLinux build.




average X,Y, mean error, max error, standard deviation, avarage oration in degrees

max & standard deviation of orientation.

mean value x,y, angle = mean error, max error, standard deviation.

if no difference = algo is robust