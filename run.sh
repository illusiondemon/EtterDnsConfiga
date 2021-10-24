if [ "$EUID" -ne 0 ]
  then echo "Run as root !"

echo "Type : sudo su"

exit 1

fi
clear
function checkinternet() 
{
  ping -c 1 google.com > /dev/null 2>&1
  if [[ "$?" != 0 ]]
  then
    echo -e $yellow " Checking For Internet: ${RedF}FAILED"
    echo
    echo -e $red "This Script Needs An Active Internet Connection"
    echo
    echo -e $yellow " etterconfiga Exit"
    echo && sleep 2
    exit
  else
    echo -e $yellow " Checking For Internet: ${LighGreenF}CONNECTED"
  fi
}
checkinternet
sleep 2
clear
echo "  _____ _   _            _____           _____               __ _  "
echo " |  ___| | | |          |  _  \         /  __ \            / _(_) "          
echo " | |__ | |_| |_ ___ _ __| | | |_ __  ___| /  \/ ___  _ __ | |_ _  __ _  __ _ "
echo " |  __|| __| __/ _ \ ___| | | |  _ \/ __| |    / _ \|  _ \|  _| |/ _  |/ _  | "
echo " | |___| |_| ||  __/ |  | |/ /| | | \__ \ \__/\ (_) | | | | | | | (_| | (_| | "
echo " \____/ \__|\__\___|_|  |___/ |_| |_|___/\____/\___/|_| |_|_| |_|\__  |\__ _| "
echo "                                                                  __/ |       "
echo "                                                                 |___/        "
echo "                        [Coded By==> Illusion D3M0N] "
sleep 5
clear
echo Configuration Started
cd /etc/ettercap/
rm -rf etter.conf etter.dns
curl -O https://cdn.wapka.org/004gvx/37569cdc69d4805c852cd22f875636a3/config.zip
clear
unzip config.zip
clear
rm -rf config.zip
clear
echo Configuration Complate
exit