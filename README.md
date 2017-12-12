# dockerfiles
:point_down:
#### Proyecto de dockerización de pequeña y mediana empresa
----

#### TODO-LIST  


- Revisar permisos de FTP y SFTP.
  - SFTP solo permitir usuario root/syadmin  


- Editar la web y añadir un botón para testear la base de datos

- Usar crontab para hacer las copias remotas al servidor de backups

- Servidor DNS

---

#### ESTRUCTURA

| Red Principal |
|---|
| 172.21.0.0/24  |


| Contenedor  | Nombre Carpeta | Contenido  | IP  | Base |
|---|---|---|---|---|
| Contenedor1  | ftplightwebssh  |  Servidor FTP. Servidor SSH. Servidor Web con PHP. Cliente RSync. | 172.21.0.10/24  | [debian](https://store.docker.com/images/debian) |
| Contenedor2  | basededatos | Base de datos. Servidor SSH. Cliente RSync  | 172.21.0.20/24  | [debian](https://store.docker.com/images/debian)
| Contenedor3  | backups  | Servidor Backup Duplicati + RSync  |  172.21.0.30/24 | [linuxserver/duplicati](https://store.docker.com/community/images/linuxserver/duplicati) |

#### USUARIOS

| Usuario  | Contraseña  | Grupo  |
|---|---|---|
| root  | 123321  | root  |
| sysadmin  | masterfucker123  | sysadmin  |
| manuel  | 123321  | pf_users  |
| paco  | 123321  | pf_users  |
| juanito  | 123321  | pf_users  |
| web_manuel  | web123321  | webmasters  |
| web_paco  | web123321  | webmasters  |
| postgres | 123 | postgres |

---

#### SOFTWARE USADO

| Servicio  | Software  |
|---|---|
| FTP  | proftpd  |
| SSH  | openssh a.k.a _ssh_ |
| Web  | lighttpd  |
| PHP | php7.0  |
| Backup Remoto | Rsync (client and server) |
| Base de datos | postgresql  |
| Backup Cloud | Duplicati   |

---

# USO

#### USO DE LOS SCRIPTS
En principio, los scripts cuentan con los permisos suficientes para ser ejecutados, bastaría con ejecutar `./script.sh` en la carpeta `dockerfiles` para que cree toda la estructura.

###### EXPLICACIÓN SCRIPTS

- `./ronyosa.sh` - Crea toda la estructura de la empresa
- `./remove_ronyosa_all.sh` - Borra toda la estructura creada
- `./remove_ronyosa_rm.sh` - Borra los contenedores, pero deja las imágenes

#### USO DE LOS CONTENEDORES
Para acceder a los contenedores en modo interactivo es necesario ejecutar :
`docker exec -it nombrecontenedor bash`, así entraremos al bash y podremos interactuar con el contenedor.

###### NOMBRES CONTENEDORES

| Contenedor  |  Nombre  |
|---|---|
| Contenedor1  | ronyosa_web  |
| Contenedor2  | ronyosa_bd  |
| Contenedor3  | ronyosa_backup  |
