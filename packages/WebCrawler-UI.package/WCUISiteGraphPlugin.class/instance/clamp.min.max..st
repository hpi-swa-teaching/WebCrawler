graphUpdating
clamp: aPoint min: aPoint2 max: aPoint3

	"Transcript show: 'in: ', aPoint, ' mi: ', aPoint2, ' ma: ', aPoint3;cr."
	^ ((aPoint x max: aPoint2 x) min: aPoint3 x) @ ((aPoint y max: aPoint2 y) min: aPoint3 y)