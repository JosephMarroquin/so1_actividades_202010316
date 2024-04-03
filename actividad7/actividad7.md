Joseph Jeferson Marroquin Monroy

El Completely Fair Scheduler (CFS) es el planificador de procesos por defecto en las versiones más recientes del kernel de Linux desde la versión 2.6.23. Aquí tienes un resumen de sus características principales y su funcionamiento:

### Características Principales:
- **Equidad**: Como su nombre indica, el CFS busca proporcionar un tiempo de CPU equitativo a cada proceso.
- **Modelado de CPU ideal**: Intenta simular una CPU ideal que puede ejecutar todas las tareas en paralelo con la misma velocidad.
- **Runtime virtual**: Utiliza el concepto de "runtime virtual" para programar tareas, lo que permite medir el tiempo de CPU que un proceso debería haber recibido.
- **Estructura rbtree**: En lugar de las estructuras de datos antiguas, CFS utiliza un rbtree ordenado por tiempo para construir una línea de tiempo de la ejecución futura de las tareas.

### Funcionamiento:
- **Selección de tareas**: CFS selecciona para ejecución la tarea con el valor más pequeño de runtime virtual, es decir, la tarea que menos ha ejecutado hasta el momento.
- **Distribución del tiempo de CPU**: Trata de dividir el tiempo de CPU entre las tareas ejecutables de manera lo más cercana posible a una "hardware de multitarea ideal".
- **Carga de trabajo**: Mantiene un valor `min_vruntime` que rastrea el runtime virtual más pequeño entre todas las tareas en la cola de ejecución y usa este valor para realizar un seguimiento del trabajo total realizado por el sistema.

