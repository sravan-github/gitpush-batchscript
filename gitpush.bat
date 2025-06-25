REM cd your-project-folder 

@echo off
for /f "usebackq tokens=1,2 delims==" %%A in ("var.txt") do (
    set %%A=%%B
)

md C:\Users\Kumar-ASUS\Desktop\SpringbootJava\%your-repo%

cd C:\Users\Kumar-ASUS\Desktop\SpringbootJava\%your-repo%
git init 
git add . 
git commit -m "Initial commit" 

REM create git repo with GUI https://github.com/your-username/your-repo.git 

git remote add origin https://github.com/sravan-github/%your-repo%.git
git branch -M main 
git push -u origin main

cd C:\Users\Kumar-ASUS\Desktop\SpringbootJava\%your-repo%
