# A static server in 5 lines of code.

Similar to `serve` from npm and Python's `SimpleHTTPServer`. A simple server
to serve static files. Written in 5 lines of Haskell code and uses Servant.

## Installation

While I use it myself, due to its simplicity, I haven't added a .cabal file 
and I do not plan to push it to any distribution. I only added a default.nix
to install it in my NixOS environment.

So, on Nix you can install it from this repository using `git clone` and
`nix-build -E "with import <nixpkgs> {}; callPackage ./default.nix {}`. 
It will output the path like `/nix/store/..` that you need to pass to 
`nix-env -i <path>` and it will be installed it your user environment.
