# extjs-minimal-build-test
- Check out a specific branch
  - minimal: A bare singleton class with no dependencies
  - only-xtemplate: A bare singleton class depending on Ext.XTemplate only
  - only-ajax: A bare singleton class depending on Ext.Ajax only
- Edit compile.sh to have correct path to ext-6.0.0
- Run compile.sh

## Goal
Each branch should result in a `.min.js` file that can be loaded standalone on a page without any errors while being as small as possible (i.e. not including have the widget library)
