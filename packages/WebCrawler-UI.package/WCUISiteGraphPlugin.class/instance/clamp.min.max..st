graphUpdating
clamp: aPoint min: aPoint2 max: aPoint3

	"^ ((aPoint x max: aPoint2 x) min: aPoint3 x) @ ((aPoint y max: aPoint2 y) min: aPoint3 y)"
	^ (aPoint max: aPoint2) min: aPoint3