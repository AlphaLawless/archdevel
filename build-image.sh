export UID=$(id -u)
export GID=$(id -g)
echo "Enter with a Password: "
read PW
docker build --build-arg USER=$USER \
             --build-arg UID=$UID \
             --build-arg GID=$GID \
             --build-arg PW=$PW \
             .

