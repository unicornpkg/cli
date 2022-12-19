# CLI components of unicornpkg

The command-line interface for the [unicornpkg library](https://unicornpkg.github.io).

Includes `unicorntool`, a utility for installing raw package tables. This also houses `hoof` as well.

## Structure

`init.Lua` contains the actual program.

`help.txt contains plain-text help for use with the CraftOS `help` program.

`completions.lua` contains completions for use with the CraftOS shell. These should get ran on startup.
