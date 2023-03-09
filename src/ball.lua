ball = {}

function ball.load()
    ball.x = love.graphics.getWidth() / 2
    ball.y = love.graphics.getHeight() / 2
    ball.width = 20
    ball.height = 20
    ball.speed = 200
    ball.xVel = -ball.speed
    ball.yVel = 0
end

function ball.update(dt)
    ballMove(dt)
end

function ball.draw()
    love.graphics.rectangle('fill', ball.x, ball.y, ball.width, ball.height)
end

-- Ball functions
function ballMove(dt)
    ball.x = ball.x + ball.xVel * dt
    ball.y = ball.y + ball.yVel * dt
end