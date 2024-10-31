<p align="center">
  <img src="" alt="Banner" width="400"/>
</p>

# 🚨 READ THE ENTIRE README.MD & ALL DOCUMENTATION CAREFULLY !!! 🚨

# AMD AI Aim Assist Tool

An AI-driven aim assist application optimized for **AMD GPU users**, offering a customizable gameplay experience with enhanced responsiveness. This tool leverages YOLO, ONNX Runtime with DirectML, and Arduino integration to support gamers, especially those with physical challenges, providing a seamless and accurate aiming experience.

## Features
- **Real-Time Detection**: Uses ONNX models with non-max suppression for fast and reliable object detection.
- **Arduino Integration**: Enables additional control options through Arduino.
- **Flexible Configuration**: Allows extensive customization for targeting preferences, visuals, and integration.
- **Resource Management**: Employs garbage collection to optimize memory and system performance.

## Requirements
- **Python Libraries**: 
  - `torch-directml`, `numpy`, `opencv-python`, `psutil`, `colorama`, `pyautogui`, `PyGetWindow`, `yaml`, `tqdm`, `matplotlib`, `seaborn`, `requests`, `dill`, `onnx`, `onnxruntime-directml`, `ultralytics`, `bettercam`, `dxcam`, `serial` (for Arduino), `cupy-rocm`.
- **Hardware**: 
  - AMD GPU for optimal performance with DirectML.
  - Optional: Arduino device (e.g., UNO) if `arduino_support` is enabled.
  - **Python 3.11.6**

