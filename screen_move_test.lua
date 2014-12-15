#!/usr/bin/env lua

-- Table that specifies relative positions of monitors, based on screen numbers
-- Matrix [] where index 1,1 is the top left monitor, and 2,3 is the bottom right monitor
screenToCoords = {
    -- (1) Bottom Center
    { 2, 2 },
    -- (2) Top Center
    { 1, 2 },
    -- (3) Top Left
    { 1, 1 },
    -- (4) Bottom Left
    { 2, 1 },
    -- (5) Bottom Right
    { 2, 3 },
    -- (6) Top Right
    { 1, 3 }
}

coordinatesToScreenNumber = {
    -- i --> Top Row Screen Numbers
    { 3, 2, 6},
    -- i --> Bottom Row Screen Numbers
    { 4, 1, 5}
}

function setScreen(i, j)
    newScreen = coordinatesToScreenNumber[i][j]
    print("    Moved to screen " .. newScreen)
end

-- Movement functions
function moveUp (i, j)
    if(i > 1) then i = i - 1 end
    setScreen(i, j)
end

function moveDown (i, j)
    if(i < 2) then i = i + 1 end
    setScreen(i, j)
end

function moveLeft (i, j)
    if(j > 1) then j = j - 1 end
    setScreen(i, j)
end
function moveRight (i, j)
    if(j < 3) then j = j + 1 end
    setScreen(i, j)
end

-- Test move Left
print ("--------------")
print("Testing move Left on screen 1")
moveLeft(screenToCoords[1][1], screenToCoords[1][2])
print("Testing move Left on screen 2")
moveLeft(screenToCoords[2][1], screenToCoords[2][2])
print("Testing move Left on screen 3")
moveLeft(screenToCoords[3][1], screenToCoords[3][2])
print("Testing move Left on screen 4")
moveLeft(screenToCoords[4][1], screenToCoords[4][2])
print("Testing move Left on screen 5")
moveLeft(screenToCoords[5][1], screenToCoords[5][2])
print("Testing move Left on screen 6")
moveLeft(screenToCoords[6][1], screenToCoords[6][2])

-- Test move Right
print ("--------------")
print("Testing move Right on screen 1")
moveRight(screenToCoords[1][1], screenToCoords[1][2])
print("Testing move Right on screen 2")
moveRight(screenToCoords[2][1], screenToCoords[2][2])
print("Testing move Right on screen 3")
moveRight(screenToCoords[3][1], screenToCoords[3][2])
print("Testing move Right on screen 4")
moveRight(screenToCoords[4][1], screenToCoords[4][2])
print("Testing move Right on screen 5")
moveRight(screenToCoords[5][1], screenToCoords[5][2])
print("Testing move Right on screen 6")
moveRight(screenToCoords[6][1], screenToCoords[6][2])

-- Test move Up
print ("--------------")
print("Testing move Up on screen 1")
moveUp(screenToCoords[1][1], screenToCoords[1][2])
print("Testing move Up on screen 2")
moveUp(screenToCoords[2][1], screenToCoords[2][2])
print("Testing move Up on screen 3")
moveUp(screenToCoords[3][1], screenToCoords[3][2])
print("Testing move Up on screen 4")
moveUp(screenToCoords[4][1], screenToCoords[4][2])
print("Testing move Up on screen 5")
moveUp(screenToCoords[5][1], screenToCoords[5][2])
print("Testing move Up on screen 6")
moveUp(screenToCoords[6][1], screenToCoords[6][2])

-- Test move Down
print ("--------------")
print("Testing move Down on screen 1")
moveDown(screenToCoords[1][1], screenToCoords[1][2])
print("Testing move Down on screen 2")
moveDown(screenToCoords[2][1], screenToCoords[2][2])
print("Testing move Down on screen 3")
moveDown(screenToCoords[3][1], screenToCoords[3][2])
print("Testing move Down on screen 4")
moveDown(screenToCoords[4][1], screenToCoords[4][2])
print("Testing move Down on screen 5")
moveDown(screenToCoords[5][1], screenToCoords[5][2])
print("Testing move Down on screen 6")
moveDown(screenToCoords[6][1], screenToCoords[6][2])
