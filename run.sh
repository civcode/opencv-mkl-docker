docker run \
    --ipc=host \
    --privileged \
    --group-add video \
    -d -it \
    -u $(id -u):$(id -g) -e HOME=$HOME -e USER=$USER \
    -v /dev:/dev \
    -v $HOME:$HOME \
    -v /home/$USER/workspace:/home/$USER/workspace \
    -e DISPLAY=$DISPLAY \
    -e XDG_RUNTIME_DIR=$XDG_RUNTIME_DIR \
    -v /run/user/$UID:/run/user/$UID \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -w /home/$USER \
    opencv-mkl
