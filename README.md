# Pagina Web Cluster

## Visão Geral
Este projeto tem como objetivo configurar e implementar uma página web em diversos servidores utilizando Ansible, garantindo alta disponibilidade e balanceamento de carga através da tecnologia HAProxy. A infraestrutura resultante proporcionará uma experiência robusta e escalável, assegurando que a página web permaneça acessível e responsiva mesmo em caso de falhas de servidor.


## Objetivos
**Automatizar a Configuração:** Utilizar Ansible para automatizar a configuração e a implantação da página web nos servidores, reduzindo o tempo e erros manuais.

**Alta Disponibilidade:** Implementar um cluster de servidores web para garantir que a página esteja sempre disponível, mesmo em caso de falha de um ou mais servidores.

**Balanceamento de Carga:** Configurar o HAProxy para distribuir o tráfego de forma eficiente entre os servidores, melhorando o desempenho e a resiliência do sistema.


## Tecnologias Utilizadas
**Ansible:** Ferramenta de automação para provisionamento e configuração dos servidores.

**HAProxy:** Software de balanceamento de carga para distribuir o tráfego de rede entre os servidores web.

**Servidores Web:** Será utilizado nesse projeto, Nginx.

**Virtualização:** Sera utilizado o Vagrant para para provisionamento de VM's juntamente com VirtualBox.


## Modo de usar

**Implementação:** ansible-playbook -i hosts start.yml.

**Upgrade:** ansible-playbook -i hosts upgrade.yml.


## Variaveis.

**/root/paginaweb_cluster/roles/basicos/vars/main.yml**

***servicos*** serviços basicos a serem instalados.

***usuario*** Usuarios a serem criados nos servidores.

***senha*** senha padrao para os usuarios.

**/root/paginaweb_cluster/roles/manager/vars/main.yml**

***haproxy_stats_user e haproxy_stats_password*** usuario e senha para pagina de monitoramento

**/root/paginaweb_cluster/roles/nginx/vars/main.yml**

***server_name*** url do site.

***index*** nome da pagina index.

***name_zip*** nome do arquivo zipado que contem os arquivos necessarios da pagina web.

**/root/paginaweb_cluster/roles/upgarde/vars/main.yml**

***name_zip*** nome do arquivo zipado que contem os arquivos atualizados da pagina web para upgrade da mesma.
