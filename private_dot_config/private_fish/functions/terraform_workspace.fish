function terraform_workspace --description 'Show terraform workspace'
    # Set a variable for workspace color.
    set -l tfworkspace_color (set_color green)

    # Append the workspace name at the current prompt position if
    # the directory contains a .terraform subdirectory
    if test -d .terraform
    set workspace (terraform workspace show ^/dev/null)
    echo -n -s " " $tfworkspace_color "[" $workspace "]" $normal_color
    end
end