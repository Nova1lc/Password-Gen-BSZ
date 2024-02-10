#!/bin/bash

banner='
+++++++++++++++++++++++++++++
+                              +
+   Password Generator to BSZ!   +
+                              +
+++++++++++++++++++++++++++++
'

echo "$banner"


generate_password() {
    length=$1
    all_characters=$(echo {A..Z} {a..z} {0..9} '!@#$%^&*()_+-=[]{}|;:,.<>?')
    password=$(tr -dc "$all_characters" < /dev/urandom | head -c"$length")
    echo "$password"
}

length=12
generate_password $length
