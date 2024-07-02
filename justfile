
install-graph:
    npm i -g @silenloc/renovate-graph-dreamy

download_deps organization: install-graph
    renovate-graph-dreamy --token $GITHUB_TOKEN --autodiscover --autodiscover-filter '{{organization}}/*'
