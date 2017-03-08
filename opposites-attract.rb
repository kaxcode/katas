def lovefunc( flower1, flower2 )
  if (flower1.even? && flower2.odd? ) || (flower1.odd? && flower2.even? )
    return true
  end
  if (flower1.even? && flower2.even? ) || (flower1.odd? && flower2.odd? )
    return false
  end
end


### OR

def lovefunc( flower1, flower2 )
  (flower1 + flower2).odd?
end