## Discord
- For assistance, join the Discord and head to the `amd-ai-assist-tool` channel.
- Ping `Bubbles` or `Urugly`
[Invite Link](https://www.discord.fnbubbles420.org/invite)

## Disclaimer

> **This tool and server are provided for educational purposes only and are not intended to promote cheating or unethical behavior in any way.**  
> We are an **educational nonprofit organization** dedicated to assisting individuals with disabilities, PTSD, mental health challenges, and physical limitations. Our community's mission is to support disabled gamers, veterans, streamers, and developers, fostering an environment where everyone can participate fully and equally in gaming and technology.

**Our Mission:**  
Our nonprofit, **fnbubbles420.org**, is dedicated to creating a **supportive, inclusive, and empowering community** for those facing physical and cognitive challenges. We advocate for **accessibility and inclusivity** in the gaming industry, combat stigmas surrounding disabilities, and promote mental wellness. Through proactive involvement, educational resources, and a dedicated support network, we aim to make the world a better place by enhancing the lives of individuals in need.

---

### Important Notice
> **If you choose to use this tool within any online game, please be aware that doing so may violate the terms of service of those games. If you are banned or penalized as a result of using this tool, we are not responsible.**  
> By using this tool, you acknowledge and accept full responsibility for any actions taken with it and understand the potential risks involved.


# LICENSE

- ## ***This project is proprietary and all rights are reserved by the author.***
- ## ***Unauthorized copying, distribution, or modification of this project is strictly prohibited.***
- ## ***Unless You have written permission from the Developer or the FNBUBBLES420 ORG.***


---

```
AMD-AI-Aim-Assist-Tool/
├── .github/ # GitHub-specific files
│   └── dependabot.yml # Dependabot configuration for dependency updates
├── Environmental_Setup/ # Environmental setup and configuration files
│   └── ... # Files related to environment setup (details not provided)
├── main_directml_script/ # Main script directory for DirectML
│   └── dist/ # Distribution folder with obfuscated runtime and models
│       ├── imgs/ # Image assets
│       ├── models/ # Model files
│       ├── pyarmor_runtime_000000 # PyArmor runtime obfuscation file
│       ├── pyarmor_runtime_000001 # PyArmor runtime obfuscation file
│       ├── ultralytics1/utils/ # Ultralytics utility files
│       ├── utils/ # Additional utility scripts
│       ├── New Text Document.txt # Placeholder text document
│       ├── config.py # Configuration file with customizable settings
│       ├── export-command.txt # Export command for model or setup
│       ├── export.py # Script for exporting models
│       ├── gameSelection.py # Script for selecting and activating the game window
│       ├── main_amd.py # Main script using DirectML for AI aim assist
│       └── readme.md # README for dist folder specifics
├── CODE_OF_CONDUCT.md # Code of Conduct for community guidelines
├── LICENSE.md # License file for the project
├── PLEASE-READ-IMPORTANT.md # Important Information Regarding Your Disability When Using This Tool
├── SECURITY.md # Security policy for reporting vulnerabilities
├── basicv5s.pt # Core PyTorch model file
├── .gitattributes # Git attributes for handling line endings, etc.
├── .gitignore # Git ignore file to exclude unnecessary files from the repo
├── readme.md # Main README with project overview and setup instructions
├── requirements.txt # Python dependencies for the project
├── run.bat # Batch script to execute the project
├── update_ultralytics.bat # Batch script to update the Ultralytics library
└── v5.pt # Additional model file for DirectML
```

### Installation

1. **Install Dependencies**:

```
pip install torch-directml numpy opencv-python psutil colorama pyautogui PyGetWindow pyyaml tqdm matplotlib seaborn requests dill onnx onnxruntime-directml ultralytics bettercam dxcam pyserial 
```

### Configuration Settings

Edit the `config.py` file to adjust the settings to match your setup and preferences.

### Configuration Settings

| Setting          | Default   | Description                                                                 |
|------------------|-----------|-----------------------------------------------------------------------------|
| screenShotHeight | 320       | Height of the screenshot for screen capture                                 |
| screenShotWidth  | 320       | Width of the screenshot for screen capture                                  |
| useMask          | False     | Enable/Disable mask application on image frames                             |
| maskSide         | left      | Side of the mask, choose "left" or "right"                                  |
| maskWidth        | 80        | Width of the mask                                                           |
| maskHeight       | 200       | Height of the mask                                                          |
| aaMovementAmp    | 0.4       | Amplifier for mouse movement adjustments                                    |
| confidence       | 0.4       | Confidence threshold for detection                                          |
| aaQuitKey        | 8         | Key to quit the application                                                 |
| aaActivateKey    | CapsLock  | Key to activate aim assist                                                  |
| headshot_mode    | True      | Target headshots specifically                                               |
| cpsDisplay       | False     | Display clicks per second (CPS)                                             |
| visuals          | True      | Display real-time visuals during processing                                 |
| centerOfScreen   | True      | Focus targeting towards the center of the screen                            |
| onnxChoice       | 3         | ONNX model version selection                                                |
| model_path       | v5.engine | Path to the model file                                                      |
| device           | dml       | Device for processing (set as 'dml' for AMD GPUs)                           |
| fp16             | True      | Enable FP16 (half precision) for faster computation on supported hardware   |
| arduino_support  | True      | Enable/Disable Arduino control for mouse movement                           |
| arduino_port     | COM3      | Serial port for Arduino                                                     |
| arduino_baudrate | 9600      | Baud rate for Arduino communication                                         |

### Running the Program

1.**Start the Application**:

```
python main_amd.py
```

2.**Configuration**: Adjust configuration in `config.py` before running for custom experience.

3.**Controls**:

- Press `CapsLock` to activate the aim assist.

- Press `8` to quit the program.

### Usage Examples

- **Model Loading**:

```
model = DetectMultiBackend(config.model_path, device=torch.device(config.device), dnn=False, fp16=config.fp16)
```

- **Arduino Integration**: If `arduino_support` is enabled, Arduino will assist in mouse movement based on detection results.

### Debugging and Visuals

The application includes a visualization mode (`visuals`=True in config) that displays real-time detection boxes, confidence percentages, and target tracking.

**Note**: Setting `cpsDisplay=True` will output the clicks per second (CPS) to monitor performance.

---

## LICENSE

- ## ***This project is proprietary and all rights are reserved by the author.***
- ## ***Unauthorized copying, distribution, or modification of this project is strictly prohibited.***
- ## ***Unless you have written permission from the Developer or the FNBUBBLES420 ORG.***

---
---