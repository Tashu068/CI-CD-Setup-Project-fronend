| Problem                          | Solution                                  |
| -------------------------------- | ----------------------------------------- |
| `host.docker.internal` not found | Use EC2 private IP or Docker service name |
| Linux doesn't support this host  | Use a shared Docker network               |


| ❌ Error                                              | ✅ Solution                                                                                 |
| ---------------------------------------------------- | ------------------------------------------------------------------------------------------ |
| `./mvnw: Permission denied`                          | Run `chmod +x mvnw` to make the wrapper executable                                         |
| `Connection to localhost:5432 refused`               | Backend DB hostname must match the Docker Compose service name `postgres`, not `localhost` |
| `docker: 'compose' is not a docker command`          | Install Docker Compose v2 plugin properly                                                  |
| `mkdir /home/user/.docker/buildx: permission denied` | Run Compose commands with `sudo` or fix `.docker` permissions                              |
| `Tomcat started on port 8080` conflicts with Jenkins | Change backend port mapping to `8001:8080`                                                 |

