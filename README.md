Manim Docker Container
======================

This container is based on [eulertour/manim](https://hub.docker.com/r/eulertour/manim), except that it has oh-my-zsh and the Powerlevel10k theme and tmux, so that you can easily run parallel interactive manim renderings in your terminal window. [Manim](https://github.com/3b1b/manim) is a Python 3-based animation pipeline written by Grant Sanderson of the [3blue1brown](https://www.youtube.com/channel/UCYO_jab_esuFRV4b17AJtAw) YouTube channel. It is not incredibly well documented, so at some point I may add a tutorial here. For now, here are some barebones instructions on using the Docker container:

* Start the Docker container, making sure that you mount the host directory that holds your scene code. For example:

```bash
docker run -it --rm -v /host/scene/dir:/scenes jasonkwan/manim:latest
```

* This will open up the command prompt within the Docker image. If your scene uses SVG or image files, create the following directories and then copy the relevant files into them:

```bash
mkdir /manim/assets
mkdir /manim/assets/svg_images
mkdir /manim/assets/raster_images
``` 

* You can now render your scene:

```bash
cd /manim
./manim.py myscene.py MyScene -l
```

* Assuming it renders without error messages, manim will print the path where it has stored your video file. Before exiting the Docker image, make sure you have copied this to the mounted host directory.