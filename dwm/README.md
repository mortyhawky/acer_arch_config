### My DWM

How to create a new git repo on the cli in archlinux, 
I have git and github-cli installed, and I am not logged in to github

```bash
mkdir my-project  
cd my-project  
git init  
```

```bash
echo "# My Project" > README.md  
git add .  
git commit -m "Initial commit"  
```

```bash
gh auth login  
gh auth status  
```

```bash
gh repo create my-project --public --source=. --remote=origin  
```

```bash
git push -u origin main  
```

Run `git status` to see changes.

#b toggle bar
#w launch browser
#hjkl
#enter
+#enter focus window

