require('L5')


--random strokeWeight
--thickness of lines
stWeight = random(1,8)
stWeightC = random(1,5)

--random alpha
rAlpha = random(10,20)
rAlphaC = random(.2,.5)

--random origin
rCords = random(10,400)
--random Increments
rI = random(800,1050)
--angle of lines
angle = random(360)
--space between lines
rSpace = random(2,20)

defaultCor = 0

randomColor = {random(50, 255), random(50, 255), random(80, 255)}

rColor = random(randomColor)

function setup()

  windowTitle("Proj2 - FOLDS")
 size(800,800)

end


function draw()
  

      background(random(fill({1,150,255})))
      stroke(stWeight)
      strokeWeight(stWeight)
  
      fill(0)

      background(0,225,0,20)

--for variable = start, stop, step do
  -- code to repeat
--end

--MAIN
      translate(-500,-500)

--SCRAP fill(rColor,rAlpha)

--PINK1
      stroke(255,72, 176,rAlpha)
      strokeWeight(stWeight)
      rotate(angle)
      for i = 1, #randomColor do
  
    for i = 1, 8, 1 do
  push()
      for lineX = 0, rI, rSpace do
    line(lineX, angle, rI, 100000)
      end
  pop()
  ---------
    end

   
--YELLOW1
--SCRAP fill(255,232, 0, rAlpha)

--translate(0,0)


      stroke(255,232, 0, rAlpha)
      strokeWeight(stWeight)
      rotate(angle)

      for i = 1, 8, 1 do
  push()
      for lineA = 0, rI, rSpace do
        line(lineA, angle, rI, 100000)
      end
  pop()
      end


--translate(0,0)

--BLUE1
      stroke(0, 120, 191, rAlpha)
      strokeWeight(stWeight)
      rotate(angle)
    for i = 1, 8, 1 do
  push()
    for lineB = 0, rI, rSpace do
    line(lineB, angle, rI, 100000)
    end
  
  pop()

------------------------------------------------------------
rTranslate = {1200, -500}      
translate(#rTranslate,#rTranslate)

--PINK CIRCLE
fill(255,72, 176,rAlphaC)
      stroke(255,72, 176, rAlpha)
      strokeWeight(stWeightC)
      rotate(angle)
    for i = 1, 2, 1 do
  push()
    for circX = 0, rI, 10 do
      --curve(x1,y1,x2,y2,x3,y3,x4,y4)
      circle(circX, circX, circX)
    
  end
  
  
  pop()

end

--YELLOW CIRCLE
fill(255,232, 0,rAlphaC)
      stroke(0255,232, 0, rAlpha)
      strokeWeight(stWeightC)
      rotate(angle)
    for i = 1, 2, 1 do
  push()
    for circA = 0, rI, 10 do
      --curve(x1,y1,x2,y2,x3,y3,x4,y4)
      circle(circA, circA, circA)
    
  end
  
  
  pop()

end

--BLUE CIRCLE
fill(0, 120, 191,rAlphaC)
      stroke(0, 120, 191, rAlpha)
      strokeWeight(stWeightC)
      rotate(angle)
    for i = 1, 5, 1 do
  push()
    for circB = 0, rI, 20 do
      --curve(x1,y1,x2,y2,x3,y3,x4,y4)
      circle(circB, circB, circB)
    
  end
  
  
  pop()

end
end


end
save('test1.png')
end
--end