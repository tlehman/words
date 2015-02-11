# words

## common
a list of common words 
    
    $ head common
    a
    about
    aint
    all
    an
    and
    are
    as
    at
    be

# decommonize
a script to grep out common words

# generate_decommonize
generates `decommonize` from the `common` file

# Initializing `decommonize`

Just run `make`, it will run `generate_decommonize`.

# Regenerate after updating `common`

Make will see that `decommonize` is there, and won't run, so you can override this by running `make -B`.

# Install

Just run `make install`, but before you do, add `~/bin` to your PATH variable, this is where the `decommonize` executable will be copied.