#!/bin/bash

green="\033[0;32m"
blue="\033[1;34m"
cyan="\033[1;36m"
red="\033[1;31m"
nc="\033[0m"

bot_info() {
  echo -e "${blue}Nama owner : GUSxOFC"
  echo -e "Version    : 6.0"
  echo -e "Status     : hargai L${nc}"
}

gusofc_anim() {
  clear
  for i in {1..200}; do
    tput setaf 2
    tput cup $((RANDOM % 20)) $((RANDOM % 60))
    echo "╭━━┳━━┳╮╭┳━━╮"
    tput cup $((RANDOM % 20)) $((RANDOM % 60))
    echo "┃╭╮┃╭━┫┃┃┃━━┫"
    tput cup $((RANDOM % 20)) $((RANDOM % 60))
    echo "┃┣┫┃╰╮┃╰╯┣━━┃"
    tput cup $((RANDOM % 20)) $((RANDOM % 60))
    echo "╰╯╰┻━━┻━━╯"
    tput cup $((RANDOM % 20)) $((RANDOM % 60))
    echo "╭━━┳━━┳━┳┳━━┳━┳━┳┳━━╮"
    tput cup $((RANDOM % 20)) $((RANDOM % 60))
    echo "┃╭━┫╭╮┃┃┃┣╮╭┫┳┫┃┃┃╭━┫"
    tput cup $((RANDOM % 20)) $((RANDOM % 60))
    echo "┃╰╮┃┣┫┃┃┃┃┃┃┃┻┫┃┃┃╰╮┃"
    tput cup $((RANDOM % 20)) $((RANDOM % 60))
    echo "╰━━┻╯╰┻┻━╯╰╯╰━┻┻━┻━━╯┻━━╯"
    sleep 0.03
  done
  clear
}

menu() {
  clear
  echo -e "${green}╔════════════════════════════════════╗"
  echo -e "║           ${blue}SELAMAT DATANG DI${green}           ║"
  echo -e "║          ${blue}SCRIPT TERMUX AGUS.SH${green}          ║"
  echo -e "╚════════════════════════════════════╝${nc}"
  echo ""
  bot_info
  echo ""
  echo -e "${cyan}===================== MENU =====================${nc}"
  echo "1. Track IP"
  echo "2. Info ID TikTok"
  echo "3. Cek IP Public HP (Masukan Nomor WhatsApp)"
  echo "4. Cek Khodam"
  echo "5. Info Kartu / Nomor"
  echo "6. Fake Hacker (cmatrix)"
  echo "7. GusOfc (Animasi Keren)"
  echo "0. Keluar"
  echo -e "${cyan}================================================${nc}"
  echo -n "Pilih fitur: "
}

while true; do
  menu
  read pilih
  case $pilih in
    1)
      read -p "Masukkan IP untuk dilacak: " ip
      echo -e "${green}Mencari info IP $ip...${nc}"
      curl -s http://ip-api.com/json/$ip | jq
      read -p "Tekan Enter untuk kembali..."
      ;;
    2)
      read -p "Masukkan ID TikTok username: " tiktokid
      echo -e "${green}Mengambil info TikTok ID $tiktokid...${nc}"
      curl -s "https://www.tikwm.com/api/user/info?uniqueId=$tiktokid" | jq
      read -p "Tekan Enter untuk kembali..."
      ;;
    3)
      read -p "Masukkan nomor WhatsApp (format internasional, contoh 6281234567890): " wa
      echo -e "${green}Mengecek IP public HP dari nomor WhatsApp $wa...${nc}"
      curl -s "https://ipinfo.io/json" | jq
      read -p "Tekan Enter untuk kembali..."
      ;;
    4)
      echo -e "${green}Mengecek khodam...${nc}"
      sleep 2
      echo -e "${cyan}Khodam terdeteksi: Macan Putih Penjaga Ruhani${nc}"
      read -p "Tekan Enter untuk kembali..."
      ;;
    5)
      read -p "Masukkan nomor telepon (contoh 6281234567890): " no
      echo -e "${green}Mencari info kartu/nomor $no...${nc}"
      curl -s "https://htmlweb.ru/geo/api.php?json&telcod=$no" | jq
      read -p "Tekan Enter untuk kembali..."
      ;;
    6)
      echo -e "${green}Menjalankan fake hacker... Tekan CTRL+C untuk keluar.${nc}"
      cmatrix
      read -p "Tekan Enter untuk kembali..."
      ;;
    7)
      gusofc_anim
      read -p "Tekan Enter untuk kembali..."
      ;;
    0)
      echo -e "${green}Terima kasih sudah menggunakan Agus.sh!${nc}"
      exit
      ;;
    *)
      echo -e "${red}Pilihan tidak valid!${nc}"
      sleep 1
      ;;
  esac
done
