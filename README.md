# docker-ciphey
This repository allows you to build a docker image for [ciphey](https://github.com/Ciphey/Ciphey)

## Usage
A docker container built with this Dockerfile can be found at [https://hub.docker.com/u/ahnberg](https://hub.docker.com/u/ahnberg).

To run it, type:
```bash
$ docker run ahnberg/ciphey ciphey --help
Usage: ciphey [OPTIONS] [TEXT_STDIN] [FILE_STDIN]

  Ciphey - Automated Decryption Tool

  Documentation:  https://docs.ciphey.online

  Discord (support here, we're online most of the day):
  https://discord.ciphey.online/

  GitHub:  https://github.com/ciphey/ciphey

  Ciphey is an automated decryption tool using smart artificial intelligence
  and natural language processing. Input encrypted text, get the decrypted
  text back.

  Examples:

      Basic Usage: ciphey -t "aGVsbG8gbXkgbmFtZSBpcyBiZWU="

Options:
  -t, --text TEXT            The ciphertext you want to decrypt.
  -i, --info                 Do you want information on the cipher used?
  -q, --quiet                Decrease verbosity
  -g, --greppable            Only print the answer (useful for grep)
  -v, --verbose
  -C, --checker TEXT         Use the given checker
  -c, --config TEXT          Uses the given config file. Defaults to
                             appdirs.user_config_dir('ciphey',
                             'ciphey')/'config.yml'

  -w, --wordlist TEXT        Uses the given wordlist
  -p, --param TEXT           Passes a parameter to the language checker
  -l, --list-params BOOLEAN  List the parameters of the selected module
  -O, --offline              Run Ciphey in offline mode (no hash support)
  --searcher TEXT            Select the searching algorithm to use
  -b, --bytes-input          Forces ciphey to use binary mode for the input.
                             Rather experimental and may break things!

  -B, --bytes-output         Forces ciphey to use binary mode for the output.
                             Rather experimental and may break things!

  --default-dist TEXT        Sets the default character/byte distribution
  -m, --module PATH          Adds a module from the given path
  -A, --appdirs              Print the location of where Ciphey wants the
                             settings file to be

  --help                     Show this message and exit.

```

For quick access you might want to alias it in your shell:
```bash
$ alias ciphey="docker run ahnberg/ciphey ciphey"
$ ciphey -t "01010100 01100101 01110011 01110100 01101001 01101110 01100111"
Format used:
  binary
  utf8
Final result: "Testing"
```

For detailed usage instructions check out the repository at [https://github.com/Ciphey/Ciphey](https://github.com/Ciphey/Ciphey)
