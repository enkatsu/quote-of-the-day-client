# Quote of the Day Client

[RFC](https://datatracker.ietf.org/doc/html/rfc865)

## Run local server

```sh
sudo while true; do printf '"The medium is the message."\r\nHerbert Marshall McLuhan (1911-80)\r\x00' | nc -l 17; done
```

## Run client

```sh
# Bash
bash main.sh

# C
gcc main.c -o main && ./main 

# Python
python main.py

# Ruby
ruby main.rb

# Perl
perl main.pl

# Node.js
node main.js

# Java
javac Main.java && java Main

# Rust
rustc main.rs && ./main

# Processing
processing-java --sketch=${PWD}/processing --run

# Pure Data
open main.pd
```
