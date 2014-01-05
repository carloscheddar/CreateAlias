CreateAlias
===========
This script will create a symbolic link of TV episodes to be able to rename them without affecting the original.

### Purpose
As a fan of Doctor Who I wanted to watch the classic series but I had to organize the TV episodes while seeding.
So I created this app that makes a symbolic link of episodes inside their respective season folders.
This way I can manipulate the names of the symbolic links while still seeding the originals.

### Format
```
/Doctor Who - The Complete Classic 26 Seasons Collection + Extras
    /Doctor Who - S01E01 (001) - An Unearthly Child - Parts 1-4
       Doctor Who - S01E01 (001) - An Unearthly Child (1) - An Unearthly Child
       Doctor Who - S01E01 (001) - An Unearthly Child (2) - The Cave of Skulls
       Doctor Who - S01E01 (001) - An Unearthly Child (3) - The Forest of Fear
       Doctor Who - S01E01 (001) - An Unearthly Child (4) - The Firemaker
    /Doctor Who - S01E02 (002) - The Daleks - Parts 1-7
       Doctor Who - S01E02 (002) - The Daleks (1) - The Dead Planet
       Doctor Who - S01E02 (002) - The Daleks (2) - The Survivors
       Doctor Who - S01E02 (002) - The Daleks (3) - The Escape
       Doctor Who - S01E02 (002) - The Daleks (4) - The Ambush
       Doctor Who - S01E02 (002) - The Daleks (5) - The Expedition
       Doctor Who - S01E02 (002) - The Daleks (6) - The Ordeal
       Doctor Who - S01E02 (002) - The Daleks (7) - The Rescue
    /Doctor Who - S02E01 (009) - Planet of Giants - Parts 1-3
       Doctor Who - S02E01 (009) - Planet of Giants (1) - Planet of Giants
       Doctor Who - S02E01 (009) - Planet of Giants (2) - Dangerous Journey
       Doctor Who - S02E01 (009) - Planet of Giants (3) - Crisis

Created aliases will be on a folder specified by the user:

/Classic Doctor Who
    /Season 01
       Doctor Who - S01E01 (001) - An Unearthly Child (1) - An Unearthly Child
       Doctor Who - S01E01 (001) - An Unearthly Child (2) - The Cave of Skulls
       Doctor Who - S01E01 (001) - An Unearthly Child (3) - The Forest of Fear
       Doctor Who - S01E01 (001) - An Unearthly Child (4) - The Firemaker
       Doctor Who - S01E02 (002) - The Daleks (1) - The Dead Planet
       Doctor Who - S01E02 (002) - The Daleks (2) - The Survivors
       Doctor Who - S01E02 (002) - The Daleks (3) - The Escape
       Doctor Who - S01E02 (002) - The Daleks (4) - The Ambush
       Doctor Who - S01E02 (002) - The Daleks (5) - The Expedition
       Doctor Who - S01E02 (002) - The Daleks (6) - The Ordeal
       Doctor Who - S01E02 (002) - The Daleks (7) - The Rescue
    /Season 02
       Doctor Who - S02E01 (009) - Planet of Giants (1) - Planet of Giants
       Doctor Who - S02E01 (009) - Planet of Giants (2) - Dangerous Journey
       Doctor Who - S02E01 (009) - Planet of Giants (3) - Crisis
```
### Example
Sending source folder and target folder from arguments
```bash
ruby CreateAlias.rb /Volumes/Sync/Doctor\ Who\ -\ The\ Complete\ Classic\ 26\ Seasons\ Collection\ +\ Extras /Volumes/Sync/Shows/Classic\ Doctor\ Who
```
Calling the program without arguments
```bash
ruby CreateAlias.rb
Drag the show folder to the terminal window: /Volumes/Sync/Doctor\ Who\ -\ The\ Complete\ Classic\ 26\ Seasons\ Collection\ +\ Extras 
Drag the target folder to the terminal window: ClassicWho/
```

### Bug reports
If you experience any issues please report them and I will take care of it as soon as possible.

### Forks
Feel free to fork and improve the code.
