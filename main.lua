require('src/player')
require('src/ball')
require('src/ai')

function love.load()
    player.load()
    ball.load()
    AI.load()
end

function love.update(dt)
    player.update(dt)
    ball.update(dt)
    AI.update(dt)
end

function love.draw()
    player.draw()
    ball.draw()
    AI.draw()
end

-- Functions | AABB Collision
function checkCollision(a, b)
    if a.x + a.width > b.x and a.x < b.x + b.width and a.y + a.height > b.y and a.y < b.y + b.height then
        return true
    else
        return false
    end
end