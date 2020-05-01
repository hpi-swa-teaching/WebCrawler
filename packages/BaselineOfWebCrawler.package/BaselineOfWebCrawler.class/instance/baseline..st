baseline
baseline: spec
    <baseline>
    spec
        for: #'common'
        do: [ 
            spec
                package: 'WebCrawler-Core';
                package: 'WebCrawler-Tests' with: [ spec requires: #('default')];
		    yourself.
            spec
                group: 'default' with: #('WebCrawler-Core');
                group: 'Tests' with: #('WebCrawler-Tests')];
		    yourself