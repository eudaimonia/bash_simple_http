function handle_get() {
    path=$1
    if [ $1 = "/" ]
    then
        path="/index.html"
    fi
    echo -en `date +"%Y-%m-%d %H:%M:%S\t"` >> log
    echo "$path" >> log
    if [ -f "www$path" ]
    then
        cat << eof
HTTP/1.1 200 OK
Server: my-bash-server
Date: `date -Ru | sed 's/+0\+$/GMT/'`
Cotent-Length: `du -b www$path | awk '{print $1}'`
Cotent-Type: `mimetype -b www$path`

eof
        cat "www$path"
    else
        cat << eof
HTTP/1.1 404 NotFound
Server: my-bash-server
Date: `date -Ru | sed 's/+0\+$/GMT/'`

File Not Found
eof
fi
}

