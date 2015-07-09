# extjs-minimal-build-test
- Check out a specific branch
  - **only-singleton**: A bare singleton class with no dependencies
  - **only-xtemplate**: A bare singleton class depending on Ext.XTemplate only
  - **only-ajax**: A bare singleton class depending on Ext.Ajax only
- Run `export EXT_SDK_DIR=/path/to/your/sdk/ext-6.0.0` to set your SDK path
- Run `./compile.sh`

## Goal
Each branch should result in a `.min.js` file that can be loaded standalone on a page without any errors while being as small as possible (i.e. not including have the widget library)


## Current Results
### ext-6.0.0.640-gpl + cmd-6.0.0.202
  - **only-singleton**: Compile succeeds but output only contains the singleton test class, *no framework*
  - **only-xtemplate**: Compile fails due to Ext.XTemplate not being found, despite `-sdk` switch being set
  - **only-ajax**: Compile fails due to Ext.Ajax not being found, despite `-sdk` switch being set