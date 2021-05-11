data Direction = North | South | East | West
data Order = LeftTurn Int | RightTurn Int | Forward

reverseCourse :: Direction -> Direction
reverseCourse North = South
reverseCourse South = North
reverseCourse East = West
reverseCourse West = East

turn :: Order -> Direction -> Direction
turn (RightTurn n) currentHeading = turn (LeftTurn (4 - n)) currentHeading
turn (LeftTurn 0) currentHeading = currentHeading
turn (LeftTurn 1) North = West
turn (LeftTurn 1) West = South
turn (LeftTurn 1) South = East
turn (LeftTurn 1) East = North
turn (LeftTurn 2) currentHeading = reverseCourse currentHeading
turn (LeftTurn 3) currentHeading = turn (LeftTurn 1) (reverseCourse currentHeading)
turn _ heading = heading

-- status is a tuple of longitude, latitude, and heading
type Status = (Int, Int, Direction)

executeOrder :: Order -> Status -> Status
executeOrder Forward (lon, lat, North) = (lon, lat + 1, North)
executeOrder Forward (lon, lat, South) = (lon, lat - 1, South)
executeOrder Forward (lon, lat, East) = (lon + 1, lat, East)
executeOrder Forward (lon, lat, West) = (lon - 1, lat, West)
executeOrder turnOrder (lon, lat, heading) = 
    let newHeading = turn turnOrder heading
    in (lon, lat, newHeading)
