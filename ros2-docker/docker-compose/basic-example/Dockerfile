FROM jvr/ros2:humble

COPY ./entrypoint.sh /
RUN chmod +x /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh", "humble"]
