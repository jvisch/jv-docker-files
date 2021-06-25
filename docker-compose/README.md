# Docker compose examples

Eenvoudige voorbeelden om met *Docker compose* de ros-images te gebruiken

## Basic example

Een uitwerking van de tutorial 'simple publisher and subscriber' <https://docs.ros.org/en/rolling/Tutorials.html>

Er worden 3 services opgestart, allemaal gebaseerd op de `foxy-ros-base` image. Bij het opstarten met `compose up` wordt in elke service
de packages gecompileerd met `colcon build` en een Ros node opgestart:

-   SimplePublisher: `ros2 run 

- SimpleSubscriber
- Developer