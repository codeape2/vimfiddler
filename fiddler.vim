command! StartSeleniumServer ! xterm -e selenium &
command! StartSeleniumClient call StartSeleniumClient()
command! -complete=custom,ListFiddles -nargs=1 OpenFiddle call OpenFiddle('<args>')

function! ListFiddles(A,L,P)
    return system("ls fiddles")
endfunction

function! OpenFiddle(fiddlename)
    let htmlfile = "fiddles/" . a:fiddlename . "/index.html"
    let jsfile = "fiddles/" . a:fiddlename . "/code.js"
    execute "edit ". jsfile
    execute "split " . htmlfile

    call OpenFiddleInBrowser(a:fiddlename)

    call WatchFile(jsfile)
    call WatchFile(htmlfile)
endfunction

function! WatchFile(filename)
    exe "autocmd VimFiddler BufWritePost " . a:filename . " call Refresh()"
endfunction

function! OpenFiddleInBrowser(fiddlename)
    call OpenURL("http://localhost/~" . $USER . "/vimfiddler/fiddles/" . a:fiddlename . "/")
endfunction

function! StartSeleniumClient()
    python from selenium import selenium
    python browser = selenium("localhost", 4444, '*firefox', "http://localhost/")
    python browser.start()
endfunction

function! OpenURL(url)
    execute ":python browser.open('" . a:url ."')"
endfunction

function! Refresh()
    python browser.refresh()
endfunction

augroup VimFiddler
au!
augroup END

python import sys; sys.path.append(".")
echo 'Commands: StartSeleniumServer, StartSeleniumClient, OpenFiddle'
