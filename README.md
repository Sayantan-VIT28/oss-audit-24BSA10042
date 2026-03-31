````markdown
````
# 🐧 Open Source Audit — Linux Kernel

**Name:** Sayantan Das  
**Registration No:** 24BSA10042  

A capstone project exploring the philosophy, architecture, and ecosystem of the Linux Kernel as part of an Open Source Software course. This project was developed and tested using **Ubuntu 24.04 LTS** on an **AWS EC2 instance**.

---

## 📌 Overview

This project provides a comprehensive audit of the Linux Kernel, covering:

- **Origin & Philosophy:** From the limitations of UNIX to Linus Torvalds' vision.  
- **GNU GPL Licensing Model:** Analysis of copyleft and software freedom.  
- **Ethics of Open Source:** Community collaboration and transparency.  
- **System Structure:** Understanding the Linux filesystem hierarchy and core directories.  
- **FOSS Ecosystem:** Relationship between GNU tools and modern cloud infrastructure.  
- **Practical Bash Scripts:** Real-world usage for system administration and auditing.  

---

## 🧠 Objectives

- Understand why Linux was created and how it evolved into a global standard.  
- Analyze the impact of open-source licensing (**GPL v2**) on the industry.  
- Explore how Linux powers modern infrastructure (AWS / Cloud).  
- Compare Linux with proprietary systems like Windows.  
- Demonstrate practical Linux usage through automated shell scripting.  

---

## 📖 Project Structure

```text
Open Source Audit
│
├── Part A — Origin and Philosophy
│   ├── UNIX limitations
│   ├── Linus Torvalds story
│   ├── GPL License overview
│   └── Ethics of Open Source
│
├── Part B — Linux Footprint
│   ├── Package management (APT/Ubuntu)
│   ├── User management & Permissions
│   └── Core filesystem directories (/etc, /var, /tmp)
│
├── Part C — FOSS Ecosystem
│   ├── GNU tools & dependencies
│   ├── Linux in servers & Android
│   └── Community-driven development
│
├── Part D — Open Source vs Proprietary
│
├── Shell Scripts
│   ├── 1. System Identity Report
│   ├── 2. FOSS Package Inspector (Ubuntu optimized)
│   ├── 3. Disk & Permission Auditor
│   ├── 4. Log File Analyzer
│   └── 5. Manifesto Generator
│
└── Conclusion
````

---

## ⚙️ Scripts Included

### 1. System Identity Report (`identity.sh`)

Displays system-level information:

* Kernel version
* Current user
* Uptime
* OS distribution (Ubuntu)
* License information

---

### 2. FOSS Package Inspector (`inspector.sh`)

* Audits packages using the APT package manager
* Displays version, section, and descriptions
* Includes philosophical notes for popular software

---

### 3. Disk and Permission Auditor (`auditor.sh`)

* Scans key system directories
* Outputs:

  * Permissions
  * Ownership
  * Disk usage (sudo-aware)

---

### 4. Log File Analyzer (`log_analyzer.sh`)

* Parses logs (default: `/var/log/syslog`) for keywords like `error`
* Includes retry logic
* Displays the last 5 relevant entries

---

### 5. Manifesto Generator (`manifesto.sh`)

* Interactive script for user beliefs on open source
* Generates a personalized `.txt` manifesto statement

---

## 🌍 Key Takeaways

* Linux is a community-driven project that scaled from a hobby to the backbone of global infrastructure.
* Open-source is defined by **freedom, transparency, and collaboration**, not just price.
* The Linux kernel powers:

  * The majority of servers
  * Android devices
  * Cloud infrastructure (AWS)
* Linux offers unmatched control and flexibility for developers and system administrators.

---

## 🚀 How to Use

1. Connect to your instance (AWS EC2 Instance Connect or SSH)

2. Create and run scripts:

```bash
nano script_name.sh  # Paste code and save
chmod +x script_name.sh
./script_name.sh
```

3. Ensure you are on a Linux system
   *(Optimized for Ubuntu/Debian-based systems)*

---

## 📚 Author

**Name:** Sayantan Das  
**Registration No:** 24BSA10042

* Course: Open Source Software
* Platform: AWS EC2 (Ubuntu 24.04 LTS)

---

## 📜 License

This project is for academic purposes.

The Linux Kernel is referenced under the **GNU General Public License v2 (GPLv2)**.

```
```
