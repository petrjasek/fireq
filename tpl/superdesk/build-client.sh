## client part
{{>add-node.sh}}

cd {{repo_client}}
time yarn install
{{^is_superdesk}}
# liveblog 3.0.9, 3.1.0 versions need bower
if [ -f bower.json ]; then
    npm i bower
    time bower --allow-root install
fi
{{/is_superdesk}}

yarn add grunt-cli
# use default urls here
time \
SUPERDESK_URL=http://localhost/api \
SUPERDESK_WS_URL=ws://localhost/ws \
grunt build --webpack-no-progress
