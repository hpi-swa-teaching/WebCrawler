# WebCrawler
A simple to use and basic Web Crawler for Squeak.

## Overview
This WebCrawler package currently supports basic web crawling through a given link, a simple filter option and an AutoCrawler-mode.

## Usage(UI)

To start the link crawl ui, use this example:
```
WCUserInterface new
```

## Usage (Core)
To start a basic Crawl, use this example:
```
w := WCrawler new.
w crawl: 'http://www.google.com'
```
and you can retrieve the links from this page using ``w links``.

To start auto-crawling a page, simply use:
```
u := WCrawler new.
u startAutoCrawl: 'http://www.google.com'
```
(and to terminate the crawling process, use ``u abortAutoCrawling``.

## Development status

This is our 6th release, featuring a simple yet powerful webcrawler api. Also there are a few UIs that let you experience the crawlers results in a pretty awesome way. E.g. you can explore the inter-website-connections in our interactive site graph user interface or you can search through the also interactive site map ui.

Enjoy!
