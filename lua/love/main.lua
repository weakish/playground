function love.load()
  love.graphics.setNewFont("fonts/wqy-microhei.ttc", 22)
  love.graphics.setColor(0,0,0)
  key = "none"
end

function love.mousepressed(x, y, button)
  if button == 'l' then
    key = "mouse pressed"
  end
end

function love.draw()
  love.graphics.print("This text is not black because of the line below", 100, 100)
  love.graphics.setColor(255,0,0)
  love.graphics.print("This text is red", 100, 200)
  love.graphics.print(key, 100, 300)
  love.graphics.print("汉字", 100, 400)
  love.graphics.circle()
end
