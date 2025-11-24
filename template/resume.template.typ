#import "styles.typ": *

#let item-box(
  title: "",
  font-size: 12pt,
  content
) = [
  #text(14pt)[
    #box(
      width: 100%,
      inset: 0.5em,
      fill: aqua-3
    )[*#title*]
  ]
  #text(font-size)[
    #box[#content]
  ]
]

#let edu(
  school: "",
  level: "",
  date: ""
) = [
  #text(14pt)[#level] \
  #school \
  #date \
]
