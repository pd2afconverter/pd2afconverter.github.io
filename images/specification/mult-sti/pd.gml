# generated with VANTED V2.7.2 at Tue Aug 11 00:19:31 CEST 2020
graph [
  graphbackgroundcolor "#ffffff"
  sbgn [
    role "PROCESSDESCRIPTION"
  ]
  directed 1
  node [
    id 1
    zlevel -1

    graphics [
      x 250.0
      y 100.0
      w 80.0
      h 40.0
      fill "#FFFFFF"
      outline "#000000"
      frameThickness 2.0
      gradient 0.0
      opacity 1.0
      rounding 15.0
      type "rectangle"
    ]
    label "C"
    labelgraphics [
      alignment "center"
      anchor "c"
      color "#000000"
      fontName "Arial"
      fontSize 14
      fontStyle "plain"
      labelOffset [
        x 0.0
        y 0.0
      ]
      type "text"
    ]
    sbgn [
      glyphid "A2"
      role "MACROMOLECULE"
    ]
  ]
  node [
    id 2
    zlevel -1

    graphics [
      x 150.0
      y 35.0
      w 80.0
      h 40.0
      fill "#FFFFFF"
      outline "#000000"
      frameThickness 2.0
      gradient 0.0
      opacity 1.0
      rounding 15.0
      type "rectangle"
    ]
    label "A"
    labelgraphics [
      alignment "center"
      anchor "c"
      color "#000000"
      fontName "Arial"
      fontSize 14
      fontStyle "plain"
      labelOffset [
        x 0.0
        y 0.0
      ]
      type "text"
    ]
    sbgn [
      glyphid "C"
      role "MACROMOLECULE"
    ]
  ]
  node [
    id 8
    zlevel -1

    graphics [
      x 150.0
      y 180.0
      w 80.0
      h 40.0
      fill "#FFFFFF"
      outline "#000000"
      frameThickness 2.0
      gradient 0.0
      offX 10
      offY 10
      opacity 1.0
      rounding 15.0
      type "multirectangle"
    ]
    label "A"
    labelgraphics [
      alignment "center"
      anchor "c"
      color "#000000"
      fontName "Arial"
      fontSize 14
      fontStyle "plain"
      labelOffset [
        x 0.0
        y 0.0
      ]
      type "text"
    ]
    labelgraphics1 [
      alignment "center"
      anchor "btl"
      color "#000000"
      fontName "Arial"
      fontSize 11
      fontStyle "box"
      labelOffset [
        x 0.0
        y 0.0
      ]
      position [
        localAlign 0.0
        relHor 0.0
        relVert 0.0
      ]
      text "N:X"
      type "text"
    ]
    sbgn [
      glyphid "glyph1"
      role "MULTIMERMACROMOLECULE"
    ]
  ]
  node [
    id 9
    zlevel -1

    graphics [
      x 150.0
      y 100.0
      w 24.0
      h 24.0
      fill "#FFFFFF"
      outline "#000000"
      frameThickness 2.0
      gradient 0.0
      offX 10
      offY 10
      opacity 1.0
      rounding 0.0
      type "rectangle"
    ]
    sbgn [
      glyphid "glyph2"
      role "PROCESS"
    ]
  ]
  edge [
    id 12
    source 2
    target 9
    SBGN [
      BendIn "150.0;76.0"
    ]
    graphics [
      fill "#000000"
      outline "#000000"
      Line [
        point [ x 0.0 y 0.0 ]
        point [ x 150.0 y 76.0 ]
        point [ x 0.0 y 0.0 ]
      ]
      arrow "none"
      frameThickness 1.5
      gradient 0.0
      opacity 1.0
      rounding 5.0
      type "org.graffiti.plugins.views.defaults.PolyLineEdgeShape"
      thickness 15.0
    ]
    sbgn [
      glyphid "arc1"
      role "CONSUMPTION"
    ]
  ]
  edge [
    id 15
    source 9
    target 8
    SBGN [
      BendOut "150.0;124.0"
    ]
    graphics [
      fill "#000000"
      outline "#000000"
      Line [
        point [ x 0.0 y 0.0 ]
        point [ x 150.0 y 124.0 ]
        point [ x 0.0 y 0.0 ]
      ]
      arrow "last"
      frameThickness 1.5
      gradient 0.0
      opacity 1.0
      rounding 5.0
      type "org.graffiti.plugins.views.defaults.PolyLineEdgeShape"
      thickness 15.0
    ]
    sbgn [
      glyphid "arc2"
      role "PRODUCTION"
    ]
  ]
  edge [
    id 18
    source 1
    target 9
    graphics [
      fill "#000000"
      outline "#000000"
      arrow "last"
      arrowheadstyle "stimulation"
      frameThickness 1.5
      gradient 0.0
      opacity 1.0
      rounding 5.0
      thickness 15.0
    ]
    sbgn [
      glyphid "arc3"
      role "STIMULATION"
    ]
  ]
]
