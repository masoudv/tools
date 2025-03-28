# 🗂️ File Mapper Migrator

> A Bash-based CLI tool to batch move files based on custom mappings.  
> Designed to help developers restructure their Markdown-based documentation projects easily.

---

## ⚙️ Features

- Reads a `mappings.txt` file with `source|destination` lines
- Auto-creates destination folders if missing
- Moves (not just copies) the files
- Provides a clean, color-coded log of operations

---

## 🧪 Sample Mapping Format

```txt
project-alpha/docs/intro.md|project-alpha-refactored/docs/sections/introduction.md
project-alpha/docs/api.md|project-alpha-refactored/docs/sections/api/api.md
```

---

## 🚀 How to Use

```bash
chmod +x migrate-from-mapping.sh
./migrate-from-mapping.sh
```

✅ Your directory structure will be reorganized based on the `mappings.txt`.

---

💡 If you prefer to **copy** files instead of moving them, replace `mv` with `cp` in **line 16** of `migrate-from-mapping.sh`.

---

## 🖥️ Compatible With

- ✅ macOS / Linux (Native Bash)
- ✅ Windows (via Git Bash or WSL)

---

## 📁 Example Use Case

You have a large documentation folder with a flat or messy structure and want to cleanly move each file to a new module-based layout — without losing track.

---

## 🧠 Built with ❤️ by [sirvav.com]