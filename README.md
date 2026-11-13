# Resolver SJF

Programa de consola en Java que resuelve ejercicios de planificación de procesos con el algoritmo **SJF (Shortest Job First)** en sus dos versiones:

- **SJF no apropiativo:** cuando un proceso empieza, corre completo hasta terminar.
- **SJF apropiativo (SRTF):** si llega un proceso con menos tiempo restante, le quita la CPU al que está corriendo.

## Archivos

| Archivo | Para qué sirve |
|---|---|
| `SJF.java` | Código fuente |
| `SJF.jar` | Programa listo para usar |
| `Abrir_SJF.bat` | Abre el programa con doble clic (Windows) |
| `LEEME.txt` | Instrucciones en texto |

## Requisitos

- Windows
- Java (sirve el que trae Eclipse; `Abrir_SJF.bat` lo busca solo)

## Cómo usarlo

1. Descarga `SJF.jar` y `Abrir_SJF.bat` en la misma carpeta.
2. Doble clic en `Abrir_SJF.bat`.
3. Elige una opción del menú:
   - `1` SJF no apropiativo
   - `2` SJF apropiativo (SRTF)
   - `3` Salir
4. Escribe cuántos procesos hay y, para cada uno, su tiempo de llegada y su ráfaga.

## Qué muestra

- Diagrama de Gantt en una línea (`--` significa CPU libre).
- Tabla con llegada, ráfaga, fin, retorno y espera de cada proceso.
- Tiempo promedio de retorno y de espera.

## Fórmulas

```
Retorno = Fin - Llegada
Espera  = Retorno - Ráfaga
```

## Ejemplo

| Proceso | Llegada | Ráfaga |
|---|---|---|
| P1 | 0 | 7 |
| P2 | 2 | 4 |
| P3 | 4 | 1 |
| P4 | 5 | 4 |

**No apropiativo:** `0 | P1 7 | P3 8 | P2 12 | P4 16` → espera promedio 4.0, retorno promedio 8.0

**Apropiativo:** `0 | P1 2 | P2 4 | P3 5 | P2 7 | P4 11 | P1 16` → espera promedio 3.0, retorno promedio 7.0
