@echo off
echo Creating deployment package for MLMB Holdings Website...
echo.

REM Create a temporary directory for deployment files
if exist "deployment-package" rmdir /s /q "deployment-package"
mkdir "deployment-package"

REM Copy website files
copy "index.html" "deployment-package\"
copy "styles.css" "deployment-package\"
copy "script.js" "deployment-package\"

REM Copy images folder
if exist "images" (
    xcopy "images" "deployment-package\images\" /E /I
)

echo.
echo ✅ Deployment package created successfully!
echo.
echo 📁 Files ready for upload in 'deployment-package' folder:
dir "deployment-package" /b
echo.
echo 🌐 Next steps:
echo 1. Go to netlify.com
echo 2. Sign up for free
echo 3. Drag the 'deployment-package' folder to Netlify
echo 4. Your website will be live instantly!
echo.
echo Press any key to open the deployment package folder...
pause >nul
explorer "deployment-package"

