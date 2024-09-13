
install-dreamy-cli:
    curl --proto '=https' --tlsv1.2 -LsSf https://github.com/LunchTimeCode/dreamy-cli/releases/download/v1.3.1/dreamy-cli-installer.sh | sh


# we can filter more if we want
get_all_repos: 
    gh repo list LunchTimeCode --limit 1000 --json name | jq '[.[].name]' > repos.json

# see https://lunchtimecode.github.io/dreamy-cli/ for more info
get_all_deps: install-dreamy-cli get_all_repos
    mkdir public
    dy global_deps --ashtml > public/index.html
