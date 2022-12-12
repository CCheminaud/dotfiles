if not test (uname) = Darwin
  exit 0
end

function update_system -d "Update apps and packages on current system"

    # Homebrew
    # https://formulae.brew.sh
    if type -q brew
        echo "🍺 Update Homebrew packages..."
        brew update
        and brew upgrade
        and brew cleanup
        and echo "🍺 Homebrew packages have been updated!"
    else
        echo "🍺 Homebrew is not installed. This part has been skipped."
    end

    # mas-cli
    # https://github.com/mas-cli/mas
    if type -q mas
        echo
        echo "🛒 Update App Store applications..."
        mas upgrade
        and echo "🛒 App Store applications have been updated!"
    else
        echo "🛒 mas-cli is not installed. This part has been skipped."
    end

    echo
    echo "🍏 Update MacOS..."
    softwareupdate -i -a
    and echo "🍏 MacOS is up to date!"

end
