# Readtych — Landing Page

Este repositorio contiene la landing page estática de Readtych lista para desplegar en GitHub Pages.

## Qué incluye

- `index.html` — Página principal (esta landing).
- `.github/workflows/pages.yml` — Workflow para desplegar automáticamente a GitHub Pages al pushear a `main`.

## Despliegue (pasos rápidos)

1. Inicializa el repositorio local (si aún no existe):

```bash
git init
git add .
git commit -m "Initial commit: landing page"
git branch -M main
git remote add origin git@github.com:<TU_USUARIO>/<TU_REPO>.git
git push -u origin main
```

2. Alternativa con GitHub CLI:

```bash
gh repo create <TU_USUARIO>/<TU_REPO> --public --source=. --remote=origin --push
```

3. El workflow en `.github/workflows/pages.yml` publicará la carpeta raíz en GitHub Pages automáticamente cuando hagas push a `main`.

4. Verifica el sitio en la sección **Pages** de tu repositorio en GitHub (Settings → Pages). La URL por defecto será `https://<TU_USUARIO>.github.io/<TU_REPO>/`.

## Probar localmente

Puedes servir la carpeta localmente con Python o con `npx serve`:

```bash
python -m http.server 8000
# o
npx serve .
```

## Notas

- Si usas recursos externos en `index.html` (imágenes, fuentes), asegúrate de que sus URLs sean accesibles públicamente.
- Si quieres un dominio personalizado, añade un archivo `CNAME` con tu dominio y configúralo en la sección Pages.

Si quieres, puedo crear el repositorio en GitHub por ti o añadir un `CNAME` o ajustes adicionales.

## Despliegue con Coolify

Puedes desplegar esta landing en Coolify usando el `Dockerfile` incluido.

Pasos rápidos:

1. En Coolify, crea una nueva aplicación y selecciona "From Git" apuntando a este repositorio.
2. Elige "Dockerfile" como método de build (Coolify detectará el `Dockerfile` en la raíz).
3. Despliega: Coolify construirá la imagen y servirá el contenedor.

Prueba localmente con Docker:

```bash
docker build -t rtych-landing .
docker run --rm -p 8080:80 rtych-landing
# abrir http://localhost:8080
```

Si prefieres no usar Docker, sigue con GitHub Pages (ya configurado) o dime si quieres que configure Coolify por ti.
