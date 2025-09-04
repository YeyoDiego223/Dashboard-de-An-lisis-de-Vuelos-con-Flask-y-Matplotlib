# Dashboard de Análisis de Vuelos con Flask y Matplotlib

Este proyecto es una aplicación web desarrollada con Flask que se conecta a una base de datos MySQL para visualizar datos de un aeropuerto. La aplicación genera y muestra de forma dinámica diversas visualizaciones y análisis, como la distribución de aerolíneas, vuelos por hora y tablas de datos complejas.

## 📊 Visualizaciones Incluidas
* Distribución de aerolíneas por país (Gráfica de Pastel).
* Número de vuelos por hora en un día específico (Gráfica de Barras).
* Tabla de empleados de una aerolínea específica.
* Tabla de empleados con salarios altos.
* Antigüedad de las aerolíneas (Gráfica de Barras Horizontales).
* Análisis de rutas por aerolínea y modelo de avión.

## 🛠️ Tecnologías Utilizadas
* **Backend:** Python, Flask
* **Análisis de Datos:** Pandas
* **Visualización:** Matplotlib
* **Base de Datos:** MySQL

## 🚀 Cómo Ejecutar el Proyecto Localmente

### Prerrequisitos
* Python 3.8 o superior.
* Un servidor de base de datos MySQL instalado y corriendo.
* El archivo `aeropuerto.sql` (incluido en este repositorio) para crear y poblar la base de datos.

### Pasos de Instalación

1.  **Clonar el repositorio:**
    ```bash
    git clone https://github.com/YeyoDiego223/Dashboard-de-An-lisis-de-Vuelos-con-Flask-y-Matplotlib
    ```

2.  **Preparar la Base de Datos:**
    * Asegúrate de que tu servicio de MySQL esté corriendo.
    * Desde la terminal de MySQL, crea la base de datos:
        ```sql
        CREATE DATABASE aeropuerto CHARACTER SET latin1 COLLATE latin1_swedish_ci;
        ```
    * Importa la estructura y los datos usando el script SQL proporcionado:
        ```bash
        mysql -u root -p aeropuerto < aeropuerto.sql
        ```

3.  **Configurar el Entorno Virtual (Recomendado):**
    ```bash
    # Crear el entorno
    python -m venv venv

    # Activar el entorno
    # En Windows:
    .\venv\Scripts\activate
    # En macOS/Linux:
    source venv/bin/activate
    ```

4.  **Instalar las Dependencias de Python:**
    ```bash
    pip install -r requirements.txt
    ```

5.  **Revisar la Conexión a la Base de Datos:**
    * Abre el archivo principal de Python (`app.py` o como lo hayas llamado).
    * Verifica que los datos de conexión en la función `ejecutar_consulta` (`host`, `user`, `password`) coincidan con tu configuración local de MySQL.

6.  **Ejecutar la Aplicación:**
    ```bash
    flask run
    ```

7.  **Ver el Dashboard:**
    * Abre tu navegador web y ve a la siguiente dirección:
        `http://127.0.0.1:5000`

---
