initialize-release
testSimpleStuff

	self object add: 'hello sir!'.
	self object add: 'aww man...'.
	
	self assert: (self object mayInclude: 'hello sir!') equals: true.
	self assert: (self object mayInclude: 'hello Sir!') equals: false.
	self assert: (self object mayInclude: 'hello') equals: false.
	self assert: (self object mayInclude: 'aww man...') equals: true.
	self assert: (self object mayInclude: 'aww man..') equals: false.
	
	self assert: (self object mayInclude: 'epstein didnt kill himself') equals: false.
	self object add: 'epstein didnt kill himself'.
	self assert: (self object mayInclude: 'epstein didnt kill himself') equals: true.
	