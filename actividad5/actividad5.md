Joseph Jeferson Marroquin Monroy

Codigo
```c
#include <stdio.h>
#include <pthread.h>
#include <unistd.h>

void *thread_function(void *arg) {
    pthread_exit(NULL);
}

int main() {
    pid_t pid;
    pthread_t tid;

    pid = fork();

    if (pid == 0) {
        fork(); 
        pthread_create(&tid, NULL, thread_function, NULL); 
        pthread_join(tid, NULL); 
    } else if (pid > 0) {
        fork(); 
    }
    sleep(2);
    return 0;
}
```


a) ¿Cuántos procesos únicos son creados?
- Se crean un total de 8 procesos únicos.

b) ¿Cuántos hilos únicos son creados?
- Se crea un total de 2 hilos únicos (uno en cada proceso hijo).
