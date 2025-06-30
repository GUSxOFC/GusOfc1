# -*- coding: utf-8 -*-

# Doxxer-Toolkit by GusOfcXD
# https://twitter.com/Euronymou51
# Discord: Euronymou5#3155
# LICENSE: MPL-2.0 license

import os
import time
import subprocess
import random
import platform
import pyshorteners
import requests
import pyqrcode
import png
from faker import Faker
from modules import numeros, phoneinf
import webbrowser

Version = "2.6"

class Colores:
  red="\033[31;1m"
  verde="\033[92m"
  azul="\033[94m"
  magenta="\033[36m"
  amarillo="\033[33m"


os.system("killall php")
os.system("clear")
logo = Colores.red + '''
·▄▄▄▄        ▐▄• ▄ ▐▄• ▄ ▄▄▄ .▄▄▄      ▄▄▄▄▄            ▄▄▌  ▄ •▄ ▪  ▄▄▄▄▄
██▪ ██ ▪      █▌█▌▪ █▌█▌▪▀▄.▀·▀▄ █·    •██  ▪     ▪     ██•  █▌▄▌▪██ •██
▐█· ▐█▌ ▄█▀▄  ·██·  ·██· ▐▀▀▪▄▐▀▀▄      ▐█.▪ ▄█▀▄  ▄█▀▄ ██▪  ▐▀▀▄·▐█· ▐█.▪
██. ██ ▐█▌.▐▌▪▐█·█▌▪▐█·█▌▐█▄▄▌▐█•█▌     ▐█▌·▐█▌.▐▌▐█▌.▐▌▐█▌▐▌▐█.█▌▐█▌ ▐█▌·
▀▀▀▀▀•  ▀█▄▀▪•▀▀ ▀▀•▀▀ ▀▀ ▀▀▀ .▀  ▀     ▀▀▀  ▀█▄▀▪ ▀█▄▀▪.▀▀▀ ·▀  ▀▀▀▀ ▀▀▀

                    By:  GusOfcXD
                    _______________

                     Version: v2.6
                     _____________
'''
