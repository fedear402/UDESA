#!/usr/bin/env python3

import os
import subprocess
import sys
from pathlib import Path

def ocr_pdf(input_path, output_path):
    """OCR a single PDF file using ocrmypdf."""
    try:
        # Run ocrmypdf with common options
        result = subprocess.run([
            'ocrmypdf',
            '--rotate-pages',  # Auto-rotate pages
            '--deskew',        # Straighten pages
            '--clean',
	    '--force-ocr',         # Clean artifacts
            '--optimize', '1', # Light optimization
            str(input_path),
            str(output_path)
        ], capture_output=True, text=True, check=True)
        
        return True, None
    except subprocess.CalledProcessError as e:
        return False, f"Error: {e.stderr}"
    except FileNotFoundError:
        return False, "ocrmypdf not found. Please install it first."

def main():
    current_dir = Path('.')
    pdf_files = list(current_dir.glob('*.pdf'))
    
    if not pdf_files:
        print("No PDF files found in the current directory.")
        return
    
    print(f"Found {len(pdf_files)} PDF file(s) to process:")
    for pdf in pdf_files:
        print(f"  - {pdf.name}")
    
    # Confirm before proceeding
    response = input("\nProceed with OCR processing? (y/N): ")
    if response.lower() not in ['y', 'yes']:
        print("Operation cancelled.")
        return
    
    processed = 0
    failed = 0
    
    for pdf_file in pdf_files:
        print(f"\nProcessing: {pdf_file.name}")
        
        # Create temporary output file
        temp_output = pdf_file.with_suffix('.ocr_temp.pdf')
        
        success, error = ocr_pdf(pdf_file, temp_output)
        
        if success:
            # Replace original file with OCR'd version
            try:
                pdf_file.unlink()  # Remove original
                temp_output.rename(pdf_file)  # Rename temp to original
                print(f"✓ Successfully processed: {pdf_file.name}")
                processed += 1
            except Exception as e:
                print(f"✗ Error replacing file {pdf_file.name}: {e}")
                # Clean up temp file if it exists
                if temp_output.exists():
                    temp_output.unlink()
                failed += 1
        else:
            print(f"✗ Failed to process {pdf_file.name}: {error}")
            # Clean up temp file if it exists
            if temp_output.exists():
                temp_output.unlink()
            failed += 1
    
    print(f"\n--- Summary ---")
    print(f"Successfully processed: {processed}")
    print(f"Failed: {failed}")
    print(f"Total: {len(pdf_files)}")

if __name__ == "__main__":
    main()
