function backup -d "Create a file backup" -a source
  set -l target $source.bck

  cp -r $source $target
  and echo "Backup saved in $target"
end
