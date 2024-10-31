# Screen Capture Settings
screenShotHeight = 320
screenShotWidth = 320

# Mask Settings
useMask = False
maskSide = "left"
maskWidth = 80
maskHeight = 200

# Mouse Movement Amplifier
aaMovementAmp = 0.4

# Detection Settings
confidence = 0.4

# Key Bindings
aaQuitKey = "8"
aaActivateKey = "CapsLock"

# Targeting Mode
headshot_mode = True

# Debugging and Visuals
cpsDisplay = False
visuals = True

# Target Selection
centerOfScreen = True

# ONNX Model Selection
onnxChoice = 3
model_path = 'model.onnx'  # Use an ONNX file instead of .engine for AMD GPUs
device = 'dml'  # DirectML for AMD GPUs
fp16 = True  # Enable FP16 if supported by DirectML for a performance boost

# Arduino Support
arduino_support = True
arduino_port = 'COM3'
arduino_baudrate = 9600
