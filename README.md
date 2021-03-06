formatting-checks
==========
Tests and demonstration of some file formatting checks that may be used in continuous integration.

See the "Test Formatting checks (expected to fail)" and "Test Formatting checks (expected to pass)" sections of [.travis.yml](https://github.com/per1234/formatting-checks/blob/master/.travis.yml) and the [Travis CI build log](https://travis-ci.org/per1234/formatting-checks).

Scripts to correct non-compliant formatting are located in the `correction-scripts` folder.

Git pre-commit hooks to check for non-compliant formatting are located in the `hooks` folder.

### Checks
- UTF-8 BOM file encoding
- Files starting with blank lines
- Tabs
- Trailing whitespace
- Non-Unix line endings
- Extra blank lines at end of file
- Files that don't end in a newline


### Contributing
Pull requests or issue reports are welcome! Please see the [contribution rules](https://github.com/per1234/formatting-checks/blob/master/.github/CONTRIBUTING.md) for instructions.
