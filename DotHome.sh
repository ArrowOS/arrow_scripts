echo -n "Do you want to include Dot launcher in this build ?(y/n) "
echo
echo -n "========================================="
echo
echo -n "By default Lawnchair will be installed"
echo
echo -n "=========================================="
echo
read -t 20 answer
if echo "$answer" | grep -iq "^y" ;then
	  echo Dot launcher will be installed alongside lawnchair
	  export WITH_DOTHOME=true
else
    echo Dot launcher will not be installed alongside lawnchair
	  export WITH_DOTHOME=false
fi
