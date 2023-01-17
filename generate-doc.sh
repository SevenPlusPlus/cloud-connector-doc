!/bin/bash

echo "remove old doc dir"
rm -rf ./doc

echo "generate new docs"
javadoc -d ./doc -encoding utf-8 -charset utf-8 -private -sourcepath /Users/sevenplus/workspace/cloud-connector-sdk/cloud-connector-sdk-core/src/main/java -subpackages com

echo "commit change"
git commit -m "new version" -a

echo "push to remote repository"
git push origin gh-pages
