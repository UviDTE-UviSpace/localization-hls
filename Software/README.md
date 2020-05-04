# Directory of the materials and methods used in the software part of the circle algorithm
___
## INFO
* C++ contains the main algorithm to detect the UGVs.
* Python contains the starting script findcontours that was used to create the algo in C++. Deviation scripts are used to measure the errors in localization of 1000 binary UviSpace pictures taken in three positions: 0°, 45° and 90°. The data is saved in a pickle file under '/measuredata' and can be used as a pandas dataframe. Evaluation with the triangle method is done with these results.
* Vitis is the workspace of the projects with the sysroot of the created PetaLinux. Platform is linker scripted with the OpenCV libraries on the ARM processor. It contains the projects used for debugging the PS of the Zynq.
* yuv player is an application to open yuv or '4:2:2' specific images.
* Inkscape is a program used to created the topdesign for the UGV's and contains checkplots to place the created plot of the algorithm over it to check if it is actually correct.

## TODO
[x] Update cpp code with tweaks of timers, plots, radius size checks...
[ ] Python proper plot for usage in paper ?
[ ] standard deviations & mean/max error shown on a table & maybe triangle table next to it ? (currently under 'deviationPlot' as text)
