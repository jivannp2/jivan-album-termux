# Jivan Album (Termux Setup)

Aapki yaadon ka digital photo album jo aap apne Android phone par Termux ke zariye local web server par chala sakte hain.

## Termux me kaise chalayein:

1. **Termux app kholein.**
2. Sub-folder me jayein jahan `jivan-album-termux` ki files hain:
   ```bash
   cd jivan-album-termux
   ```
3. Script ko execute karne ki permission dein:
   ```bash
   chmod +x start.sh
   ```
4. Server shuru karein:
   ```bash
   ./start.sh
   ```
5. Browser me ye link kholein:
   - Phone par: `http://localhost:8080`
   - Wi-Fi network par doosre devices se: `http://<AAPKA-IP>:8080`

## Features
- Full responsive dark theme design (Mobile aur Desktop dono par sahi dikhta hai)
- Zero external dependencies (Offline chalega)
- Direct Python HTTP server integration
