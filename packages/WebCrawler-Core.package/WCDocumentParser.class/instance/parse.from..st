parsing
parse: aByteStream from: anUrl

    self links: OrderedCollection new.
    self links add: anUrl.
    self documentRoot: (HtmlParser parse: aByteStream).
    self sourceUrl: (self extractSecondLevelDomain: anUrl).
    self traverseDocumentTree: self documentRoot.