#pragma once

#include <string>
#include <utility>
#include <vector>

#define TUI_BLACK 0
#define TUI_RED 

class TuiRenderer {
private:
    int width;
    int height;
    std::vector<std::vector<int>> buffer;
    std::vector<std::vector<int>> foregroundBuffer;
    std::vector<std::string> textBuffer;
    
public:
    TuiRenderer(int width, int height);

    static int rgb(int r, int g, int b);
    static void moveCursor(int x, int y);
    static void resetPosition();
    static std::pair<int, int> getTerminalSize();

    void setBackgroundColor(int color);
    void resize(int width, int height);
    void reset();
    void render();
    void setPixel(int x, int y, int color);
    void setPixelForeground(int x, int y, int color);
    void setTextBuffer(int x, int y, std::string text);
    void setGrid(int xPos, int yPos, int width, int height, int segSizeX, int segSizeY, int color);
};

extern TuiRenderer tuiRenderer;
