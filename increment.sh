curr=`cat increment.txt`
next=$(($curr+1))
i=$((`cat increment.txt` + 1))
echo incrementing to $next
echo $next > increment.txt
sed -i "s/$curr/$next/g" README.md
git status
git config --global user.email "dorenproctor@gmail.com"
git config --global user.name "Doren's CI/CD Runner"
git commit -am "increment to $next"
git push