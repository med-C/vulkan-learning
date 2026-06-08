# Compiler and flags
CXX = g++
CXXFLAGS = -std=c++17 -O2

# Include paths
INCLUDES = -I./glfw/include \
           -I./glm \
           -I"C:/VulkanSDK/1.4.350.0/Include"

# Library paths
LDFLAGS = -L./glfw/lib \
          -L"C:/VulkanSDK/1.4.350.0/Lib"

# Libraries to link
LIBS = -lglfw3dll -lvulkan-1

# Target executable
TARGET = main

# Build rule
$(TARGET): main.cpp
	$(CXX) $(CXXFLAGS) $(INCLUDES) main.cpp -o $(TARGET) $(LDFLAGS) $(LIBS)

# Run rule
r:
	./main

# Clean rule
c:
	cmd /C del /Q main.exe