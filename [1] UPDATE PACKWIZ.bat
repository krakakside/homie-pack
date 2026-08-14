@echo off
title Packwiz Auto-Sync dan Git Pusher
color 0A

echo ===================================================
echo       SINKRONISASI PACKWIZ OTOMATIS
echo ===================================================
echo.

echo [1/4] Menyegarkan index Packwiz...
packwiz refresh
echo.

echo [2/4] Mendaftarkan perubahan ke Git (Staging)...
git add .
echo.

echo [3/4] Tulis pesan pembaruan (Commit):
set /p commit_msg="Pesan (cth: hapus elytra slot, nerf holefiller): "
git commit -m "%commit_msg%"
echo.

echo [4/4] Mengunggah (Push) ke repositori...
git push
echo.

echo ===================================================
echo   BERHASIL! Modpack klien sudah terbarui.
echo   Teman-temanmu siap mengunduh pembaruan.
echo ===================================================
pause