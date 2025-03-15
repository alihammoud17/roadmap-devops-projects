# DevOps Roadmap Projects  

This repository contains solutions for projects from [roadmap.sh](https://roadmap.sh) related to DevOps.  

## 1 - Server Performance  

Project URL: https://roadmap.sh/projects/server-stats

This project includes a script to monitor server performance. The script, `server-stats.sh`, is located in the `Project DEVOPS roadmap` folder.  

### Running the Script  

Project path: ```"Project DEVOPS roadmap"/server-stats.sh```

To execute the script, use the following command:  

```sh
bash "Project DEVOPS roadmap/1 - Server Performance Stats/server-stats.sh"
```

## 2 - Log Archive Tool

Project URL: https://roadmap.sh/projects/log-archive-tool

The `log-archive` command is a simple shell script that allows you to archive logs from a specified directory. This script is designed to be used globally from any shell instance once installed.

### Installation

To install the `log-archive` command, follow these steps:

#### 1. Copy the script to a directory in your `PATH`

```bash
sudo cp "Project DEVOPS roadmap"/"2 - Log Archive Tool"/log-archive.sh /usr/local/bin/
```
#### 2. Make the script executable

```bash
sudo chmod +x /usr/local/bin/log-archive.sh
```

#### 3. Verify the installation

```bash
which log-archive.sh
```

### Usage

```bash
log-archive.sh <log-directory>
```
