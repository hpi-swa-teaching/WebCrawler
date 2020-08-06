crawling
crawl: aUrlString

	(self robotsTXTPermits: aUrlString)
		ifTrue: [
			[	self fetcher fetch: aUrlString.
				self parser parse: (self fetcher documentContent) from: aUrlString]
				on: Exception
				do: [
					Transcript show: 'Failed to crawl Url: ', aUrlString, '!'; cr.
					^ self].
			self storage store: self parser links source: aUrlString.
			self reportStatus]