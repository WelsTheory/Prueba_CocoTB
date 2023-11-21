## Cómo correr la simulación y los ensayos
- Instalar GHDL.

- Crear entorno virtual de python:

    python3 -m venv env

- Activar entorno virtual:

  source env/bin/activate

- Instalar cocotb y pytest:

    pip install pytest cocotb

- Para correr los ensayos, dentro de la carpeta tests ejecutar `make`.

- Dentro de la carpeta `tests/waveforms` se encuentran los archivos `.vhd` con las formas de onda generadas, que pueden ser visualizadas usando GTKWave.
    gtkwave cont_dig.vcd
