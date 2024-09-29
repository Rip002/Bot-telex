#!/bin/bash

# Fungsi untuk mencetak teks dengan warna RGB
print_rgb() {
    local r=$1
    local g=$2
    local b=$3
    local text="$4"
    # Menggunakan ANSI escape code untuk warna RGB
    printf "\033[38;2;%d;%d;%dm%s\033[0m\n" "$r" "$g" "$b" "$text"
}

# Membersihkan layar terminal
clear

# Banner ASCII yang akan ditampilkan
banner="
@@@@@@@@  @@@@@@@@  @@@@@@@    @@@@@@   @@@  @@@     @@@  @@@  @@@@@@   
@@@@@@@@  @@@@@@@@  @@@@@@@@  @@@@@@@@  @@@  @@@     @@@  @@@  @@@@@@@  
     @@!  @@!       @@!  @@@  @@!  @@@  @@!  !@@     @@!  @@@      @@@  
    !@!   !@!       !@!  @!@  !@!  @!@  !@!  @!!     !@!  @!@      @!@  
   @!!    @!!!:!    @!@!!@!   @!@  !@!   !@@!@!      @!@  !@!  @!@!!@   
  !!!     !!!!!:    !!@!@!    !@!  !!!    @!!!       !@!  !!!  !!@!@!   
 !!:      !!:       !!: :!!   !!:  !!!   !: :!!      :!:  !!:      !!:  
:!:       :!:       :!:  !:!  :!:  !:!  :!:  !:!      ::!!:!       :!:  
 :: ::::   :: ::::  ::   :::  ::::: ::   ::  :::       ::::    :: ::::  
: :: : :  : :: ::    :   : :   : :  :    :   ::         :       : : :   
"

# Warna RGB yang diinginkan untuk banner
# Anda dapat mengubah nilai ini sesuai keinginan
R=0       # Merah (0-255)
G=255     # Hijau (0-255)
B=0       # Biru (0-255)

# Cetak banner dengan warna RGB yang ditentukan
print_rgb $R $G $B "$banner"

# Menampilkan pesan menjalankan npm start dengan warna hijau terang
echo -e "\033[38;2;0;255;0mMenjalankan npm start...\033[0m"

# Menjalankan npm start
npm start