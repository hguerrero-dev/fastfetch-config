# Fastfetch Config — Ubuntu Edition

Configuración profesional de [fastfetch](https://github.com/fastfetch-cli/fastfetch) para Ubuntu, con logo del sistema, bordes estilizados, iconos Nerd Font y colores rainbow. Incluye integración limpia con **Powerlevel10k** para evitar warnings en la terminal.

## Vista previa

```
user      hguerrero
host      hguerrero-home
uptime    2 hours, 40 mins
distro    Ubuntu 26.04 LTS...
kernel    7.0.0-15-generic
wm        gnome-shell
desktop   GNOME 50.1
term      opencode
shell     /bin/bash 5.3.9
cpu       Intel i7-8700K (6C/12T) @ 4.70GHz
gpu       AMD Radeon RX 580 2048SP
disk      116.4GiB / 456.3GiB (26%)
memory    7.0GiB / 30.3GiB (23%)
ip        192.168.0.15/24

● ● ● ● ● ● ● ●
```

> En tu terminal se ve con bordes (╭──╮), iconos Nerd Font (, 󰋜…) y colores rainbow. Esta previsualización es simplificada para GitHub.

## Archivos

| Archivo | Ruta de instalación | Descripción |
|---------|-------------------|-------------|
| `config.jsonc` | `~/.config/fastfetch/config.jsonc` | Configuración de fastfetch |
| `.zshrc` | `~/.zshrc` | Shell config con integración p10k |

## Instalación

### 1. Clonar el repositorio

```bash
git clone https://github.com/hguerrero/fastfetch-config.git
cd fastfetch-config
```

### 2. Instalar configuraciones

```bash
chmod +x install.sh
./install.sh
```

Esto copia la config de fastfetch y configura tu git global si no lo tienes.

> También incluye un `.zshrc` de referencia. Si quieres usarlo:
> ```bash
> cp ~/.zshrc ~/.zshrc.bak
> cp .zshrc ~/
> ```

### 3. Requisitos

- **[fastfetch](https://github.com/fastfetch-cli/fastfetch)** — `sudo apt install fastfetch`
- **[Powerlevel10k](https://github.com/romkatv/powerlevel10k)** — Tema para Oh My Zsh
- **[Oh My Zsh](https://ohmyz.sh/)** — Framework para Zsh
- **Nerd Font** — Para los iconos (ej. `sudo apt install fonts-firacode` y seleccionarla en la terminal)

### 4. Recargar

```bash
source ~/.zshrc
```

O abre una nueva terminal.

## Personalización

### Cambiar colores de las keys

Edita `~/.config/fastfetch/config.jsonc` y modifica el campo `keyColor` de cada módulo:

```jsonc
{
    "type": "cpu",
    "key": "│  cpu",
    "keyColor": "yellow",
    "format": "{name} ({cores-physical}C/{cores-logical}T) @ {freq-max}"
}
```

### Añadir o quitar módulos

Agrega o elimina objetos del array `modules` en `config.jsonc`. Consulta los módulos disponibles con:

```bash
fastfetch --list-modules
```

### Tamaño del logo

Cambia `"source": "ubuntu_small"` por `"source": "ubuntu"` en la sección `logo` para usar el logo grande.

## Integración con Powerlevel10k

El `.zshrc` incluido maneja el **Instant Prompt** de p10k de forma limpia:

1. El instant prompt se carga al inicio para apertura rápida de terminal.
2. `fastfetch` se ejecuta al final del archivo con `--pipe false` para forzar colores.
3. La variable `POWERLEVEL9K_INSTANT_PROMPT=quiet` suprime el warning sin deshabilitar la funcionalidad.

## Licencia

MIT
