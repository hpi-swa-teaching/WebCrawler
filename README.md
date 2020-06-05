# WebCrawler
A simple to use and basic Web Crawler for Squeak.

## Overview
This WebCrawler package currently supports basic web crawling through a given link, a simple filter option and an AutoCrawler-mode.

## Usage(UI)

To start the link crawl ui, use this example:
```
w := WCSimpleLinkCrawlingUI new.
w openInWorld.
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
u := WCAutoCrawler new.
u start: 'http://www.google.com'
```
(and to terminate the crawling process, use ``u process terminate``.

## Development status

This is our first release, featuring a basic feature implementation without UI. In the following updates, we want to focus on UI and user experience.
