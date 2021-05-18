# testproj_asis_cp1252_crlf

A test project to test how character sets/encodings and newlines get
handled by the development chain (repository, git, IDE, local OS, settings).

### IMPORTANT MANUAL SETUP

For this project, after cloned from repository, do following:
* May need to ensure that all files are part of the IDE's project/module.
  (root's .iml is shared so that for this test project it easier to do for IntelliJ Idea;
  if it doesn't happen automatically at import, just right click on the .iml file and use it...)
* In IntelliJ Idea, open File -> Settings... -> Editor -> File Encodings,
  check that the "Project Encoding" is explicitly set to windows-1252,
  or set it manually so.
* In the same place, ensure that src/main_std has encoding UTF-8 and
  src/main_win has encoding windows-1252.
* In the same place, ensure that default encoding for .properties files is iso-8859-1.

The windows-1252 being set in the IDE is important, because editorconfig
does not support that charset/encoding.


### Test tasks

1. Fork the project.
2. Clone the forked project (e.g. directly to Idea) for local work.
3. Create a new branch.
4. Check that the charset/encoding and newline formats match the filenames.
5. Make the explained changes in each file. Commit them.
6. Create new files (without explicitly setting their charset/encoding or newline format),
   add some ä ö in them, and after saving them, check their formats:
   * Defaults.java in main_std/java - should get UTF-8 and LF 
   * defaults.txt in main_win/resources - should get CP1252 and CRLF
7. Recheck that the charset/encoding and newline formats match the filenames.
8. Push the new branch and its changes to your forked repository and create PR from the branch to main.
9. Check the shown diffs (note: do _not_ ignore whitespace...)

Any problems with charsets/encoding or converted newlines should be easily visible.

### Other stuff

Following files should be UTF-8 and LF:
* This README.md
* .editorconfig
* .gitattributes

Note that this project does _not_ gitignore one file under .idea-directory; the encodings.xml file,
and the root .iml file is also not gitignored for convenience.
