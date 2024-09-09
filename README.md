# Plain HTML

The simple web server in Docker for a static web page.
To work with the server, you only need [Docker](https://docs.docker.com/get-started/get-docker/) installed.
It's just a Nginx server running in Docker.

### Commands

- `make install` - initial setup
- `make up` - start server
- `make down` - stop server
- `make restart` - reboot server with new config or files link
- `make exec` - go to the server console
- `make logs` - view server logs

### Get started

1. Run `make install`. The command uses the `.env.example` file as a template (don't change it) and creates a new `.env` file where you can specify your free port number.
2. Copy your files. Add your files to the `app` directory or create a symbolic link to your static directory. Create a symbolic link: `ln -s {project-directory} app`, use your own path instead of `{project-directory}`. Then restart the server `make restart`.
3. For the next, you can run `make up` to start and `make down` to stop the server.