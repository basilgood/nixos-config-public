#! /usr/bin/env nix-shell
#! nix-shell -i bash -p nodePackages.node2nix -p nodejs-8_x --pure
echo '["heroku-cli"]' > temp
node2nix -i temp -6 --flatten -c heroku-cli.nix
rm temp
