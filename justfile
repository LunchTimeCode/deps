
install-dreamy-cli:
    curl --proto '=https' --tlsv1.2 -LsSf https://github.com/LunchTimeCode/dreamy-cli/releases/download/v1.2.1/dreamy-cli-installer.sh | sh


# we can filter more if we want
get_all_repos:
    gh repo list LunchTimeCode --limit 1000 --json name | jq '[.[].name]' > repos.json

# see https://lunchtimecode.github.io/dreamy-cli/ for more info
get_all_deps: get_all_repos
    dy global_deps --org LunchTimeCode --ashtml > public/index.html
