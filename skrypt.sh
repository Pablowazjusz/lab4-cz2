#!/bin/bash

if [[ "$1" == "--init" ]]; then
    git clone https://github.com/Pablowazjusz/lab4-cz2.git && export PATH=$PATH:$(pwd)
    echo "Repozytorium zostało sklonowane, a ścieżka została dodana do zmiennej środowiskowej PATH."
elif [[ "$1" == "--date" || "$1" == "-d" ]]; then
    echo "$(date)"
elif [[ "$1" == "--logs" || "$1" == "-l" ]]; then
    if [[ -z "$2" ]]; then
        for ((i=1; i<=100; i++)); do
            echo "Nazwa pliku: log$i/log$i.txt"
            echo "Nazwa skryptu: skrypt.sh"
            echo "Data: $(date)"
            echo
            echo "Treść pliku log$i/log$i.txt" > "log$i/log$i.txt"
        done
    else
        count=$2
        for ((i=1; i<=count; i++)); do
            echo "Nazwa pliku: log$i/log$i.txt"
            echo "Nazwa skryptu: skrypt.sh"
            echo "Data: $(date)"
            echo
            echo "Treść pliku log$i/log$i.txt" > "log$i/log$i.txt"
        done
    fi
elif [[ "$1" == "--error" || "$1" == "-e" ]]; then
    if [[ -z "$2" ]]; then
        for ((i=1; i<=100; i++)); do
            echo "Nazwa pliku: error$i/error$i.txt"
            echo "Nazwa skryptu: skrypt.sh"
            echo "Data: $(date)"
            echo
            echo "Treść pliku error$i/error$i.txt" > "error$i/error$i.txt"
        done
    else
        count=$2
        for ((i=1; i<=count; i++)); do
            echo "Nazwa pliku: error$i/error$i.txt"
            echo "Nazwa skryptu: skrypt.sh"
            echo "Data: $(date)"
            echo
            echo "Treść pliku error$i/error$i.txt" > "error$i/error$i.txt"
        done
    fi
elif [[ "$1" == "--help" || "$1" == "-h" ]]; then
    echo "Dostępne opcje:"
    echo "--init : Klonuje całe repozytorium do katalogu, w którym został uruchomiony, i ustawia ścieżkę w zmiennej środowiskowej PATH."
    echo "--date, -d : Wyświetla dzisiejszą datę."
    echo "--logs, -l : Tworzy pliki logx/logx.txt (x - numer pliku od 1 do 100) i wypełnia je informacjami."
    echo "--logs <liczba>, -l <liczba> : Tworzy określoną liczbę plików logx/logx.txt (x - numer pliku od 1 do <liczba>) i wypełnia je informacjami."
    echo "--error, -e : Tworzy pliki errorx/errorx.txt (x - numer pliku od 1 do 100) i wypełnia je informacjami."
fi

