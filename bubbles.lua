local Bubbles = {}

function Bubbles.CreateBubbles(largeur, hauteur)
    -- bubble definition
    bubble = {}
    bubble.x = largeur / 2
    bubble.y = hauteur / 2
    bubble.r = 10
    bubble.vitesse_x = 4
    bubble.vitesse_y = 4
end

function Bubbles.ShowBubbles()
    love.graphics.circle("fill", bubble.x, bubble.y, bubble.r)
end

function Bubbles.UpdateBubbles(dt, largeur, hauteur)
    -- bubble course
    bubble.x = bubble.x + bubble.vitesse_x
    bubble.y = bubble.y + bubble.vitesse_y

    if bubble.x < 0 then
        bubble.vitesse_x = bubble.vitesse_x * -1
    end
    if bubble.y < 0 then
        bubble.vitesse_y = bubble.vitesse_y * -1
    end
    if bubble.x > largeur - bubble.r then
        bubble.vitesse_x = bubble.vitesse_x * -1
    end
    if bubble.y > hauteur - bubble.r then
        bubble.vitesse_y = bubble.vitesse_y * -1
    end
end

return Bubbles
