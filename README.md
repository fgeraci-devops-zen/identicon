# Identicon
Purpose of this application is to create an identicon image
based on string hashing. So it's not going to be random-generated but based on an input.

````
Interactive Elixir (1.5.1) - press Ctrl+C to exit (type h() ENTER for help)
iex(1)> hash = :crypto.hash(:md5, "banana")
<<114, 179, 2, 191, 41, 122, 34, 138, 117, 115, 1, 35, 239, 239, 124, 65>>
iex(2)> :binary.bin_to_list(hash)
[114, 179, 2, 191, 41, 122, 34, 138, 117, 115, 1, 35, 239, 239, 124, 65]
```


## Installation
