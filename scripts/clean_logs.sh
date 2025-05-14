#!/bin/bash
# Elimina logs mayores a 7 días
find /var/log -type f -mtime +7 -exec rm -f {} \;
echo "Limpieza completada: $(date)" >> /home/ec2-user/cron_clean_logs.log

