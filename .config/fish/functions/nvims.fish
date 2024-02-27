function nvim-lazy
    env NVIM_APPNAME=LazyVim nvim
end

function nvim-astro
    env NVIM_APPNAME=AstroNvim nvim
end

function nvims
    set items default LazyVim AstroNvim
    set config (printf "%s\n" $items | fzf --prompt=" Neovim Config  " --height=~50% --layout=reverse --border --exit-0)
    if [ -z $config ]
        echo "Nothing selected"
        return 0
    else if [ $config = "default" ]
        set config ""
    end
    env NVIM_APPNAME=$config nvim $argv
end
