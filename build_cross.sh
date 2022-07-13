docker buildx create --name mybuilder --node mybuilder0 --use

declare -a StringArray=("amz" "deb" "ubuntu") # adding alpine here causes failure

# todo: does this work in Linux?
arch=$(uname -m)
proc_arch="UNKNOWN"
if [  "${arch}" == "x86_64" ];
    then proc_arch=linux/amd64
elif [ "${arch}" =~ ^arm ];
    then proc_arch=linux/arm64
fi

if [ "${arch}" == "UNKNOWN" ];
    then
        echo "Girl, you so crazy.... I don't know what kind of processor you run."
        exit -1
fi

echo "**** Cross building all images. These would be pushed. ****"
for dist in ${StringArray[@]}; do
    echo "**** Cross building for distro: ${dist}. ****"
   docker buildx build --platform "linux/amd64,linux/arm64" -t local/test:${dist} . -f ${dist}/Dockerfile
done

echo "**** Build and loading for local processor arch. Due to a bug/feature in Docker, you cannot import when building multiple arch. ****"
for dist in ${StringArray[@]}; do
    echo "**** Building for distro: ${dist} on platform: ${proc_arch}. ****"
    docker buildx build --platform "${proc_arch}" -t local/test:${dist} . -f ${dist}/Dockerfile --load
done

