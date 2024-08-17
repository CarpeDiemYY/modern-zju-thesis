#import "../utils/fonts.typ": 字号, 字体
#import "../utils/datetime-display.typ": datetime-display
#import "./bachelor-template-individual.typ": bachelor-template-individual

#let bachelor-eval(scores: none) = {
  bachelor-template-individual("本科生毕业论文（设计）考核", outlined: true)[
    #set text(weight: "bold", size: 字号.小四)
    一、指导教师对毕业论文（设计）的评语：<no-header>\

    #v(50mm)
    #align(right)[
      指导教师（签名）#box(width: 5em, stroke: (bottom: 0.5pt))\
      年#h(2em)月#h(2em)日
    ]

    #v(1em)
    二、答辩小组对毕业论文（设计）的答辩评语及总评成绩：
    #v(1fr)

    #table(
      columns: 6,
      align: center,
      [成绩比例],
      [文献综述#linebreak() （10%）],
      [开题报告#linebreak()（15%）],
      [外文翻译#linebreak()（5%）],
      [毕业论文质量及答辩#linebreak()（70%）],
      [总评成绩],

      [分值], ..(
        if scores == none {
          ()
        } else {
          (
            [#scores.at(0)],
            [#scores.at(1)],
            [#scores.at(2)],
            [#scores.at(3)],
            [#scores.sum()],
          )
        }
      )
    )

    #align(right)[
      负责人（签名）#box(width: 5em, stroke: (bottom: 0.5pt))\
      年#h(2em)月#h(2em)日
    ]
  ]
}