# SAR ADC
Inicialización el proyecto en la carpeta respectiva del proyecto SAR ADC
```bash
mkdir xschem mag netgen
cd xschem/
ln -s /home/laura/Documents/ic_design/OpenPDK/open_pdks/sky130/sky130A/libs.tech/xschem/xschemrc
ln -s /home/laura/Documents/ic_design/OpenPDK/open_pdks/sky130/sky130A/libs.tech/ngspice/spinit spiceinit
cd ../mag/
ln -s /home/laura/Documents/ic_design/OpenPDK/open_pdks/sky130/sky130A/libs.tech/magic/sky130A.magicrc .magicrc
cd ../netgen/
ln -s /home/laura/Documents/ic_design/OpenPDK/open_pdks/sky130/sky130A/libs.tech/netgen/setup.tcl setup.tcl
```

Abrir xschem nos ubicamos en la carpeta xschem y ejecutamos
```bash
xschem
```

Abrir magic nos ubicamos en la carpeta mag y ejecutamos
```bash
magic -d XR
```

## Contenido
1. [Extracción de Capacitancias](#1-extracción-de-capacitancias)

## 1. Extracción de Capacitancias
