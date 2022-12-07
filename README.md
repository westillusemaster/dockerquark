# Quark Docker Image
Unofficial [quark](https://tools.suckless.org/quark/) docker image builder.

## How to use this image

To use this image, you can either pull it from Docker Hub or build it from source.

### Pulling from Docker Hub

To pull this image from Docker Hub, run the following command:

```
docker pull westillusemaster/quark:latest
```

### Building from source

To build this image from source, clone this repository and run the following command from within the repository directory:

```
docker build -t quark .
```

Once you have the image, you can run quark by mounting your static files directory to `/var/www/html` within the container and exposing the container's port 80:

```
docker run -v /path/to/your/static/files:/var/www/html -p 80:80 quark
```

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
