@echo off
echo Starting ArkaVed Technologies Inc Jekyll Server...
echo.

echo Building the site...
bundle exec jekyll build
if %errorlevel% neq 0 (
    echo Build failed. Please check for errors.
    pause
    exit /b 1
)

echo.
echo Starting Jekyll server...
echo The site will be available at: http://localhost:4000
echo Press Ctrl+C to stop the server
echo.

bundle exec jekyll serve
