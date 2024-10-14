#include <tuiRenderer.hpp>
#include <iostream>

int main() {
    std::pair<int, int> terminalSize = TuiRenderer::getTerminalSize();
    TuiRenderer tuiRenderer(terminalSize.first, terminalSize.second);
    tuiRenderer.setBackgroundColor(TuiRenderer::rgb(50, 60, 80));
    tuiRenderer.setGrid(10, 10, 8, 8, 4, 4, TuiRenderer::rgb(255, 255, 255));
    tuiRenderer.render();

    while (true) {
        if (TuiRenderer::getTerminalSize() != terminalSize) {
            terminalSize = TuiRenderer::getTerminalSize();
            tuiRenderer.resize(terminalSize.first, terminalSize.second);
            tuiRenderer.setBackgroundColor(TuiRenderer::rgb(50, 60, 80));
            int segSize = terminalSize.first / 3 / 2 / 8;
            int offset = terminalSize.first / 3 / 2;
            tuiRenderer.setGrid(offset, 10, 8, 8, segSize, segSize, TuiRenderer::rgb(255, 255, 255));
            tuiRenderer.render();
        }
    }
    return 0;
}
