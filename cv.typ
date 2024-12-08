#set page(
  paper: "us-letter",
  margin: (x: 1cm, y: 1cm),
)
#set par(justify: true)
#set text(
  font: "New Computer Modern",
  size: 11pt,
)

#let title(title) = box(text(font: "Inter", size: 48pt)[ * #title * ])
#let sec_title(title) = box(text(font: "Inter", size: 12pt, upper(strong(title))))
#let item_title(title) = box(text(font: "New Computer Modern", size: 14pt)[ #title ])

#let job(
  company: none,
  note: none,
  time: none,
  place: none,
  desc: none,
) = {
  text(size: 16pt)[ * #company * --- _ #note _ ]
  linebreak()
  text(size: 12pt)[ * #time * --- #place ]
  linebreak()
  text(size: 12pt)[ #desc ]
}

#let project(
  name: none,
  note: none,
  date: none,
  links: (),
  desc: none,
) = {
  text(size: 16pt)[ * #name * --- _ #note _ ]
  linebreak()
  text(size: 12pt)[ * #date * ]

  if links.len() > 0 [ -- ] else [ ]
  links.map(l => link(l.url, underline(strong(l.title)))).join(" / ")

  linebreak()
  text(size: 12pt)[ #desc ]
}

#title[Gaëtan Almela]

My name is Gaëtan, I'm a Rust developer at Ransky Tech.

#box(
  height: 18pt,
  align(
    center + horizon,
    grid(
      columns: (1fr, 1fr, 1fr),
      link("https://almela.io")[ *almela.io* ],
      text()[ gaetan\@*almela.io* ],
      link("https://github.com/llGaetanll")[github.com\/*llGaetanll*]
    )
  )
)

#sec_title[Work Experience]

#job(
  company: [ Ransky Tech ],
  note: [ Proprietary trading ],
  time: [ Jul 2024 – Present ],
  place: [ Maryland ],
  desc: [
    Using Rust to build efficient proprietary trading software.
  ]
)

#job(
  company: [ SIG ],
  note: [ Real-world trading software ],
  time: [ Jun – Aug 2023 ],
  place: [ Philadelphia ],
  desc: [
    Implemented an inter-process communication system for
    software used by hundreds of traders per day.
  ]
)

#job(
  company: [ Arandis  ],
  note: [ Data science in finance ],
  time: [ Mar – Apr 2021 ],
  place: [ France ],
  desc: [
    Developed over 60 fully automated web scrapers to extract ETF fund data
    everyday.
  ]
)

#job(
  company: [ Amazon Marketplace ],
  note: [ Scraping the web ],
  time: [ Jan – Mar 2019 ],
  place: [ France ],
  desc: [
    Developed a fully automated marketplace scraper to extract
    over 30,000 data points from competitors including pric-
    ing, and seller databases.
  ]
)

#sec_title[Projects]

#project(
  name: [ Protocash ],
  note: [ Zero Knowledge in Action ],
  date: [ 2024 ],
  links: (
    (
      title: "GitHub",
      url: "https://github.com/llGaetanll/protocash"
    ),
  ),
  desc: [
    A layer 1 cryptocurrency built in Rust, using cometbft with a focus on
    privacy and speed. All transactions are completely private and performed in
    zero-knowledge.
  ]
)

#project(
  name: [ Wave Function Collapse ],
  note: [ Safety meets performance ],
  date: [ 2023 -- 2024 ],
  links: (
    (
      title: "GitHub",
      url: "https://github.com/llGaetanll/wfc"
    ),
  ),
  desc: [
    Implemented the Wave Function Collapse algorithm in Rust with compile time
    type checking, parallel processing, and arbitrary dimensional space and input
    type.
  ]
)

/*
#project(
  name: [ obx ],
  note: [ Object manipulation done right ],
  date: [ 2022 ],
  desc: [
    obx is a fast, tiny, well documented, and battle-tested object manipulation
    library for JavaScript with over 1000 tests. It is used in many of my projects
    including some listed below.
  ]
)
*/

#project(
  name: [ Accents ],
  note: [ Accent support for Chrome ],
  date: [ 2019 ],
  links: (
    (
      title: "GitHub",
      url: "https://github.com/eulibot/accents"
    ),
    (
      title: "WebStore",
      url: "https://chromewebstore.google.com/detail/accents-spanish-portugues/laiognlohmgkmlfchcclnjnafgeinnpg"
    ),
  ),
  desc: [
    Co-founder of Accents, an extension for Chrome that adds easy accents to the keyboard. It emulates the accent
    system of MacOS while adding keyboard shortcuts and functionalities. At its peak, the extension had over
    40,000 users.
  ]
)

#sec_title[Education]

#text(size: 14pt)[ *University of Maryland* --- _ CS & Math Double Degree _]
#linebreak()
#text(size: 12pt)[ Aug 2019 --- May 2024 ]
  
*CMSC320* Data Science, *CMSC420* Data Structures, *CMSC422* Machine Learning,
*CMSC424* Database Design, *CMSC451* Advanced Algorithms, *STAT410* Probability
Theory.

#sec_title[Miscelanious]

Efficient with GNU/Linux, Fluent in English and French, Rubik’s Cube World Championship
2017 Participant.
