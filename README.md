[![CI](https://github.com/alessandrocandolini/agda-proofs/actions/workflows/ci.yml/badge.svg)](https://github.com/alessandrocandolini/agda-proofs/actions/workflows/ci.yml)

# agda-proofs

## Compile

Assuming Agda is available (see Installation section),
```bash
agda --compile agda-proofs.agda
```

The `--compile` flag creates via the GHC backend a binary file in the top-level folder that can be executed:
```bash
./agda-proofs
```

## Install Agda

If using [nix](https://nixos.org/), a [shell.nix](shell.nix) file is provided as part of the repo that will make Agda and it's standard library available in a ephemeral nix shell. Just `cd` into the project and type
```bash
nix-shell
```
(The same can be automated using `direnv`.)

It's also possible to compile directly through nix
```bash 
nix-shell --pure --run "agda --compile agda-proofs.agda"
```

The latter is exactly the command executed on the CI (see CI/CD section).

See the [Agda official guide](https://agda.readthedocs.io/en/latest/getting-started/installation.html) for other installation options.

## CI/CD

This project uses github actions to ensure at every commit the agda files are compiled.

While Github Actions to work with Agda are available --- see [setup-agda](https://github.com/wenkokke/setup-agda) for example ---  in order to make local and remote compilation more consistent and aligned, nix has been used for the CI
