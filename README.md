## Update publishing

To publish pod update call

>./publish_update.sh `podspec`

where `podspec` is full path to the pod's `.podspec` file.

What this script do:

1. copy `.podspec` file to the right directory, creates one if needed
2. create and push commit
3. update `tokend` repo