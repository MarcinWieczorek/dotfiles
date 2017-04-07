for file in $(find ~/.bin -type f); do
    xbase=${file##*/}
    xbase=${xbase/.sh/}
    newpath=~/.local/bin/"${xbase}"
    if [ "${xbase}" != "binlink" ] && [ ! -f ${newpath} ]; then
        chmod +x "${file}"
        ln -s "${file}" "${newpath}"
        echo "${file} -> ${newpath}"
    fi
done
