if not type -q docker
  exit 0
end

function shell_fedora -d "Start a shell using the last Fedora Docker image"
  set -l shell /bin/bash
  set -l image fedora:latest
  set -l docker_volume /mnt
  set -l local_volume $PWD

  echo "🐳 Run $shell using image $image"
  echo "Working directory mounted in: $docker_volume"

  docker run -it --rm -v "$local_volume:$docker_volume" -w $docker_volume $image $shell
end
