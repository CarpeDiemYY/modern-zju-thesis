#let appendix(title: "附录", level: 2, body) = {
  counter(heading).update(0)

  set heading(
    numbering: (..numbers) => {
      let clevel = numbers.pos().len()
      if (clevel <= level) {
        return none
      } else {
        return numbering("A ", ..numbers.pos().slice(level))
      }
    },
    supplement: [附录],
  )

  heading(title, numbering: none, level: level)
  body
}