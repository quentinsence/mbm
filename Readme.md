## MBM
  
MyBookmarkManager is a bash script CLI bookmark manager.

Why use mbm? Why another bookmark manager?
.search: content of linked pages is cached as a result the keyword search is more powerful searching through all pages contents
.git: keep track of changes made to your links and content of your links
.portability: it does not rely on a specific browser

The first commit comes from the original post on http://www.reddit.com/r/commandline/comments/32jxeu/i_am_looking_for_a_specific_cli_bookmark_manager/ by user http://www.reddit.com/user/ibenchpressakeyboard

new features:
.bash completion for urls, tags and commands
.fetch refresh all bookmarks and log changes
.tags as directories with symlinks to the cached files
.git powered, all changes in the .bookmarks dir are tracked with git
.open link in browser
.statistics reporting the number of links and tags
