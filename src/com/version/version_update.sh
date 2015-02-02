#!/bin/sh
# public static const git_number:String = "git_hash_version";
# becomes
# public static const git_number:String = "sfsdfds";
GITHASH=$(git log --pretty=format:'%h' -n 1)
DATEUTC=$(date -u "+%Y-%m-%d %H:%M UTC")
echo 'public static const git_number:String = "git_hash_version";' > ./GitVersion.as
echo 'public static const build_date:String = "build_date_time";' >> ./GitVersion.as
sed -i "" "s#git_hash_version#$GITHASH#" ./GitVersion.as
sed -i "" "s#build_date_time#$DATEUTC#" ./GitVersion.as
