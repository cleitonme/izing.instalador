#!/bin/bash

software_update() {
  
  whatsappweb_update
}

2instancia_instalar() {
  system_unzip_izing
  criar_banco_dados
  backend_set_env
  backend_node_dependencies
  backend_node_build
  backend_db_migrate
  backend_db_seed
  backend_start_pm2
  backend_nginx_setup
  frontend_set_env
  frontend_node_dependencies
  frontend_node_build
  frontend_serverjs
  frontend_start_pm2
  frontend_nginx_setup
  system_nginx_restart
  system_certbot_setup
  system_success
}

izing_atualizar() {
  git_update
  backend_node_dependencies
  backend_node_build
  backend_db_migrate
  backend_db_seed
  restart_pm2
  frontend_node_dependencies
  frontend_node_build
}



inquiry_options() {
  
  print_banner
  printf "${WHITE} 💻 O que você precisa fazer?${GRAY_LIGHT}"
  printf "\n\n"
  printf "   [1] Instalar\n"
  printf "   [2] Atualizar Conector WWebJS whatsapp.js\n"
  printf "   [3] Instalar 2 instancia\n"
  printf "   [4] Atualizar Izing\n"
  printf "\n"
  read -p "> " option

  case "${option}" in
    1) get_urls ;;

    2) 
      software_update
      exit
      ;;
	  
    3) 2instancia_instalar
      exit
      ;;
	  
	4) izing_atualizar
      exit
      ;;

    *) exit ;;
  esac
}

