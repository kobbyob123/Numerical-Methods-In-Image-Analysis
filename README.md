# Numerical Methods of Image Analysis (TNM-A)
Summer Semester Course for Learning Image Analysis

This repository serves as a code log and implementation workspace for the **Numerical Methods of Image Analysis** course during the 2025/2026 academic year. The content covers the mathematical theory of digital image processing, from basic pixel manipulation to advanced object recognition[cite: 2, 6].

## 📌 Course Context

## 🛠 Current Progress: Foundations
The current implementations focus on the initial stages of the syllabus, specifically **Numeric Image Representation** and **Pixel Values Transforms**

### Current Implementation: Image Detection
The latest exercise involves detecting environmental changes or objects by comparing scene frames.
* **Grayscale Conversion**: Normalizing images for numerical processing.
* **Difference Mapping**: Using absolute difference logic to isolate changes between a reference image (`room1.jpeg`) and a test image (`roomPerson.jpeg`).
* **Region Analysis**: Utilizing `regionprops` to extract statistical characteristics of detected differences.

```matlab
% Example of current logic for change detection
% under construction... please wait
