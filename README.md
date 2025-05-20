# Desktop Commander Scripts

A collection of automation scripts for file management and system organization using the Desktop Commander tool.

## Scripts

- `organize_home.sh` - Organizes home directory into logical categories
- `organize_downloads.sh` - Sorts downloads folder by file type

## Setup

1. Install Desktop Commander:
```
npm install -g @wonderwhy-er/desktop-commander
```

2. Make scripts executable:
```
chmod +x *.sh
```

## Usage

Run scripts directly:
```
./organize_home.sh
```

Or through Desktop Commander:
```
npx @wonderwhy-er/desktop-commander@latest execute_command "~/desktop-commander-scripts/organize_home.sh"
```
