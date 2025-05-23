#!/bin/bash

# Warna
hijau='\033[1;32m'
normal='\033[0m'

# Fungsi animasi GUSOFC
animate_gusofc() {
  clear
  for i in {1..10}; do
    echo -e "${hijau}"
    echo "╭━━┳━━┳╮╭┳━━╮"
    echo "┃╭╮┃╭━┫┃┃┃━━┫"
    echo "┃┣┫┃╰╮┃╰╯┣━━┃"
    echo "╰╯╰┻━━┻━━╯"
    echo "╭━━┳━━┳━┳┳━━┳━┳━┳┳━━╮"
    echo "┃╭━┫╭╮┃┃┃┣╮╭┫┳┫┃┃┃╭━┫"
    echo "┃╰╮┃┣┫┃┃┃┃┃┃┃┻┫┃┃┃╰╮┃"
    echo "╰━━┻╯╰┻┻━╯╰╯╰━┻┻━┻━━╯┻━━╯"
    echo -e "${normal}"
    sleep 0.5
    clear
    sleep 0.2
  done
}

# Menu Utama
menu_utama() {
  clear
  echo -e "${hijau}===== GUSxOFC - VERSION 6.0 =====${normal}"
  echo "Nama Owner : GUSxOFC"
  echo "Status     : hargai L"
  echo "-----------------------------------"
  echo "1. Track IP"
  echo "2. Info ID TikTok"
  echo "3. Cek IP Publik HP (Nomor WhatsApp)"
  echo "4. Cek Khodam"
  echo "5. Info Kartu / Nomor"
  echo "6. Fake Hacker (cmatrix)"
  echo "7. GUSOFC"
  echo "0. Keluar"
  echo "-----------------------------------"
  read -p "Pilih menu: " pilih

  case $pilih in
    1)
      read -p "Masukkan IP target: " ip
      curl -s https://ipinfo.io/$ip/json | jq
      ;;
    2)
      read -p "Masukkan username TikTok: " user
      curl -s "https://www.tikwm.com/api/user/info?unique_id=$user" | jq
      ;;
    3)
      read -p "Masukkan nomor WhatsApp (628xxxx): " no
      curl -s "https://ipapi.co/json" | jq
      ;;
    4)
      echo "Sedang cek khodam..."
      sleep 2
      echo "Khodam kamu adalah: [RANDOM]"
      ;;
    5)
      read -p "Masukkan nomor HP (628xxxx): " nomor
      curl -s https://api.zeks.me/api/cek-nomor?apikey=YOURAPIKEY&nohp=$nomor | jq
      ;;
    6)
      cmatrix
      ;;
    7)
      animate_gusofc
      ;;
    0)
      echo "Keluar..."
      exit
      ;;
    *)
      echo "Pilihan tidak valid"
      ;;
  esac
  read -p "Tekan enter untuk kembali ke menu..."
  menu_utama
}

# Jalankan
menu_utama
