# C Project with SDL3 (v3.4.0)

This project demonstrates a basic SDL3 window in C, designed for Windows with MinGW.

## Prerequisites
- [MinGW](http://www.mingw.org/) (GCC for Windows)
- [SDL3 Development Libraries for MinGW](https://github.com/libsdl-org/SDL/releases/tag/release-3.4.0)

## Setup Steps

### 1. Install MinGW (via MSYS2)
- Download and install MSYS2 from [https://www.msys2.org/](https://www.msys2.org/).
- Open the MSYS2 terminal and update the package database:
  ```
  pacman -Syu
  ```
- Close the terminal window when prompted, then reopen it and run:
  ```
  pacman -Su
  ```
- Install the MinGW-w64 GCC toolchain:
  ```
  pacman -S mingw-w64-x86_64-gcc
  ```
- Add the MinGW-w64 binary directory (e.g., `C:\msys64\mingw64\bin`) to your Windows PATH environment variable.
- Verify installation by running `gcc --version` in a new MSYS2 MinGW terminal.


### 2. Install SDL3 (v3.4.0)
- Download the SDL3 development library for MinGW (`SDL3-devel-3.4.0-mingw.tar.gz`) from the [SDL3 3.4.0 release page](https://github.com/libsdl-org/SDL/releases/tag/release-3.4.0).
- Extract the archive (e.g., `SDL3-devel-3.4.0-mingw.tar.gz`).
- Copy the `include` folder to `C:\SDL3\include`.
- Copy the contents of the `lib` folder to `C:\SDL3\lib`.
- Copy `SDL3.dll` from the `lib` or `bin` folder to `C:\SDL3\bin` and also to your project directory (or ensure it's in your PATH).
- Add `C:\SDL3\bin` to your PATH so the DLL is found at runtime.

### 3. Build the Project
- Open a command prompt in this project directory.
- Run:
  ```
  mingw32-make
  ```
  or
  ```
  make
  ```
- This will produce `main.exe`.

### 4. Run the Program
- Ensure `SDL3.dll` is in the same directory as `main.exe` or in your PATH.
- Run:
  ```
  main.exe
  ```

## Notes
- The Makefile assumes SDL3 is installed in `C:\SDL3`. Adjust `CFLAGS` and `LDFLAGS` in the Makefile if your path is different.
- For more details, see the official SDL3 documentation.
