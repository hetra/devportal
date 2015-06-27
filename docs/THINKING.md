# THINKING #
---

A collection of ideas and plans that should be dumped from main memory (my head) to secondary memory (this file).

## Automated Builds via Independent Program ##
Automatic building of any and all software projects one might host on Devportal is a major, defining feature.

To avoid major security issues and me pulling my hair out, it would be best for an entirely separate software system to handle the build process. This program would run locally on the server, interfacing (read-only, of course) with Devportal's database, mirroring the virtual filesystem implemented within Devportal "in real life" on the server.

Essentially:

1. Access database, building a map of ids to names for all projects
2. Do the same, but for all devdirectories
3. Do the same, but for all devfiles
4. Create projects in some folder (let's go with `dev`)
5. `cd dev`
6. Iterate over the list of projects, `mkdir [project_name]` on every one
7. Once this is done, iterate over the projects again, this time finding all devdirectories under it - `mkdir [devdirectory_name]` for every one
8. Recursively go through each devdirectory, creating directories appropriately (hence the *map*)
9. Once the directory tree is built, put devfiles in their respective places, `touch [devfile_name]` every one
10. Read the contents of every devfile from the database and write them to their corresponding files locally
11. Dependent upon project "type" (e.g. C/C++, Assembly, Ruby, Python, Javascript, etc.), build the project
  - e.g. if project "type" is C, then find root `Makefile` and run `make` in root project directory
12. Somehow return results to user (as we want an entirely segregated software system and due to the context of Devportal, we can even leave it until they get home :P)

