# Colegio San José • Elección de Bachillerato 2027
### Sistema de Orientación Vocacional y Registro Oficial para 9° Grado

Diseño web de alta gama siguiendo los **Human Interface Guidelines (HIG) de Apple** (estética minimalista, modo oscuro Retina, tipografía SF Pro, controles hápticos segmentados, Bento Grid y comprobante estilo Apple Wallet) conectado en tiempo real a **Google Firebase Firestore**.

---

## 🚀 Proyecto Conectado a Firebase

Tus credenciales de Firebase han sido integradas en [index.html](file:///c:/Users/Jos%C3%A9GiovanniM%C3%A1rquezE/Documents/bachtec/index.html):

- **Project ID**: `bachtec-9190c`
- **Colección de Firestore**: `inscripciones_bachillerato_2027`
- **Dominio Auth**: `bachtec-9190c.firebaseapp.com`
- **Storage**: `bachtec-9190c.firebasestorage.app`
- **App ID**: `1:1005686162690:web:aeb78e8c559620906b2e1b`

---

## ⚙️ Paso Importante en tu Firebase Console (Firestore)

Para que las inscripciones se guarden sin restricciones en tu base de datos:

1. Entra a tu [Consola de Firebase](https://console.firebase.google.com/project/bachtec-9190c/firestore).
2. Si aún no has creado la base de datos, haz clic en **"Crear base de datos"** y selecciona una región cercana (ej. `nam5 (us-central)`).
3. En la pestaña **Reglas (Rules)**, asegúrate de permitir lectura y escritura para la colección de inscripciones:

```javascript
rules_version = '2';
service cloud.firestore {
  match /databases/{database}/documents {
    match /inscripciones_bachillerato_2027/{document=**} {
      allow read, write: if true;
    }
  }
}
```
4. Haz clic en **Publicar (Publish)**.

---

## ✨ Características del Rediseño Estilo Apple

1. **Barra de Navegación Frosted Glass**: Cristal translúcido con desenfoque de 20px, isotipo institucional con lema *Ad Astra* y acceso rápido a consola de administración.
2. **Keynote Hero & Aula Apple iMac**: Presentación de producto con tipografía de alto impacto y fotografía del laboratorio equipado con computadoras Apple iMac Retina.
3. **Apple Bento Grid**: 
   - Tarjetas asimétricas con bordes ultra-finos (`border-white/[0.08]`) y luces ambientales difusas.
   - Perfil de ingreso para alumnos de 9° Grado.
   - Medidor visual interactivo del sistema de competencias numéricas del 1 al 5.
4. **Malla Curricular con Segmented Control**: Selector estilo iOS/macOS para alternar de forma interactiva entre Primer Año (Fundamentos), Segundo Año (Especialización) y Tercer Año (Profesionalización).
5. **Comparativa Estilo Apple Compare**: Matriz técnica enfrentando Bachillerato General (2 Años) vs Técnico Vocacional en Diseño Gráfico (3 Años).
6. **Formulario Wizard (iOS Setup Assistant)**:
   - **Paso 1**: Selección de Sección (A, B, C) mediante botones hápticos, NIE, Nombre Completo, Correo y WhatsApp.
   - **Paso 2**: Selección de Modalidad con tarjetas táctiles y confirmación automática del aula iMac.
   - **Paso 3**: Resumen oficial en tarjeta estilo **Apple Wallet / Boarding Pass** antes del envío a Firestore, con opción de **Impresión de Comprobante**.
7. **Panel Administrativo Privado y Estadísticas (`admin.html`)**:
   - Acceso protegido por clave (`csj2027` o `admin2027`) exclusivo para docentes y directivos.
   - Oculto de la vista de los estudiantes para mantener el portal de alumnos 100% limpio.
   - Dashboard con gráficas estadísticas de preferencia (General vs Técnico), barras por sección (A, B, C), nómina en vivo de alumnos y exportación a Excel (CSV).

---

## 💻 Cómo ejecutarlo localmente

El servidor local ya se encuentra activo en tu equipo en:
👉 **`http://localhost:5000`**

O puedes abrir directamente el archivo [index.html](file:///c:/Users/Jos%C3%A9GiovanniM%C3%A1rquezE/Documents/bachtec/index.html) en cualquier navegador moderno (Safari, Chrome, Edge, Firefox).
