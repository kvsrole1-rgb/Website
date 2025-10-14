@echo off
echo Testing Jekyll setup...
echo.

echo Checking if Jekyll is installed...
jekyll --version
if %errorlevel% neq 0 (
    echo Jekyll is not installed. Please install Jekyll first.
    echo Run: gem install jekyll bundler
    pause
    exit /b 1
)

echo.
echo Installing dependencies...
bundle install
if %errorlevel% neq 0 (
    echo Failed to install dependencies.
    pause
    exit /b 1
)

echo.
echo Building Jekyll site...
bundle exec jekyll build
if %errorlevel% neq 0 (
    echo Failed to build Jekyll site.
    pause
    exit /b 1
)

echo.
echo Jekyll site built successfully!
echo You can now run: bundle exec jekyll serve
echo Then open http://localhost:4000 in your browser
echo.
pause
