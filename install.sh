# Install
bash ./install/install_ros2.sh
bash ./install/install_vscode.sh

# Config
cat config/config_ros2.sh >> $HOME/.bashrc
mkdir $HOME/colcon_ws/.vscode
cp config/c_cpp_properties.json $HOME/colcon_ws/.vscode/c_cpp_properties.json
cp config/launch.json $HOME/colcon_ws/.vscode/launch.json
cp config/settings.json $HOME/colcon_ws/.vscode/settings.json
cp config/tasks.json $HOME/colcon_ws/.vscode/tasks.json
