#!/bin/bash
### 202201301720 --> added blue colour to the menu
### 202201301728 --> added newline after the menu
###              --> added red to access denied

bash new_password_check.sh
con=$?

while true; do
    if [ "$con" = 0 ]; then
        echo -e "\033[34m(1) Folder Creator
(2) Copy folder
(3) Set Password
(4) Calculator
(5) Create week folders
(6) Check file names
(7) Download a file
(8) Exit\n\e[0m" 
    
        read selection
        
        case "$selection" in

            1)
            bash foldermaker.sh
            ;;
            2)
            bash foldercopier.sh
            ;;
            3)
            bash set_password_sterilised.sh
            ;;
            4)
            bash calculator.sh
            ;;
            5)
            bash megafolder.sh
            ;;          
            6)
            bash file_looper.sh
            ;;
            7)
            bash internet_downloader.sh
            ;;
            8)
            break
            ;;
            *)
            echo "selection does not exist"
            ;;
        esac
        
    else 
        echo -e "\n\033[31mAccess denied\e[0m\n"; break

    fi
done
