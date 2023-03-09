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
    ballCollide(dt)
end

function ball.draw()
    love.graphics.rectangle('fill', ball.x, ball.y, ball.width, ball.height)
end

-- Ball functions
function ballMove(dt)
    ball.x = ball.x + ball.xVel * dt
    ball.y = ball.y + ball.yVel * dt
end

function ballCollide(dt)
    if checkCollision(ball, player) then
        ball.xVel = ball.speed
        local middleBall = ball.y + ball.height / 2
        local middlePlayer = player.y + player.height / 2
        local collisionPosition = middleBall - middlePlayer
        ball.yVel = collisionPosition * 5
    end

    if ball.y < 0 then
        ball.y = 0
        ball.yVel = -ball.yVel
    elseif ball.y + ball.height > love.graphics.getHeight() then
        ball.y = love.graphics.getHeight() - ball.height
        ball.yVel = -ball.yVel
    end
end