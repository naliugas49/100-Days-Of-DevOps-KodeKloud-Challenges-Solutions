# 1. Ssh into the storage server 
ssh natasha@172.16.238.15

# 2. Create the post-update hook from sample (or new file)
cp /opt/cluster.git/hooks/post-update.sample /opt/cluster.git/hooks/post-update

# 3. Replace content with this script
#!/usr/bin/sh
# Arguments to post-update
DATE=$(date +%F)        # YYYY-MM-DD
GIT_DIR=$(pwd)

        echo "Creating tag release-$DATE"
        git --git-dir="$GIT_DIR" tag "release-$DATE" master

# 4. Make the hook executable
chmod +x /opt/cluster.git/hooks/post-update

# 5. In your working clone, merge feature into master
cd /usr/src/kodekloudrepos/blog
git checkout master
git merge feature 

# 6. Push master to the bare repository to trigger the hook
git push origin master

# 7. Fetch tags in your clone and verify
git fetch --tags
git tag
