Rotational Solid

## Project Overview

This project, developed by Adam Cypliński and Jakub Mitura, aims to calculate the volume and surface area of a rotational solid along with its visualization.

### Rotational Solid

A rotational solid is a geometric shape formed by rotating a plane figure around an axis (rotation axis).

### Volume and Surface Area of Rotational Solid

The volume of a rotational solid formed by rotating the graph of the function \(y=f(x)\), where \(x \in [a, b]\), around the X-axis.
![image](https://github.com/cypele/WizualizacjaObrotuFunkcji/assets/124002511/2d55db94-85eb-48c9-b874-a60efb622f7e)


The surface area of a rotational solid formed by rotating the graph of the function \(y=f(x)\), where \(x \in [a, b]\), around the X-axis.

### Rotation around the X-axis

For rotation around the X-axis, a three-dimensional rotation matrix is utilized. Trapezoidal rule is used for integration.

## Key Code and Functionality

- Declaration of coordinate axes, input function for rotation, and vector coordinating points on the three-dimensional graph.
- Utilization of a for loop to rotate the function with a specified precision in the relevant range of angles using a rotation vector.
- Calculation of the rotated vector by multiplying the coordinate vector by the rotation vector.
- Drawing the rotated function with each iteration, providing a complete image of the rotational solid.
- At the end of the script, using previously developed functions based on theoretical formulas to calculate the surface area and volume of the solid over the specified interval.

### Example Code

```matlab
% Example function: y = sin(pi*x*2/5) in the range [0, 5]
input_function = @(x) sin(pi*x*2/5);

% Loop for rotation and drawing
for angle = 0:5:360
    rotated_vector = rotateVector(coordinate_vector, angle);
    % Draw the rotated function
    plot3(rotated_vector(:,1), rotated_vector(:,2), rotated_vector(:,3));
end

% Calculate surface area and volume
surface_area = calculateSurfaceArea(coordinate_vector);
volume = calculateVolume(coordinate_vector);

% Display the results
disp(['Surface Area: ', num2str(surface_area)]);
disp(['Volume: ', num2str(volume)]);
```

## Example Results

For the input function \(y = \sin(\pi x \frac{2}{5})\) in the range [0, 5], the obtained results were as follows:

- Analytical Results:
  - Volume (\(V\)): 7.8539
  - Surface Area (\(S\)): 24.4291

- MATLAB Results:
  - Volume (\(V\)): 7.8540
  - Surface Area (\(S\)): 24.4291

![Rotational Solid](insert_image_url_here)

## Conclusion

The script successfully visualizes the rotational solid obtained by rotating the input function. The calculated surface area and volume align with the analytical results, demonstrating the accuracy of the implementation.

## How to Use

1. Clone the repository.
2. Modify the `input_function` in the example code with your desired function.
3. Run the script in MATLAB to visualize and calculate the rotational solid.

Feel free to explore the code and contribute to further enhancements. If you have any issues or suggestions, please open an issue in the repository. Your collaboration is appreciated!
