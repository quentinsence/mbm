## **MBM**
  
MyBookmarkManager is a bash script CLI bookmark manager.  
All bookmarks pages are stored as html files under ~/.bookmarks/  
The full list of bookmarks is maintained in a plain text file at ~/.bookmarks/list  
Tags are directories holding symbolic links to the actual files  
This simple structure allows to process the bookmarks store with any common GNU tools

# Why use mbm? Why another bookmark manager?
* search: content of linked pages is cached as a result the keyword search is more powerful searching through all pages contents
* git: keep track of changes made to your links and content of your links
* portability:
    + it does not rely on a given browser
    + only a minimal set of common tools is required
    + bookmarks stored in human readable plain text file

# Features:
* bash completion for urls, tags and commands
* fetch: refresh all bookmarks and log all changes
* tags as directories with symlinks to the cached files
* git tracks all changes in the .bookmarks dir
* open link in browser
* statistics reporting the number of links and list tags

# Install
```
$ make install
$ make uninstall
```

# Examples
bash completion
```
$ mbm [TAB KEY]
add      del      grep     insert   ls       remove   search   stats    tags/    
cache/   fetch    help     list     open     rm       show     sync     version

$ mbm op[TAB KEY]
$ mbm open ta[TAB KEY]
$ mbm open tags/
bash/          cam/           debian/        opencv/        reddit/        script/        
browser/       completion/    fingerprints/  passwords/     rpi/           tech/
$ mbm open tags/b[TAB KEY]
$ mbm open tags/bash/[TAB KEY]
$ mbm open tags/bash/http---stackoverflow.com-questions-3124556-clean-way-to-launch-the-web-browser-from-shell-script.html
opening http://stackoverflow.com/questions/3124556/clean-way-to-launch-the-web-browser-from-shell-script
```
tab completion
```
$ mbm ca[TAB KEY]
$ mbm cache/[TAB KEY]
$ mbm cache/http---wwww.re[TAB KEY]
$ mbm cache/http---wwww.reddit.com-r-[TAB KEY]
$ mbm cache/http---www.reddit.com-r-technology-comments-1nj01c-fingerprints-are-usernames-not-passwords-.html
opening http://www.reddit.com/r/technology/comments/1nj01c/fingerprints_are_usernames_not_passwords/
```
add url with tags
```
$ mbm add https://github.com/tj/bm bookmark bash script dropbox
Description (default: tj/bm · GitHub):
[master 3279f2d] new bookmark https://github.com/tj/bm
5 files changed, 809 insertions(+)
create mode 100644 cache/https---github.com-tj-bm.html
create mode 120000 tags/bash/https---github.com-tj-bm.html
create mode 120000 tags/bookmark/https---github.com-tj-bm.html
create mode 120000 tags/dropbox/https---github.com-tj-bm.html
create mode 120000 tags/script/https---github.com-tj-bm.html
```
deep search: searches title, url and content of the page!
the page below has no indication in the url or description of the keyword but the page is found because of its content
```
$ mbm search circadian
http://www.bengreenfieldfitness.com/2012/11/insomnia-natural-remedies/ 
opening http://www.bengreenfieldfitness.com/2012/11/insomnia-natural-remedies/ 
```

# Depends on:
- bash
- git
- awk
- sed
- curl
- xdg-utils (for xdg-open)

# Credits
* the first commit comes from the original post on http://www.reddit.com/r/commandline/comments/32jxeu/i_am_looking_for_a_specific_cli_bookmark_manager/ by user http://www.reddit.com/user/ibenchpressakeyboard

* bash completion is totally inspired from the ultimate password manager (http://www.passwordstore.org)
