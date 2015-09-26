#!/system/bin/sh
svc wifi disable
sleep 1
insmod /system/lib/modules/wlan.ko con_mode=5
sleep 2
#ptt_socket_app	#only for QRCT tool
iwpriv wlan0 ftm 1
sleep 1
exit 0

