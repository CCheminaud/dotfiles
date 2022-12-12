if not type -q git
  exit 0
end

function git_create_annotated_tag -d "Create a Git annotated tag" -a tag
    git tag -a $tag -m $tag
end
