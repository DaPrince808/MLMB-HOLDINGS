@echo off
echo.
echo 🌐 MLMB Holdings - Website Launch Assistant
echo ================================================
echo.
echo 🚀 Let's get your website live!
echo.
echo Your deployment files are ready in the 'deployment-package' folder.
echo.
echo Choose your deployment method:
echo.
echo [1] Netlify (Recommended - Fastest)
echo [2] GitHub Pages (Most Professional)
echo [3] View deployment package folder
echo [4] Test website locally first
echo.
set /p choice="Enter your choice (1-4): "

if "%choice%"=="1" (
    echo.
    echo 🚀 Opening Netlify for you...
    echo Follow these steps:
    echo 1. Sign up for free
    echo 2. Drag the 'deployment-package' folder to Netlify
    echo 3. Your website will be live instantly!
    echo.
    start https://netlify.com
    explorer "deployment-package"
) else if "%choice%"=="2" (
    echo.
    echo 🚀 Opening GitHub for you...
    echo Follow these steps:
    echo 1. Sign up for free
    echo 2. Create new repository: mlmb-holdings-website
    echo 3. Upload files from deployment-package
    echo 4. Enable Pages in Settings
    echo.
    start https://github.com
    explorer "deployment-package"
) else if "%choice%"=="3" (
    echo.
    echo 📁 Opening deployment package folder...
    explorer "deployment-package"
) else if "%choice%"=="4" (
    echo.
    echo 🔍 Testing website locally...
    start index.html
) else (
    echo Invalid choice. Please run the script again.
)

echo.
echo 📞 Need help? Call: 065 551 9079
echo 📧 Email: malapi13@gmail.com
echo.
pause

