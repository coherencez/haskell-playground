journeycost :: Float -> Float -> Float
journeycost miles fuelcostperlitre =
 let milespergallon = 35
     litrespergallon = 4.55
     gallons = miles/milespergallon
 in (gallons*litrespergallon*fuelcostperlitre)
