#!/bin/bash

# Перевірка наявності необхідних аргументів
if [ "$#" -ne 3 ]; then
  echo "Потрібно вказати каталог, оригінальне розширення та нове розширення."
  exit 1
fi

# Зчитування аргументів
directory="$1"
original_ext="$2"
new_ext="$3"

# Перевірка, чи каталог існує
if [ ! -d "$directory" ]; then
  echo "Каталог '$directory' не існує."
  exit 1
fi

# Перейменування файлів і виведення повідомлень
for file in "$directory"/*."$original_ext"; do
  if [ -e "$file" ]; then
    new_file="${file%.$original_ext}.$new_ext"
    echo "Переіменовую $file на $new_file"
    mv "$file" "$new_file"  # Фактична команда перейменування
  fi
done

