# A-new-image-enhancement-method-considering-both-dynamic-range-and-color-constancy
This paper proposes an approach to improve color images suffering from low dynamic range, by employing both histogram matching and histogram stretching techniques. 
Firstly, the color image is transformed from RGB into HSV color space. 
Then, an appropriate reference image is selected by comparing component V of the enhancing image with component V of the data base images using a similarity measure. 
This selected image is used as the goal image in histogram matching algorithm in order to enhance image brightness (Automatic Histogram Matching). 
Secondly, components V and S are linearly stretched in order to recover the image color information.
Finally, using the treated V and S components and untreated component of H, the enhanced image is obtained in RGB color space by inverse transform. 

RUN the code:
1. You should download the images in the "database" folder, and add this folder to your project path.
2. Run "GUIMain.m" and select the image that you want to enhace it.

It works for both gray-scale and RGB images. 
For details, you can read the paper in the "paper" folder.
If you use the codes for your research or academic purposes, please cite our paper:

Hassanpour, H., & Samadiani, N. (2019). A new image enhancement method considering both dynamic range and color constancy. Scientia Iranica, 26(3), 1589-1600.

If you have any questions, please feel free to contact me: najmeh.samadiani@gmail.com
