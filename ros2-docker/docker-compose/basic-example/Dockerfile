FROM jvr/ros2:humble-ros-base

COPY ./entrypoint.sh /
RUN chmod +x /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh", "humble"]
