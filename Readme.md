# PhpProject

**PhpProject** is a simple web application built using PHP and Apache that serves a "Hello World" message from a PHP file. This project is dockerized to make it easy to deploy and run in any environment.

## Project Structure

The basic structure of the project is as follows:

```
/
│
├── index.php         # PHP file that contains the main content
├── Dockerfile        # Dockerfile to build the container image
└── README.md         # Project documentation
```

### Requirements

To run this project locally or inside a Docker container, you need the following:

1. **Docker** (if you want to run in a container)
2. **Git** (to clone the repository)

### Local Installation and Execution

#### 1. Clone the Repository

Clone it using Git:

```bash
git clone https://github.com/mateocarruce/Trabajo2.5-PHP-MC-.git
cd Trabajo2.5-PHP-MC-
```

#### 2. Build the Docker Image

To build the Docker image, run the following command:

```bash
docker build -t mateocarr/php-project .
```

#### 3. Run the Application

Once the image is built, run the container:

```bash
docker run -d -p 8080:80 mateocarr/php-project
```

The application will be available at `http://localhost:8080/` 

**Note:** If you encounter an error with port `8080` being already in use, you can either:
- Terminate the process occupying the port (use `taskkill /PID <PID> /F` for Windows to stop the process), or
- Run the container on a different port, such as `8081`, by using the command `docker run -d -p 8081:80 mateocarr/php-project`.

### Docker Hub Launch Manual

#### 1. Download the Image

To download the image from Docker Hub, run:

```bash
docker pull mateocarr/php-project:latest
```

#### 2. Run the Container

Once the image is downloaded, run the container:

```bash
docker run -d -p 8080:80 mateocarr/php-project:latest
```

This will start the container and the application will be available at `http://localhost:8080/`.

## Notes

- Make sure Docker is running.
- If you have problems accessing `http://localhost:8080`, verify that the port is not in use or check your firewall.

