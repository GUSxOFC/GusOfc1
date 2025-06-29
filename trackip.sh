#!/bin/bash
# DOX IP TOOL BY GUSxOFC
# OWNER: GusOfcXD | Version: 1.0

clear

# Warna
red='\033[1;31m'
green='\033[1;32m'
blue='\033[1;34m'
cyan='\033[1;36m'
reset='\033[0m'

# Header
echo -e "${red}╔═════════════════════════════════════════╗"
echo -e "${red}║         🔥 DOX IP BY GUSxOFC 🔥         ║"
echo -e "${red}╚═════════════════════════════════════════╝${reset}"
echo -e "${green}OWNER   : GusOfcXD"
echo -e "VERSION : 1.0${reset}\n"

# Cek dependensi
for tool in curl jq; do
    if ! command -v $tool > /dev/null 2>&1; then
        echo -e "${red}[!] $tool belum terinstall. Menginstall...${reset}"
        pkg install $tool -y
    fi
done

# Input IP
read -p "Masukkan IP Publik Target: " ip
echo -e "\n${cyan}[~] Mengambil informasi dari IP: $ip...${reset}\n"

# Ambil data
data=$(curl -s "http://ip-api.com/json/$ip")

# Validasi data
status=$(echo "$data" | jq -r '.status')
if [[ "$status" != "success" ]]; then
    echo -e "${red}[!] Gagal mengambil informasi. Pastikan IP valid.${reset}"
    exit 1
fi

# Output informasi
echo -e "${blue}═════════📡 INFORMASI IP 📡═════════${reset}"
echo -e "🆔 IP Address   : $(echo $data | jq -r '.query')"
echo -e "🌍 Negara       : $(echo $data | jq -r '.country')"
echo -e "📍 Provinsi     : $(echo $data | jq -r '.regionName')"
echo -e "🏙️  Kota        : $(echo $data | jq -r '.city')"
echo -e "📮 Kode Pos     : $(echo $data | jq -r '.zip')"
echo -e "🕒 Zona Waktu   : $(echo $data | jq -r '.timezone')"
echo -e "📶 ISP          : $(echo $data | jq -r '.isp')"
echo -e "🏢 Organisasi   : $(echo $data | jq -r '.org')"
echo -e "🔰 AS           : $(echo $data | jq -r '.as')"
echo -e "📱 Mobile?      : $(echo $data | jq -r '.mobile')"
echo -e "🛡️  Proxy/VPN?  : $(echo $data | jq -r '.proxy')"
echo -e "🗺️  Lokasi GPS  : $(echo $data | jq -r '.lat'), $(echo $data | jq -r '.lon')"
echo -e "🌐 Google Maps  : https://www.google.com/maps?q=$(echo $data | jq -r '.lat'),$(echo $data | jq -r '.lon')"

echo -e "\n${green}[✓] Data berhasil diambil.${reset}"
echo -e "${cyan}Script by GUSxOFC • Owner: GusOfcXD${reset}"
