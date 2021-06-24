## My CryptoWallet


## Visión

My CryptoWallet será una aplicación móvil que permite a los usuarios realizar  transacciones (almacenar, enviar, recibir y rastrear) con monedas digitales,permitiendo el movimiento de las criptomonedas hacia y desde las carteras controlado por claves públicas y privadas.

## Arquitectura
**Driven Domain Desing**

![image](https://user-images.githubusercontent.com/65565908/123196751-1b0a0800-d470-11eb-981b-f1283bef0052.png)

## Layers

## Presentación

Esta capa es todos las pantallas, las interfaces de usuario Su lógica se limita a crear un "atractivo visual" para el usuario

## Aplicación

Esta capa está alejada de todas las interfaces externas de una aplicación,la capa de aplicación tiene un solo trabajo: orquestar todas las demás capas. No importa dónde se originen los datos (entrada del usuario, Firestore en tiempo real  Stream, ubicación del dispositivo), su  primer destino será la capa de aplicación.

## Dominio

La capa de dominio es el  centro prístino  de una aplicación. Es completamente autónomo y  no  depende de ninguna otra capa. Aquí es donde vive su lógica empresarial incluye:
- Transformar datos
- Validar los datos y mantenerlos válidos
- Realización de una lógica empresarial compleja

## Infraestructura 

Al igual que la  presentación , esta capa también se encuentra en el límite de nuestra aplicación. Se ocupa de las API, las bibliotecas de Firebase, las bases de datos y los sensores de dispositivos.

##Modelo C4

Diagrama Contexto 

![image](https://github.com/marcmacias96/crypto-wallet/blob/master/Modelo%20C4%20myCryptoWallet-Contenedor.png)



