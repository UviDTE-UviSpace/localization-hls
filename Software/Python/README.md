# Positioning the center of a circle with OpenCV.
___
## _circleContours.py


In the script a (binary) image gets blurred, processed, detects the contours and returns the X,Y coordinates of the center of a circle. The OpenCV library is used to process the image.

The function '_findCircleMass' takes an image input (preferably binary), blurs and thresholds the image. Thresholding filters out objects for easing the processing. This might be unnecessary with a binary image as it is already filtered.

```python
def _findCircleMass(imgFind):
    #imgray = cv.cvtColor(img,cv.COLOR_BGR2GRAY)
    imgray = cv.bilateralFilter(imgFind,9,75,75)
    imgray	=	cv.GaussianBlur(imgray,(5,5),0)
    ret,thresh = cv.threshold(imgray,127,255,0)

    _, thresh = cv.threshold(imgray,0,255,cv.THRESH_BINARY+cv.THRESH_OTSU)
    contours, hierarchy = cv.findContours(thresh, cv.RETR_TREE, cv.CHAIN_APPROX_SIMPLE)
```
For the purpose of the project the algorithm is based on detecting circles. The contours found are filtered out by the big circle's radius and the small ones (big radius / 2) in a for loop by detecting the far left and right edge of a contour. The radius limit is predefined by the known symbol patterns created & printed on the UGV:
```python
circlesData = []
for c in contours:
  extLeft = tuple(c[c[:, :, 0].argmin()][0])
  extRight = tuple(c[c[:, :, 0].argmax()][0])
  radius = (extRight[0] - extLeft[0])/2
```
 If the radius is in the correct limits, the calculation for the mass center is done by capturing an image moment of the contour. "Image Moment is a particular weighted average of image pixel intensities, with the help of which we can find some specific properties of an image, like radius, area, centroid etc.

Using the following formula inside the function :

![Formula](https://wikimedia.org/api/rest_v1/media/math/render/svg/900cb0605c954a17961360525a87fa6e38569c8b)

```python
       #Check if radius is correct to the one drawn if yes save. This is to avoid collision over each other.
       if radius > radiusSize - 6 and radius < radiusSize+19:       
           M = cv.moments(c)
           cx = int(M['m10']/M['m00'])
           cy = int(M['m01']/M['m00'])
           circlesData.append((cx, cy, radius))
           '''                               
           cv.drawContours(img, [c], 0, (0,255,0), 3)
           plt.imshow(img)
           '''
   return circlesData
```

The center coordinates X, Y and radius found are appended to a list 'circlesData' and returned after every contour is checked. This list is used in the function '_groupUGV' to sort a list in the correct order before sending it to the main controller.

The UGV list format is :
* [ [UVG1], [UVG2], [UVG3],..]
  *  [ [ (447, 392), (548, 341) ], [ (156, 221), (158, 108) ], [ (465, 155), (378, 83) ], ... ]
* where UVG1 = [xPBig, yPBig, xPSmall, yPSmall]
  * [ (447, 392), (548, 341) ]

```python
def _groupUGV(contourData):
    bigCircles = []
    smallCircles = []
    UVGList = []

    #Filter circles by its radius and group accordingly.
    #!!! change radius with picture size radius later !!!
    for centerpoints in contourData:
        if centerpoints[2] > radiusSize and centerpoints[2] < radiusSize + 15:
            bigCircles.append(centerpoints[:2])
        elif centerpoints[2] < radiusSize and centerpoints[2] > radiusSize - 2:
            smallCircles.append(centerpoints[:2])

    for big, small in zip(bigCircles, smallCircles):
        UVGList.append([big, small])

    return UVGList
```
---
# EXAMPLE
To display the center points on a plot with an image from '/Docs' change the following :
* line 66 = img path
* line 77 & 89 = uncomment

For new images make sure the radius variable is adjusted.

![Image](https://github.com/UviDTE-UviSpace/localization-hls/blob/master/Software/Python/images/CirclePicMultiple.png)
![Contours](https://github.com/UviDTE-UviSpace/localization-hls/blob/master/Software/Python/pics/CirclePicMultiple_contours.png)
![Zedboard Python Execution speed](https://github.com/UviDTE-UviSpace/localization-hls/blob/master/Software/Python/pics/execute%20speed%20UGVMultiple%20Python%20ZedBoard.PNG)
![Center points](https://github.com/UviDTE-UviSpace/localization-hls/blob/master/Software/Python/pics/CirclePicMultiple_plot.png)

### Execution speed = ~610ms.
### Time = 610/1000 = 0.61s.
### FPS = 1/Time =  1.62 fps.
---
## Documentation
* [Image moments](https://www.learnopencv.com/find-center-of-blob-centroid-using-opencv-cpp-python/)
* [Thresholding](https://www.learnopencv.com/opencv-threshold-python-cpp/)
* [OpenCV](https://opencv.org/)
