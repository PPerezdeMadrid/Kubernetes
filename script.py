import time
import random

def main():
    print("Iniciando tarea de procesamiento de datos...")
    # Simulamos un proceso de procesamiento de datos que tarda entre 1 y 5 segundos
    tiempo_de_proceso = random.randint(1, 5)
    print(f"Procesando datos... (Estimado: {tiempo_de_proceso} segundos)")
    time.sleep(tiempo_de_proceso)
    print("Tarea de procesamiento de datos completada")

if __name__ == "__main__":
    main()

