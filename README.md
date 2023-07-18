# Optix-DevHome
"*Development just has to be connected*"
---
## About

The objective of Optix DevHome is to create a simple but powerful solution for both solo developers & team developers, built on top of the **Lua** programming language.

## What to implement:

- [X] Connect to remote Git repositories and clone them onto user's selected location.
- [ ] Send PRs, commits, and more.
- [ ] Implement Projects
    - [X] Basic Project saving
        - Advanced Project saving
            - [ ] Project setups
            > Project setups are a way to speed up workflows: you click once, and all the programs you need are open and all the libraries & dependencies you need get updated and installed if needed. (That's the idea tho)
            - [X] Project files
            - [X] Project updating
                - [ ] Secure project updating
            - [ ] Project sharing
- [ ] Multiple languages
> *Note: Optix DevHome will be first developed in spanish, then ported to english, and after that we'll see. This isn't a priority for now.*
- [ ] GUI
    - [ ] GUI based on the Umbra design system (Link to Figma (very) soon)

## Documentation

### Set up

You will need to install Lua to work on this project. Also you will need the Luarocks Package Manager to install the libraries we use.
Libraries:
- LuaSocket
- RapidJSON
- LuaFileSystem

Don't have Lua? Here's the command for major Linux systems, macOS, and Windows.
- **Debian or Ubuntu**
```bash
sudo apt-get install lua5.3
```
- **Fedora or CentOS**
```bash
sudo dnf install lua
```
- **Arch**
```bash
sudo pacman -S lua
```
- **macOS**
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install lua
```
- **Windows**

Just get it from [Lua's website](https://lua.org/download.html)
## Editing

Ok, you're ready. How do you write *fancy* code on this project?

1. Use `local` variables almost always
That way we can avoid naming issues
**Do:**
```
local Bread = "I like bread"
print(Bread)
```
**Don't**
```
Bread = "I like bread"
print(Bread)
```

2. When naming variables, be very specific
At the end we may have too many variables, so be specific with the naming.
However, don't write TheEntireSentenceLikeThis.

**Do:**
```
local Icon32PNG = "/img/icon-32.png"
local UserConfirmRemoveProject = "Do you want to remove this project?"
local Game1ExeFile = "/home/pico/game1.exe"
```
**Don't:**
```
local icon = "/img/icon-32.png"
local question = "Do you want to remove this project?"
local game = "/home/pico/game.exe"
```

3. Comment errors correctly
For parts that don't work, add a comment using the ERR, WARN, NOTE system:

`ERR` - That line isn't doing what it should and it's breaking the program.

`WARN` - That line isn't doing what it should, but the rest of the program can run properly.

`NOTE` - Things that are undone or that should (or will) be changed.

Write things nicely and briefly.
**Do:**
```
-- ERR: after replying it returns an error and stops the program
UserFavouriteFood = readInput("Whats your favourite food?")
if UserFavouriteFood = "bread"
    print("you like bread? me too!")
```
4. Make ***Pull Requests***, never Direct Commits. Thanks :]

## Testing

Open up a terminal. It will probably open on the source directory. Enter the `src` directory:
```bash
cd src
```

Then run the following command:
```bash
lua main.lua
```

Just like that, the program will run on the terminal, ready to test.
(Note: You *must* be on the `src` directory from the terminal before running, or else Lua will return that `config.lua` wasn't found.)


Well, that's it! You're now ready to write some fancy code on this project. Have fun and thanks for contributing!

## Acknowledgments

Contributors:
- For now I am the only one working on this project, so...

OSS used:
<!--this is actually here because it needs to be: i just noticed Lua required this for it's usage XD
they deserve it tho, lua is just so cool-->
- A shoutout to the amazing team who created the Lua programming language, at PUC-Rio (Lua.org).

Copyright &copy; 1994–2023 Lua.org, PUC-Rio.
