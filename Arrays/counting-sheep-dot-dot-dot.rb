def countSheeps array
  array.count { | x | x == true}
end


### or

def countSheeps array
    array.count(true)
end
