#include "tuiRenderer.hpp"
#include <iostream>
#include <utility>
#include <vector>

#ifdef WIN 

#include <windows.h>

#else

#include <sys/ioctl.h>
#include <unistd.h> 

#endif

TuiRenderer::TuiRenderer(int width, int height) {
    this->width = width;
    this->height = height;
    this->buffer = std::vector<std::vector<int>>(height, std::vector<int>(width, 0));
    this->foregroundBuffer = std::vector<std::vector<int>>(height, std::vector<int>(width, 0));
    this->textBuffer = std::vector<std::string>(height, std::string(width, ' '));
}

int TuiRenderer::rgb(int r, int g, int b) {
    return (r << 16) | (g << 8) | b;
}

void TuiRenderer::setBackgroundColor(int color) {
    for (int i = 0; i < this->height; i++) {
        for (int j = 0; j < this->width; j++) {
            buffer[i][j] = color;
        }
    }
}

void TuiRenderer::moveCursor(int x, int y) {
    std::cout << "\033[" << y << ";" << x << "H";
}

void TuiRenderer::resetPosition() {
    TuiRenderer::moveCursor(0, 0);
}

// keep old values of buffer
void TuiRenderer::resize(int width, int height) {
    buffer.resize(height, std::vector<int>(width, 0));
    for (int i = 0; i < height; i++) {
        buffer[i].resize(width, 0);
    }
    foregroundBuffer.resize(height, std::vector<int>(width, 0));
    for (int i = 0; i < height; i++) {
        foregroundBuffer[i].resize(width, 0);
    }
    textBuffer = std::vector<std::string>(height, std::string(width, ' '));
    this->width = width;
    this->height = height;
}

std::pair<int, int> TuiRenderer::getTerminalSize() {
    winsize w;
    ioctl(STDOUT_FILENO, TIOCGWINSZ, &w);
    return std::make_pair(w.ws_col, w.ws_row);
}

void TuiRenderer::render() {
    for (int i = 0; i < this->height; i++) {
        for (int j = 0; j < this->width; j++) {
            std::cout << 
                "\033[48;2;" << 
                (buffer[i][j] >> 16) << ";" << 
                ((buffer[i][j] >> 8) & 255) << ";" << 
                (buffer[i][j] & 255) << "m" << 

                "\033[38;2;" << (foregroundBuffer[i][j] >> 16) << ";" << 
                ((foregroundBuffer[i][j] >> 8) & 255) << ";" << 
                (foregroundBuffer[i][j] & 255) << "m" << 
                textBuffer[i][j];
        }
        std::cout << '\n';
    }
    resetPosition();
}

void TuiRenderer::setPixel(int x, int y, int color) {
    buffer[y][x * 2] = color;
    buffer[y][x * 2 + 1] = color;
}

void TuiRenderer::setPixelForeground(int x, int y, int color) {
    foregroundBuffer[y][x * 2] = color;
    foregroundBuffer[y][x * 2 + 1] = color;
}

void TuiRenderer::setTextBuffer(int x, int y, std::string ch) {
    textBuffer[y][x * 2] = ch[0];
}

void TuiRenderer::setGrid(int xPos, int yPos, int width, int height, int segSizeX, int segSizeY, int color) {
    for (int i = 0; i < height; i++) {
        for (int j = 0; j < width * segSizeX; j++) {
            setPixelForeground(xPos + j, yPos + i * segSizeY, color);
            setTextBuffer(xPos + j, yPos + i * segSizeY, std::string("-"));
        }
    }
    
    for (int i = 0; i < width * segSizeX; i++) {
        setPixelForeground(xPos + i, yPos + segSizeY * height, color);
        setTextBuffer(xPos + i, yPos + segSizeY * height, std::string("-"));
    }

    for (int i = 0; i < width; i++) {
        for (int j = 0; j <= height * segSizeY; j++) {
            setPixelForeground(xPos + i * segSizeX, yPos + j, color);
            setTextBuffer(xPos + i * segSizeX, yPos + j, std::string("|"));
        }
    }

    for (int i = 0; i <= height * segSizeY; i++) {
        setPixelForeground(xPos + width * segSizeX, yPos + i, color);
        setTextBuffer(xPos + width * segSizeX, yPos + i, std::string("|"));
    }
}
