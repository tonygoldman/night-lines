FROM ros:humble-ros-base

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install --no-install-recommends -y \
    python3-pip \
    && apt-get clean \
    && srm -rf /var/lib/apt/lists/*

RUN pip3 install -U --no-cache-dir \
    pymavlink \
    pyyaml

WORKDIR /app
COPY src src
RUN /ros_entrypoint.sh colcon build

ENTRYPOINT ["/bin/bash", "-c"]
CMD ["source install/setup.bash && ros2 launch launch/night_lines_launch.py"]
