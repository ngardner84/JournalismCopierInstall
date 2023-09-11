#!/bin/bash

# Variables
PRINTER_NAME_COLOR="Journalism-Copier-Color"
PRINTER_NAME_BW="Journalism-Copier-BW"
PRINTER_LOCATION="LA4 203"
PRINTER_DESCRIPTION_COLOR="LA4 203 BRL9570CDW COLOR Printer"
PRINTER_DESCRIPTION_BW="LA4 203 BRL9570CDW BW Printer"
PRINTER_URL_COLOR="smb://ops-pcutprint1/COPIER-AA-CLA-LA42033-BRL9570CDW-COLOR"
PRINTER_URL_BW="smb://ops-pcutprint1/COPIER-AA-CLA-LA42033-BRL9570CDW-BW"
GENERIC_PPD_PATH="/System/Library/Frameworks/ApplicationServices.framework/Versions/A/Frameworks/PrintCore.framework/Versions/A/Resources/GenericPrinter.ppd"

# Add the printer using the generic PPD
echo "Adding printers..."
lpadmin -p $PRINTER_NAME_COLOR -L "$PRINTER_LOCATION" -D "$PRINTER_DESCRIPTION_COLOR" -v "$PRINTER_URL_COLOR" -P "$GENERIC_PPD_PATH" -o printer-is-shared=false -E
echo "Printer $PRINTER_NAME has been added successfully."

lpadmin -p $PRINTER_NAME_BW -L "$PRINTER_LOCATION" -D "$PRINTER_DESCRIPTION_BW" -v "$PRINTER_URL_BW" -P "$GENERIC_PPD_PATH" -o printer-is-shared=false -E
# Set the default options (if any)
# lpadmin -p "$PRINTER_NAME" -o option=value
echo "Printer $PRINTER_NAME has been added successfully."
