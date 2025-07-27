# MiPrimerNFT

Este es mi primer proyecto de NFT (Token No Fungible) desarrollado en Solidity.

## Descripción

Este proyecto contiene un smart contract de NFT que implementa el estándar ERC-721 utilizando la librería OpenZeppelin. El contrato permite:

- Crear NFTs únicos
- Mintear nuevos tokens
- Gestionar la propiedad de los NFTs
- Almacenar metadatos de los tokens

## Características

- **Estándar ERC-721**: Implementa el estándar de tokens no fungibles
- **Control de acceso**: Solo el propietario puede mintear nuevos NFTs
- **Metadatos IPFS**: Los tokens incluyen metadatos almacenados en IPFS
- **Contador de tokens**: Mantiene un seguimiento del número total de tokens creados

## Tecnologías utilizadas

- Solidity ^0.8.0
- OpenZeppelin Contracts
- IPFS para almacenamiento de metadatos

## Instalación

Para usar este proyecto, necesitas instalar las dependencias de OpenZeppelin:

```bash
npm install @openzeppelin/contracts
```

## Uso

El contrato `MyNFT` permite al propietario mintear nuevos NFTs para direcciones específicas. Cada token tiene metadatos únicos almacenados en IPFS.