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

## decommonize
a script to grep out common words

## generate_decommonize
generates `decommonize` from the `common` file

## Initializing `decommonize`

Just run `make`, it will run `generate_decommonize`.

## Regenerate after updating `common`

Make will see that `decommonize` is there, and won't run, so you can override this by running `make -B`.

## Install

Just run `make install`, but before you do, add `~/bin` to your PATH variable, this is where the `decommonize` executable will be copied.

## words
    $ echo 'This will be chopped. Chopped into individual words, with no punctuation' | ./words
    this
    will
    be
    chopped
    chopped
    into
    individual
    words
    with
    no
    punctuation

## Example usage of `words` and `decommonize`

After running `make install`, you should have `words` and `decommonize` in your PATH, you can use them to find key words that are characteristic of a document, I chose

 - the U.S. Declaration of Independence:

```
$ words < declaration_of_independence.txt | decommonize  | sort | uniq -c | sort -n | tail
   4 time
   5 among
   5 most
   5 powers
   6 government
   6 such
   7 right
   8 states
   9 laws
  10 people
```

 - Sherlock Holmes

```
$ words < doyle_sherlock_holmes.txt | decommonize  | sort | uniq -c | sort -n | tail
 174 think
 175 more
 177 over
 212 may
 212 should
 269 little
 274 mr
 288 man
 463 holmes
 466 upon
```

 - Working with Unix Processes (by @jstorimer)

```
$ words < working_with_unix_processes.txt | decommonize  | sort | uniq -c | sort -n | tail
  73 signal
  82 system
  88 ruby
  90 exit
 100 code
 100 parent
 143 its
 146 child
 184 processes
 444 process
```

So `words` breaks up the document into lower-case alphabetic words, then `decommonize` greps out the common words, and `sort` and `uniq -c` are used to count instances of each decommonized word, and then the results are sorted.

