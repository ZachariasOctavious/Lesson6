-- MainScene
-- Lesson6

-- Created by: Zacharias Octavious 
-- Created on: Nov - 2015
-- Created for: ICS2O
-- This is the second scene

MainScene = class()

--global to this file
local moveBackButton

function MainScene:init()

    moveBackButton = Button("Cargo Bot:Command Left", vec2(WIDTH/2, HEIGHT/2))
end

function MainScene:draw()
    -- Codea does not automatically call this method
    
    background(0, 129, 255, 255)
    moveBackButton:draw()
end

function MainScene:touched(touch)
    -- Codea does not automatically call this method
    moveBackButton:touched(touch)
    
    if(moveBackButton.selected == true) then
        Scene.Change("splash")
    end
end