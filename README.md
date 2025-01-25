# fish-autols

Automatically `ls` when the `$PWD` changes.

## Install

```fish
fisher install yuys13/fish-autols
```

## Variables

### `autols_cmd`

Default command is `ls`. If you want to change command, run

```fish
set -U autols_cmd ls -a #(or ls -l, exa, etc...)
```
