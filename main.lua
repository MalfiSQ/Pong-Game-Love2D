require('src/player')
require('src/ball')

function love.load()
    player.load()
    ball.load()
end

function love.update(dt)
    player.update(dt)
    ball.update(dt)
end

function love.draw()
    player.draw()
    ball.draw()
end