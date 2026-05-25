# ==========================================
# TRANSFORMARE ÎN ONE UI 8 (MODIFICĂRILE TALE)
# ==========================================

# 1. Creare foldere în structura de sistem
mkdir -p system/system_ext/product/priv-app/Launcher
mkdir -p system/system/media

# 2. Ștergerea launcher-ului original Trebuchet din LineageOS
rm -rf system/system/priv-app/Trebuchet
rm -rf system/system/product/priv-app/Trebuchet

# 3. Mutarea Launcher-ului One UI urcat de tine (Nume corectat)
mv TouchWizHome_2017.apk system/system_ext/product/priv-app/Launcher/NexusLauncherRelease.apk

# 4. Înlocuirea animației de boot cu cea Samsung
rm -f system/system/media/bootanimation.zip
mv bootanimation.zip system/system/media/bootanimation.zip

# 5. Modificarea build.prop pentru numele "One UI 8"
echo "ro.build.display.id=One UI 8" >> system/system/build.prop
echo "ro.modversion=OneUI_8_Official" >> system/system/build.prop

echo "--- One UI 8 a fost integrat cu succes în LineageOS! ---"
