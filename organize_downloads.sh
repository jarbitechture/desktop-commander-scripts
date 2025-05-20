#!/bin/bash
# Downloads Folder Organization Script

# Create organization directories 
mkdir -p ~/Downloads/Organized/{Documents,PDF_Files,Spreadsheets,Applications,Images,Archives,SAP_Insider,Onapsis_Data,City_Analysis}

# Move PDFs
find ~/Downloads -maxdepth 1 -name "*.pdf" -o -name "*.PDF" | while read file; do
  [ -f "$file" ] && mv "$file" ~/Downloads/Organized/PDF_Files/
done

# Move Excel files
find ~/Downloads -maxdepth 1 -name "*.xlsx" -o -name "*.xls" -o -name "*.csv" -o -name "*.numbers" | while read file; do
  if [[ "$file" == *"City"* || "$file" == *"city"* ]]; then
    [ -f "$file" ] && mv "$file" ~/Downloads/Organized/City_Analysis/
  elif [[ "$file" == *"onapsis"* || "$file" == *"Onapsis"* ]]; then
    [ -f "$file" ] && mv "$file" ~/Downloads/Organized/Onapsis_Data/
  elif [[ "$file" == *"SAPi"* || "$file" == *"sap_insider"* ]]; then
    [ -f "$file" ] && mv "$file" ~/Downloads/Organized/SAP_Insider/
  else
    [ -f "$file" ] && mv "$file" ~/Downloads/Organized/Spreadsheets/
  fi
done

# Move application installers
find ~/Downloads -maxdepth 1 -name "*.dmg" -o -name "*.pkg" -o -name "*.app" -o -name "*.vsix" | while read file; do
  [ -f "$file" ] && mv "$file" ~/Downloads/Organized/Applications/
done

# Move archives
find ~/Downloads -maxdepth 1 -name "*.zip" -o -name "*.tar.gz" -o -name "*.tgz" | while read file; do
  [ -f "$file" ] && mv "$file" ~/Downloads/Organized/Archives/
done

echo "Downloads folder organized successfully!"