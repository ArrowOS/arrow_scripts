echo -n "Do you want to include Dot launcher in this build ?(y/n) "
echo
echo -n "========================================="
echo
echo -n "By default Lawnchair will be installed"
echo
echo -n "=========================================="
echo

CUR_DIR=`pwd`
DOWN_PATH="$CUR_DIR/dot_scripts/Lawnchair"

read -t 10 answer
if echo "$answer" | grep -iq "^y" ;then
	if [[ -f $DOWN_PATH/Lawnchair.apk ]] ; then
	    echo Dot launcher will be installed alongside lawnchair
	    export WITH_DOTHOME=true
	else
		echo Lawnchair not found, only DotHome will be installed.
		export WITH_DOTHOME=true
	fi
else
    echo Dot launcher will not be installed alongside lawnchair
	  export WITH_DOTHOME=false

	  #Lawnchair check
	  if [[ ! -e $DOWN_PATH/Lawnchair.apk ]] ; then
	  	echo No alternative Launcher found. DotHome will be included by default.
	  	export WITH_DOTHOME=true
	  fi
fi
