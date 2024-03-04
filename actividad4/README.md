Ejecutar en dos terminales:
mkfifo /tmp/pipe1
mkfifo /tmp/pipe2

script1 persona1.sh

#!/bin/bash

while true; do
    read message
    echo "Participant 1: $message" > /tmp/pipe2
done

script2 persona2.sh

#!/bin/bash

while true; do
    read message
    echo "Participant 2: $message" > /tmp/pipe1
done


Ejecutar en terminal
bash persona1.sh
bash persona2.sh
