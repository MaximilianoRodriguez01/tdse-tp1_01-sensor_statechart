## StateChart de un Sensor

- Se necesitan al menos 4 estados para modelar el comportamiento de un botón. Cuando el botón esta en UP (3.3V), no se encuentra presionado. Cuando se presiona el botón, este se encuentra en DOWN (0V). Para evitar el ruido de las placas metálicas del botón al chocar cuando se presiona, se crea un estado llamado FALLING en el cual se esperan 50 ms para confirmar que el botón se encuentra presionado. Lo mismo para el ruido cuando se deja de presionar el botón, con el estado INCREASING.

- Tanto en FALLING como en INCREASING se crea la variable llamada TICK la cual será utilizada como temporizador.

- Los posibles eventos son el botón presionado, o el botón no presionado.

- Al presionarse, se le envía un raise al sistema accionando todos los eventos posibles del sistema, haciendo que este mismo se encargue de decidir como usarlo.

### EVENTOS:

- EV_BTN_01_PRESSED: El botón es presionado.
- EV_BTN_01_NOT_PRESSED: El botón no está presionado.

### ACCIONES:

- tick = DEL_BTN_01_MAX: Establece el temporizador en su valor máximo.
- tick--: Decrementa el valor del temporizador.
- raise: Trigger de los eventos del sistema.
