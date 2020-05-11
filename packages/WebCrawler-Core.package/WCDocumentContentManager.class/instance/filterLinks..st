transformations
filterLinks: subString

    self links do: [:link | (link includesSubstring: subString) ifTrue: [
        Transcript show: link; cr ]]