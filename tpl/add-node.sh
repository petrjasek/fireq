# node & npm
if ! _skip_install nodejs; then
    curl -sL https://deb.nodesource.com/setup_6.x | bash -

    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
    echo "deb https://dl.yarnpkg.com/debian/ stable main" \
        > /etc/apt/sources.list.d/yarn.list

    apt-get -y update
    apt-get -y install nodejs yarn

    yarn config set cache-folder /root/.yarn
fi

node --version
npm --version
yarn --version
