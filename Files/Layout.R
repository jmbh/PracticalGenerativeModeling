# This creates a nice circle layout for model 2

# PE=left; NE=right
Npoints = 6
points = exp(pi * 1i * seq(0, 2, length.out = Npoints+1)[-1])
points.Cartesian = data.frame(x=Re(points), y=Im(points))
points.Cartesian <- as.matrix(points.Cartesian)
points.Cartesian <- rbind(points.Cartesian[-1, ], points.Cartesian[1, ])
layout <- points.Cartesian