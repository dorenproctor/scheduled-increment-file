i=$((`cat increment.txt` + 1))
echo incrementing to $i
echo $i > increment.txt
git status
git config --global user.email "dorenproctor@gmail.com"
git config --global user.name "Doren's CI/CD Runner"
git commit -am "increment to $i"
git push