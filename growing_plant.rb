# Each day a plant is growing by upSpeed meters. Each night that plant's height decreases by downSpeed meters due to the lack of sun heat. Initially, plant is 0 meters tall. We plant the seed at the beginning of a day. We want to know when the height of the plant will reach a certain level.

def growing_plant(upSpeed, downSpeed, desiredHeight)
  if ((upSpeed - downSpeed) > desiredHeight)
    1
  else
    (desiredHeight / (upSpeed-downSpeed))
  end
end
