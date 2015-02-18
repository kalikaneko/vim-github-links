" My function to create github links for the current line of code
function! GithubLink()
  let git_branch = system("git status | awk '/On branch/ {print $3}'| ruby -e 'print gets.strip'")
  let repo_name = system("git config --get remote.upstream.url | python -c \"import sys; tmp = lambda x: sys.stdout.write(x.replace('git://', 'https://').replace('.git', '')); map(tmp, sys.stdin);`"")
  let filename = bufname("%")
  let linenumber = line(".")
  let url = 'https://' . repo_name . '/blob/' . git_branch . '/' . filename . "#L" . linenumber
  let output = system('pbcopy', url)
  return url
endfunction

command! GithubLink call s:GithubLink()

nnoremap <silent> <F4> :echo GithubLink()<cr>
