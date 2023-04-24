local bubbles = require("bubbles")

function love.load()
    bubbles.CreateBubbles(love.graphics.getWidth(), love.graphics.getHeight())
end

function love.update(dt)
    bubbles.UpdateBubbles(dt, love.graphics.getWidth(), love.graphics.getHeight())
end

function love.draw()
    bubbles.ShowBubbles()
end
