# IMPORTAR LIBRERÍAS
import matplotlib
matplotlib.use('Agg') 
from flask import Flask, render_template
import pandas as pd
import mysql.connector
import matplotlib.pyplot as plt
import io
import base64

# Inicializa la aplicación Flask
app = Flask(__name__)

# --- FUNCIÓN REUTILIZABLE PARA LA BASE DE DATOS ---
def ejecutar_consulta(query):
    """
    Se conecta a la base de datos, ejecuta una consulta y devuelve los resultados.
    Esta es la única función que necesitarás para todas tus consultas.
    """
    conexion = None
    try:
        conexion = mysql.connector.connect(
            host="localhost", 
            user="root", 
            password="",
            database="aeropuerto",
            charset='latin1' 
        )
        df = pd.read_sql_query(query, conexion)
        return df
    except mysql.connector.Error as e:
        print(f"Error en la base de datos: {e}")
        return pd.DataFrame() 
    finally:
        if conexion and conexion.is_connected():
            conexion.close()

# --- PÁGINA DE INICIO / DASHBOARD ---
@app.route('/')
def index():
    """Muestra el menú principal con enlaces a todas las visualizaciones."""
    return render_template('index.html')

# --- VISUALIZACIÓN 1: GRÁFICA DE PASTEL POR PAÍS ---
@app.route('/paises')
def grafica_paises():
    query = """
    SELECT pais_origen FROM aerolineas 
    WHERE pais_origen IN ('Estados Unidos', 'Japón', 'Hong Kong', 'Qatar', 'Australia');
    """
    df = ejecutar_consulta(query)
    if df.empty:
        return "<h1>No se encontraron datos para la gráfica de países.</h1>"

    dist_paises = df['pais_origen'].value_counts()
    
    fig, ax = plt.subplots(figsize=(10, 7))
    dist_paises.plot(kind='pie', ax=ax, autopct='%1.1f%%', startangle=90)
    ax.set_title('Distribución de Aerolíneas por País de Origen')
    ax.set_ylabel('') 
    
    buf = io.BytesIO()
    plt.savefig(buf, format='png')
    plt.close(fig)
    buf.seek(0)
    image_base64 = base64.b64encode(buf.getvalue()).decode('utf-8')
    
    return render_template('grafica.html', image_base64=image_base64, titulo="Distribución por País")

# --- VISUALIZACIÓN 2: GRÁFICA DE BARRAS DE VUELOS PROGRAMADOS ---
@app.route('/programados')
def grafica_programados():
    query = """
    SELECT hora_salida FROM vuelos WHERE DATE(hora_salida) = '2023-07-01';
    """
    df = ejecutar_consulta(query)
    if df.empty:
        return "<h1>No se encontraron datos de vuelos programados.</h1>"

    df['hora_salida'] = pd.to_datetime(df['hora_salida'])
    vuelos_por_hora = df['hora_salida'].dt.hour.value_counts().sort_index()

    fig, ax = plt.subplots(figsize=(12, 6))
    ax.bar(vuelos_por_hora.index, vuelos_por_hora.values, color='cornflowerblue')
    ax.set_title('Número de Vuelos por Hora de Salida (01-Jul-2023)')
    ax.set_xlabel('Hora del Día (Formato 24h)') 
    ax.set_ylabel('Cantidad de Vuelos')
    ax.set_xticks(range(0, 24))

    buf = io.BytesIO()
    plt.savefig(buf, format='png')
    plt.close(fig)
    buf.seek(0)
    image_base64 = base64.b64encode(buf.getvalue()).decode('utf-8')

    return render_template('grafica.html', image_base64=image_base64, titulo="Vuelos por Hora")

# --- VISUALIZACIÓN 3: TABLA DE EMPLEADOS DE DELTA ---
@app.route('/empleados-delta')
def tabla_empleados_delta():
    query = """
    SELECT e.nombre, e.apellido, e.puesto, a.nombre as aerolinea
    FROM empleados e
    JOIN aerolineas a ON e.id_aerolinea = a.id_aerolinea
    WHERE e.id_aerolinea = 2;
    """
    df = ejecutar_consulta(query)
    if df.empty:
        return "<h1>No se encontraron empleados para esta aerolínea.</h1>"
    
    tabla_html = df.to_html(classes='table table-striped', index=False, justify='center')
    return render_template('tabla.html', tabla_html=tabla_html, titulo="Empleados de Delta Air Lines")

# --- VISUALIZACIÓN 4: TABLA DE SALARIOS ALTOS ---
@app.route('/salarios-altos')
def tabla_salarios_altos():
    query = "SELECT nombre, apellido, puesto, salario FROM empleados WHERE salario >= 8200;"
    df = ejecutar_consulta(query)
    if df.empty:
        return "<h1>No se encontraron empleados con ese rango de salario.</h1>"
        
    tabla_html = df.to_html(classes='table table-striped', index=False, justify='center')
    return render_template('tabla.html', tabla_html=tabla_html, titulo="Empleados con Salario Superior a $8,200")

# --- VISUALIZACIÓN 5: GRÁFICA DE BARRAS DE ANTIGÜEDAD DE AEROLÍNEAS ---
@app.route('/antiguedad-aerolineas')
def grafica_antiguedad():
    query = """
    SELECT nombre, YEAR(CURDATE()) - YEAR(fecha_fundacion) as Anos_Operando
    FROM aerolineas ORDER BY Anos_Operando DESC;
    """
    df = ejecutar_consulta(query)
    if df.empty:
        return "<h1>No se encontraron datos de antigüedad de aerolíneas.</h1>"

    fig, ax = plt.subplots(figsize=(12, 8))
    ax.barh(df['nombre'], df['Anos_Operando'], color='indigo')
    ax.set_title('Antigüedad de las Aerolíneas')
    ax.set_xlabel('Años Operando')
    ax.invert_yaxis()
    plt.tight_layout()

    buf = io.BytesIO()
    plt.savefig(buf, format='png')
    plt.close(fig)
    buf.seek(0)
    image_base64 = base64.b64encode(buf.getvalue()).decode('utf-8')

    return render_template('grafica.html', image_base64=image_base64, titulo="Antigüedad de Aerolíneas")

# --- VISUALIZACIÓN 6: TABLA DE ANÁLISIS DE RUTAS ---
@app.route('/analisis-rutas')
def tabla_analisis_rutas():
    query = """
    SELECT ae.nombre as Aerolinea, av.modelo as Modelo_de_Avion, 
           v.origen as Origen, v.destino as Destino, v.hora_llegada
    FROM vuelos v
    JOIN aerolineas ae ON v.id_aerolinea = ae.id_aerolinea 
    JOIN aviones av ON v.id_avion = av.id_avion
    LIMIT 50;
    """
    df = ejecutar_consulta(query)
    if df.empty:
        return "<h1>No se encontraron datos para el análisis de rutas.</h1>"
        
    tabla_html = df.to_html(classes='table table-striped', index=False, justify='center')
    return render_template('tabla.html', tabla_html=tabla_html, titulo="Análisis de Rutas por Aerolínea y Avión")

# --- BLOQUE PARA EJECUTAR LA APLICACIÓN ---
if __name__ == '__main__':
    app.run(debug=True)