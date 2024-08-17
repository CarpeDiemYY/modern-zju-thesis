#import "../utils/fonts.typ": 字号, 字体
#import "../utils/datetime-display.typ": datetime-display


#let bachelor-template-individual(
  twoside: false,
  outlined: false,
  pagetitle,
  s,
) = {

  context {
    pagebreak(
      weak: true,
      to: if twoside {
        "odd"
      },
    )
    set text(font: 字体.仿宋)


    // 居中对齐
    align(center,
    // 将中文之间的空格间隙从 0.25 em 调整到 0.5 em
    text(size: 字号.三号, weight: "bold",)[
      #show heading: x => x.body
      #heading(pagetitle, numbering: none, level:2, outlined: outlined)
      #v(1em)]
    )

    block(width: 100%)[
      #set par(justify: true)
      #set text(size: 字号.四号)
      #s
    ]



  }
}