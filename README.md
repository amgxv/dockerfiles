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

- Añadir scripts a GitHub

---

#### ESTRUCTURA

| Red Principal |
|---|
| 172.21.0.0/24 |


| Contenedor  | Nombre Carpeta | Contenido  | IP  | Base |
|---|---|---|---|
| Contenedor1  | ftplightwebssh  |  Servidor FTP. Servidor SSH. Servidor Web con PHP. Cliente RSync. | 172.21.0.10/24  | [debian](https://store.docker.com/images/debian) |
| Contenedor2  | basededatos | Base de datos. Servidor SSH. Cliente RSync  | 172.21.0.20/24  | [debian](https://store.docker.com/images/debian) |
| Contenedor3  | backups  | Servidor Backup Duplicati + RSync  |  172.21.0.30/24 | [linuxserver/duplicati](https://store.docker.com/community/images/linuxserver/duplicati) |

#### Usuarios

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
