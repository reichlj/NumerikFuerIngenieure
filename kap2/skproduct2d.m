a = [2;1]
b = [1;3]

sk1 = a'*b
sk2 = b'*a
sk3 = dot(a,b)

laengea1 = sqrt(dot(a,a))
laengea2 = norm(a)

cosphi = dot(a,b)/(norm(a)*norm(b))
winkel = acosd( dot(a,b)/(norm(a)*norm(b)) )
bgmass = acos( dot(a,b)/(norm(a)*norm(b)) )
