#!/bin/bash
echo "=== CI/CD SIMULADO INICIADO ==="
echo "Clonando repositorio"
git clone https://github.com/gabiuxo/soluciones-devops.git ci-pipeline
cd ci-pipeline
echo "Instalando dependencias"
pip install -r app/requirements.txt
echo "Ejecutando aplicación Flask"
python3 app/app.py
chmod +x scripts/run_ci_cd.sh

