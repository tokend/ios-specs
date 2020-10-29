podspec_path=$1

podspec_json=$(pod ipc spec $podspec_path)

# brew install jq
name=$(echo $podspec_json | jq -r '.name')
version=$(echo $podspec_json | jq -r '.version')

cd $name

mkdir $version

cp $podspec_path $version

git add --all
git commit -m "[Update] $name ($version)"
git push
pod repo update tokend
