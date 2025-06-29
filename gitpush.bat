@echo off
set your-repo=test2
cd /d "C:\Users\Kumar-ASUS\Desktop\SpringbootJava\%your-repo%"
cd
rm -rf .git
git init
git add .
git commit -m "Automated commit: %date% %time%"
git remote add origin https://github.com/sravan-github/%your-repo%.git
git branch -M main 
git push -u origin main
pause
