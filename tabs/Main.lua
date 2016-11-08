-- Lesson 4a

-- created by Andre Hazim
-- created on oct 2016
-- created for ICS20
-- This program displays an image on the the screen and moves it

-- global variables
local beetle
local ship

-- Use this fuction to preform your intial setup
function setup()
    -- sets up display mode
    supportedOrientations (LANDSCAPE_ANY)
    displayMode(FULLSCREEN)
    noFill()
    noSmooth()
    noStroke()
    pushStyle()
    
   -- get image info
    beetle = SpriteObject("SpaceCute:Beetle Ship", vec2 (WIDTH/2, HEIGHT/2))
    ship = SpriteObject("SpaceCute:Rocketship", vec2 (WIDTH/2, HEIGHT/4))
end

function touched(touch)
    -- local variable
    
    -- do coding here
    beetle:touched(touch)  
    ship:touched(touch)      
end

-- this fuction gets called once every frame
function draw()
    -- moves the sprites 
   
    -- do your drawing here 
    background(40, 40, 50)
    sprite("SpaceCute:Background", WIDTH/2, HEIGHT/2, WIDTH, HEIGHT)
    beetle:draw()
    ship: draw()    
end