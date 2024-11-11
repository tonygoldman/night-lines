from launch_ros.actions import Node
from launch import LaunchDescription

def generate_launch_description():
    return LaunchDescription(
        [
            Node(
                package="night_lines",
                executable="night_lines",
                output="screen",
                respawn=True
            )
        ]
    )
