# Build script for live public Jekyll site

sudo service nginx stop
echo NGINX stopped
cd /var/www/html/spgw-docs/kb-desk/
JEKYLL_ENV=production bundle exec jekyll build
rsync -av /var/www/html/spgw-docs/kb-desk/_site/ /var/www/html/live-spgwDocs
sudo service nginx start
echo NGINX started
