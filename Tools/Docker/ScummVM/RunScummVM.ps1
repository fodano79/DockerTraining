$docker_localtime="-v /etc/localtime:/etc/localtime"
$docker_x="-v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=`$DISPLAY -v `$HOME/.Xauthority:/home/developer/.Xauthority --net=host"
$docker_me="-e UID='id -u' -e GID='id -g'"
$docker_pulse="-v /run/user/'id -u'/pulse:/run/pulse"

function scummvm {
    #docker run --name scummvm $docker_x --volumes-from game-data  $docker_pulse $docker_me $docker_localtime --rm -it  fsodano79/scummvm:ver-1.0 "$@"
    set-variable -name DISPLAY -value 172.16.2.4:0.0
    docker run --name scummvm --rm -it -e DISPLAY=$DISPLAY fsodano79/scummvm:ver-1.0 "$@"
}

scummvm