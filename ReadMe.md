
# 🚀 Git Auto Push with VBScript

This project contains a smart VBScript file (`git-smart.vbs`) that helps you automate your Git commands so you don't have to type them every time you update or push your code to GitHub.

---

## 📂 Folder Structure

```
📁 Automation with VBS
│
├── 📄 git-smart.vbs       # The main script to auto push code to GitHub
├── 📄 README.md           # This file (user manual)
```

---

## 🛠️ Features

✅ One single script for both:
- 🔰 First-time Git setup (`git init`, `remote add`, `branch`, and first push)
- 🔁 Future code updates (`git add`, `commit`, `push`)

✅ Prevents pushing the `.vbs` file itself  
✅ Takes commit message and repo URL via input box  
✅ CMD window stays open to show success or error output

---

## 🚀 How to Use

### 📌 Step 1: Save the Script
Save the `git-smart.vbs` inside your project folder.

---

### 📌 Step 2: Double Click to Run

When you run the script, it will ask:

> ❓ “Is this your first time pushing this project to GitHub?”

### 👉 If Yes:
- You’ll be asked to enter your GitHub repo URL (e.g., `https://github.com/username/repo.git`)
- Enter your commit message
- It will:
  - Run `git init`
  - Add all files (except the `.vbs` file)
  - Commit with your message
  - Set up remote origin
  - Push to the `main` branch

### 👉 If No:
- You’ll only be asked for a commit message
- It will:
  - Add all changes
  - Commit with your message
  - Push to `main`

---

## 🧠 Requirements

- ✅ Git must be installed on your system
- ✅ Git must be added to the system PATH
- 💡 Make sure you're inside a Git-enabled folder when running the script

---

## ⚠️ Notes

- The script uses `git reset <scriptname>` to **exclude the `.vbs` file** from being committed.
- You must have internet access for pushing to GitHub.
- The CMD window will remain open after execution so you can verify success or errors.

---

## 🙌 Made With Love

Created by TurzO to save time and avoid repetitive Git commands. ❤️  
Perfect for web developers, coders, and anyone who wants faster Git workflow with no typing.
