VPNON=1
VPN1="VPNON=1"
VPN0="VPNON=0"
if [ $VPNON -eq 1 ];then
 echo "Turning vpn OFF"
 sed -i "1s/.*/$VPN0/" $HOME/.config/nigger.sh
 killall openvpn
else
 echo "Turning vpn ON"
 sed -i "1s/.*/$VPN1/" $HOME/.config/nigger.sh
 openvpn --config /etc/openvpn/mullvad_cz.conf
fi
