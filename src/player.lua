player = {}

function player.load()
    player.x = 50
    player.y = love.graphics.getHeight() / 2
    player.width = 20
    player.height = 100
    player.speed = 500
end

function player.update(dt)
    playerMovement(dt)
end

function player.draw()
    love.graphics.rectangle('fill', player.x, player.y, player.width, player.height)
end

-- Player functions
function playerMovement(dt)
    if love.keyboard.isDown("w") then
        player.y = player.y - player.speed * dt
    elseif love.keyboard.isDown("s") then
        player.y = player.y + player.speed * dt
    end
    -- Check borders
    if player.y < 0 then
        player.y = 0
    elseif player.y + player.height > love.graphics.getHeight() then
        player.y = love.graphics.getHeight() - player.height
    end
end