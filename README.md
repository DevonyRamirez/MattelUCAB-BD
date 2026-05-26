# 🗄️ Proyecto Base de Datos: MATTELUCAB

Este repositorio contiene los scripts SQL necesarios para la creación, inicialización y gestión de la base de datos del proyecto. Los datos cargados cumplen estrictamente con los requerimientos y volumen especificados en el enunciado.

---

## 🚀 Contenido del Repositorio

El proyecto está estructurado en archivos ordenados por su orden de ejecución lógica:

1. **`drop.sql`**: Limpieza previa del entorno.
2. **`create.sql`**: Definición de la estructura de la base de datos.
3. **`check.sql`** *(Opcional)*: Restricciones adicionales y claves foráneas.
4. **`insert.sql`**: Carga masiva de datos iniciales y de prueba.

---

## 📊 Volumen de Datos Cargados

La base de datos ha sido poblada siguiendo los lineamientos exactos del enunciado del proyecto, garantizando la integridad referencial:

| Entidad / Concepto | Volumen de Datos | Descripción |
| :--- | :--- | :--- |
| **División Geográfica** | Completo | Estados, Municipios y Parroquias de Venezuela. |
| **Clientes** | `400` registros | Usuarios base del sistema con sus datos de perfil. |
| **Órdenes de Compra** | `800` órdenes | 2 órdenes de compra asignadas por cada cliente. |
| **Detalle de Órdenes** | `1,600` productos | Cada orden incluye exactamente 2 productos. |
| **Subastas** | `100` subastas | Eventos de subasta activos/finalizados. |
| **Participación** | `2,000` registros | 20 usuarios únicos participando en cada una de las 100 subastas. |
| **Pujas (Historial)** | `6,000` pujas | 3 pujas por cada usuario participante. |

---