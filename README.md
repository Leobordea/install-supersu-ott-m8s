# Script cài superSU và root OTT M8S android tv box (HX812)

## Lưu ý:
Script này chỉ cài đặt [superSU 2.46](https://download.chainfire.eu/696/supersu/) cho OTT M8S android tv box model **hx812**.  
Để cài superSu cho máy khác, tham khảo [How to install SuperSu on Android via adb](http://selvaline.blogspot.tw/2015/09/how-to-install-supersu-on-android-via.html)  
# Cách cài :
0. Mở terminal, bật usb debuging và dùng lệnh dưới để kết nối với TV box qua LAN qua adb  
nmap -p- {địa chỉ ip private của box} VD : nmap -p- 192.168.1.100, sẽ ra port để kết nối adb qua LAN.  
adb connect {địa chỉ ip private của box}:{port vừa tìm ra} VD adb connect 192.168.1.100:11405.  
Đồng ý kết nối adb trên android tv box.  
1. Tải [superSU 2.46](https://download.chainfire.eu/696/supersu/) và giải nén.  
2. Copy installSU.sh vào thư mục superSU vừa được giải nén.  
3. chmod 777 installSU.sh  
4. ./installSU.sh  
Nếu cài đúng, máy sẽ khởi động lại và sau đó sẽ có app SuperSU và quyền root.
