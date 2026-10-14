@echo off
chcp 65001 > nul
echo ===================================================
echo     ВІДПРАВКА POSTSERVICE НА ВАШ GITHUB
echo ===================================================
echo.
echo Перевірка та відправка на https://github.com/m-messa-it/PostService...
git push -u origin main

if %errorlevel% equ 0 (
    echo.
    echo ===================================================
    echo [УСПІХ!] Проєкт успішно завантажено на GitHub!
    echo Репозиторій: https://github.com/m-messa-it/PostService
    echo ===================================================
) else (
    echo.
    echo ===================================================
    echo [УВАГА] Спочатку відкрийте браузер за посиланням:
    echo https://github.com/new
    echo і створіть новий репозиторій з назвою: PostService
    echo (залиште Public і не додавайте README/gitignore)
    echo Після натискання кнопки "Create repository" на сайті -
    echo запустіть цей файл ще раз!
    echo ===================================================
)
pause
