@echo off
echo ================================
echo Setting up Environment for AMD GPU
echo ================================
echo.

:: Ensure Python is installed and accessible
python --version
IF %ERRORLEVEL% NEQ 0 (
    echo Python is not installed or not added to PATH. Please install Python and try again.
    pause
    exit /b
)

echo Installing critical packages...

echo Installing torch...
pip install torch
echo.

echo Installing torchvision...
pip install torchvision
echo.

echo Installing torchaudio...
pip install torchaudio
echo.

echo Installing torch-directml (for AMD GPU support)...
pip install torch-directml
echo.

echo Installing onnx...
pip install onnx
echo.

echo Installing onnx-simplifier...
pip install onnx-simplifier
echo.

echo Installing onnxruntime...
pip install onnxruntime
echo.

echo Installing onnxruntime-directml (for AMD GPU with DirectML support)...
pip install onnxruntime-directml
echo.

echo.
echo ================================
echo Critical packages installed. Press Enter to continue with remaining dependencies.
echo ================================
pause

:: Installing remaining packages
echo Installing numpy, opencv-python, comtypes, pandas, bettercam, psutil, colorama, ultralytics, PyAutoGUI, PyGetWindow, pywin32, pyyaml, tqdm, matplotlib, seaborn, requests, ipython, dxcam, pyarmor, dill, pyserial...
pip install numpy opencv-python comtypes pandas bettercam psutil colorama ultralytics PyAutoGUI PyGetWindow pywin32 pyyaml tqdm matplotlib seaborn requests ipython dxcam pyarmor dill pyserial
echo.

echo ================================
echo CuPy Installation Instructions
echo ================================
echo MAKE SURE TO HAVE THE WHL FILE DOWNLOADED BEFORE YOU CONTINUE!
echo Press Ctrl and Left Click the link below to download:
echo https://github.com/cupy/cupy/releases/download/v12.0.0b1/cupy_cuda11x-12.0.0b1-cp311-cp311-win_amd64.whl
pause

echo Installing CuPy from WHL...
pip install https://github.com/cupy/cupy/releases/download/v12.0.0b1/cupy_cuda11x-12.0.0b1-cp311-cp311-win_amd64.whl
echo.

echo ================================
echo Installation Complete!
echo ================================
pause
