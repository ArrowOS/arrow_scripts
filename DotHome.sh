echo -n "Do you want to include Dot launcher in this build ?(y/n) "
echo
echo -n "========================================="
echo
echo -n "By default Launchair will be installed"
echo
echo -n "=========================================="
echo
read -t 20 answer
if echo "$answer" | grep -iq "^y" ;then
	  echo Dot launcher will be installed alongside launchair
else
    echo Dot launcher will not be installed alongside launchair
	 sed -i '/Trebuchet/c\Lawnchair' vendor/dot/config/common.mk
fi
