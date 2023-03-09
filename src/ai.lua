AI = {}

function AI.load()
    AI.width = 20
    AI.height = 100
    AI.x = love.graphics.getWidth() - AI.width - 50
    AI.y = love.graphics.getHeight() / 2
    AI.yVel = 0
    AI.speed = 500

    AI.timer = 0
    AI.rate = 0.5
end

function AI.update(dt)
    move(dt)
    AI.timer = AI.timer + dt
    if AI.timer > AI.rate then
        AI.timer = 0
        acquireTarget(dt)
    end
end

function AI.draw()
    love.graphics.rectangle('fill', AI.x, AI.y, AI.width, AI.height)
end

-- AI functions
function move(dt)
    AI.y = AI.y + AI.yVel * dt
end

function acquireTarget(dt)
    if ball.y + ball.height < AI.y then
        AI.yVel = -AI.speed
    elseif ball.y > AI.y + AI.height then
        AI.yVel = AI.speed
    else
        AI.yVel = 0
    end
end