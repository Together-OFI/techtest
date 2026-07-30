# Práctica Técnica: Ingeniero de Datos & Soluciones de IA


---


## Bloque 2: Code Review Challenge (12 minutos)

### Escenario A: Optimización SQL & Modelado (6 minutos)

Tenemos una tabla `user_events` con cientos de millones de filas, la cual se encuentra particionada por `event_date`. La siguiente consulta calcula los usuarios activos diarios (DAU) por país, pero actualmente tarda más de 10 minutos en ejecutarse:

```sql
SELECT 
    country, 
    COUNT(DISTINCT user_id) AS dau
FROM user_events
WHERE UPPER(event_type) = 'LOGIN' 
  AND DATE(created_at) >= '2026-01-01'
GROUP BY country;
```

**Preguntas de discusión:**
1. ¿Qué problemas de rendimiento o antipatrones detectas en esta consulta?
2. ¿Qué modificaciones aplicarías a nivel de consulta y/o estructura de tabla para optimizar su tiempo de ejecución?

---

### Escenario B: Resiliencia en Python & Procesamiento ETL (6 minutos)

Imagina que estás desarrollando un pipeline en Python para ingerir registros de eventos en formato JSON desde una API externa hacia un Data Lake / Data Warehouse. 

Durante la ejecución en producción ocurren las siguientes situaciones:
- La API presenta caídas intermitentes o responde con errores `429 Too Many Requests`.
- Algunos registros presentan cambios inesperados en la estructura (schema drift) o vienen corruptos.

**Preguntas de discusión:**
1. ¿Cómo estructurarías el script en Python para manejar los reintentos de conexión de forma eficiente?
2. ¿De qué manera controlarías los registros malformados o con errores de esquema para evitar que el job completo falle?

---

## Bloque 3: Caso de Arquitectura de Datos e IA (12 minutos)

### Planteamiento del Sistema

Un cliente requiere diseñar una arquitectura de datos de extremo a extremo en la nube (**AWS**, **Azure** o **GCP**). 

**Requerimientos del flujo:**
- Ingesta diaria de archivos **CSV batch** y eventos transaccionales en **streaming**.
- Procesamiento y limpieza de datos para consumo en tableros analíticos (**Power BI** / **Looker**).
- Exposición de texto procesado y estructurado para alimentar un sistema de **IA Generativa / Búsqueda Vectorial (RAG)**.

---

### Preguntas Guiadas

1. **Ingesta y Almacenamiento:**
   - ¿Qué servicios cloud utilizarías para recibir y almacenar la capa de datos *raw* tanto batch como streaming?

2. **Procesamiento y Transformaciones:**
   - ¿Optarías por un enfoque **ETL** o **ELT** para este escenario? 
   - ¿Qué tecnologías/frameworks de transformación seleccionarías y cómo organizarías las capas de datos?

3. **Especialización para IA:**
   - ¿Cómo prepararías la capa de datos para disponibilizar el contenido textual hacia los modelos de Inteligencia Artificial y la base de datos vectorial?

---

## Bloque 4: Cierre (3 minutos)

> Espacio para preguntas del candidato sobre el equipo, la infraestructura de OFI Services o la dinámica de trabajo.
