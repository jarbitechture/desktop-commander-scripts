#!/bin/bash
# Home Directory Organization Script

# Create organized directory structure
mkdir -p ~/Projects/Python/{Scrapers,Data_Analysis,Utils}
mkdir -p ~/Projects/{Web,AI,Data}
mkdir -p ~/Scripts
mkdir -p ~/Data/Databases
mkdir -p ~/Media/{Images,Disney}
mkdir -p ~/Dev/Configuration
mkdir -p ~/Backups
mkdir -p ~/Docs/{PDF,Notes}
mkdir -p ~/Tools

# Move Python scripts
find ~/ -maxdepth 1 -type f -name "*.py" | while read file; do
  if [[ "$file" == *"scraper"* ]]; then
    mv "$file" ~/Projects/Python/Scrapers/ 2>/dev/null
  elif [[ "$file" == *"analysis"* ]]; then
    mv "$file" ~/Projects/Python/Data_Analysis/ 2>/dev/null
  else
    mv "$file" ~/Projects/Python/Utils/ 2>/dev/null
  fi
done

# Move project directories
mv ~/python_flagger_project ~/Projects/Python/ 2>/dev/null
mv ~/snowflake-connector-python ~/Projects/Python/ 2>/dev/null
mv ~/my-app ~/Projects/Web/ 2>/dev/null
mv ~/interactive-presentation ~/Projects/Web/ 2>/dev/null
mv ~/claude_assistant ~/Projects/AI/ 2>/dev/null
mv ~/GPT-4-Unlimited-Tools ~/Projects/AI/ 2>/dev/null

# Move shell scripts to Scripts directory
find ~/ -maxdepth 1 -type f -name "*.sh" | while read file; do
  mv "$file" ~/Scripts/ 2>/dev/null
done

# Move and organize image files
find ~/ -maxdepth 1 -type f -name "*.png" -o -name "*.jpg" -o -name "*.jpeg" | while read file; do
  if [[ "$file" == *"disney"* ]]; then
    mv "$file" ~/Media/Disney/ 2>/dev/null
  else
    mv "$file" ~/Media/Images/ 2>/dev/null
  fi
done

# Move PDF files
find ~/ -maxdepth 1 -type f -name "*.pdf" | while read file; do
  mv "$file" ~/Docs/PDF/ 2>/dev/null
done

# Move large files to Backups
find ~/ -maxdepth 1 -type f -size +500M | while read file; do
  mv "$file" ~/Backups/ 2>/dev/null
done

echo "Home directory organization complete!"