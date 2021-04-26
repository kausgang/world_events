# World-Events

World-Events gives a database of important historical events that took place in different countries of world on the same year. It is the end result of a series of web scraping projects on Wikipedia. 

## Motivation

Wikipedia provides timelines of historical events for different countries. Timeline of a particular country for example, lists the important historical events that took place in different years in that country's history.

> See the list of Historical Timelines by country at https://en.wikipedia.org/wiki/Category:Timelines_by_country

As timelines of multiple countries are available, all the data are in disjoint sets - grouped by the countries. But world events didn't take place in isolation. Events in one country affeced/caused other major events in different other countries. It only makes sense if the events of different countries are there in one place - under the year that the events took place in.

An example can be - 

In 1945
- Japan  - surrendered to Allied powers
- Germany - Hitler committed suicide  
- India - Wavell Plan Simla Conference  
- USA - dropped atom bomb on Japan.
- France - Establishment of the United Nations (UN) with France having a veto on the Security Council.
etc.

Another trivia that many of us might not know - in 1863, when Swami Vivekananda was born in India, Englang tested it's first underground railway in London.

## Challenges

Since wikipedia is a crowd sourced application, the pages from which the data have been scraped, can change. Although history won't change, but the page design or content/layout or the existence of the page itself can wildly change over time. Some bots use to scrape the page thus can fail at some point. But since the data has already been captured, the data remains in this repository.

One example of such incident is - the timeline of USA history page on wikipedia ("https://en.wikipedia.org/wiki/Timeline_of_United_States_history") no longer exists.

> Although the USA history is no longer available in timeline format, it exists in form of JSON files as a result of a previous scrape at https://github.com/kausgang/world_at_a_glance/tree/master/public/DATABASE


## Associated Projects 

This project takes help of three other projects.

1. Scrape a Single Page
- Scrapes a single Wikipedia timeline HTML page and saves the data in JSON file
  - https://github.com/kausgang/wiki_timeline-array
2. Dynamically generate Scrapper bots and run them
- Dynamically generate scrapper bots for all the timelines provided as input.
- Runs those bots to collect timeline data for the countries mentioned as input.
  - https://github.com/kausgang/collect_wiki_timline_data
3. Collate Timelines
- Collate all the country's JSON files to create a master database.
  - https://github.com/kausgang/collate_wiki_timeline


## Legalities

Wikipedia pages are publicly available and it's perfectly legal to extract content off it's page. Since this project and the data it collects are not being used for commercial purposes, it does not violate any law.


## Uses

See a sample project created on this database
https://github.com/kausgang/world_at_a_glance
