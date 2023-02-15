# Image-Interpolation

###### ➢ Nearest-Neighbour
For the function "nn_2x2", I calculated the distance between two points using a mathematical formula. Thus, I calculated 4 distances and chose the closest neighbor of the point (x_int, y_int) (the smallest distance). In the "nn_resize" function, I calculated the nearest neighbor using "round", which rounds the given parameter to the nearest integer.

###### ➢ Bilinear
In the "bilinear_rotate" function, I checked if x_p and y_p were outside the image using the "if" and "continue" instructions (to continue with the next iteration).

###### ➢ Bicubic
I created "fx", "fy", "fxy" according to the formulas described in the document, with very minor changes. In "precalc_d", I checked if the edge of the image was reached and set that element of the derivative matrix to 0, otherwise I called the derivative calculation function. For the derivative matrix in "bicubic_coef", I found each row and then concatenated them to form the matrix.
