# DLight

### Capa Fisica

- WioNode con conectividad Wifi.

### WioServer

- Servidor de administración de equipos y usuarios. Los wio-node (asociados a un usuario) establecen comunicación directamente con este servidor, es el encargado de verificar si un equipo esta o no conectado, administrar los firmware disponibles, actualizar el firmware por medio de FOTA (Firmware Over the Air)

- También dispone de una API para hace las consultas de manera remota (http://seeed-studio.github.io/Wio_Link/)

- DLight dispone de un WioServer propio (http://dlight.io:8080/) en donde se disponibilizan los webservices

- Existe una aplicación [wio-cli](https://github.com/Seeed-Studio/wio-cli) que permite una comunicación directa con el wio-server.

### Aplicación Cliente

- Desarrollada en rails. Es simplemente un cliente de los webServices que despliega el WioServer.

- En base al usuario válido, consulta sus equipos y los despliega. Esta aplicación asume que el firmware de los equipos disponibles ha sido seteado previamente.


###Using GUI libraries

- [JQuery Kontrol.js](https://github.com/aterrien/jQuery-Kontrol)

- [F**king Reinbou](https://github.com/hspencer/reinbou)
