# generated with VANTED V2.7.2 at Mon Aug 10 20:32:50 CEST 2020
graph [
  graphbackgroundcolor "#ffffff"
  sbgn [
    role "ACTIVITYFLOW"
  ]
  directed 1
  node [
    id 1
    zlevel -1

    graphics [
      x 50.0
      y 190.0
      w 80.0
      h 40.0
      fill "#FFFFFF"
      outline "#000000"
      frameThickness 2.0
      gradient 0.0
      opacity 1.0
      rounding 0.0
      type "rectangle"
    ]
    label "A1"
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
      fontSize 10
      fontStyle "plain,circle"
      labelOffset [
        x 0.0
        y 0.0
      ]
      position [
        localAlign 0.0
        relHor 0.0
        relVert 0.0
      ]
      text " "
      type "text"
    ]
    sbgn [
      glyphid "A1"
      role "BIOLOGICALACTIVITY"
    ]
  ]
  node [
    id 2
    zlevel -1

    graphics [
      x 214.5
      y 136.5
      w 36.0
      h 36.0
      fill "#FFFFFF"
      outline "#000000"
      frameThickness 2.0
      gradient 0.0
      opacity 1.0
      rounding 0.0
      type "oval"
    ]
    label "AND"
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
      glyphid "and-729"
      role "ANDOPERATOR"
    ]
  ]
  node [
    id 3
    zlevel -1

    graphics [
      x 250.0
      y 190.0
      w 80.0
      h 40.0
      fill "#FFFFFF"
      outline "#000000"
      frameThickness 2.0
      gradient 0.0
      opacity 1.0
      rounding 0.0
      type "rectangle"
    ]
    label "A2"
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
      anchor "btr"
      color "#000000"
      fontName "Arial"
      fontSize 10
      fontStyle "plain,circle"
      labelOffset [
        x 0.0
        y 0.0
      ]
      position [
        localAlign 0.0
        relHor 0.0
        relVert 0.0
      ]
      text " "
      type "text"
    ]
    sbgn [
      glyphid "A2"
      role "BIOLOGICALACTIVITY"
    ]
  ]
  node [
    id 4
    zlevel -1

    graphics [
      x 175.0
      y 100.0
      w 36.0
      h 36.0
      fill "#FFFFFF"
      outline "#000000"
      frameThickness 2.0
      gradient 0.0
      opacity 1.0
      rounding 0.0
      type "oval"
    ]
    label "NOT"
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
      glyphid "glyph3"
      role "NOTOPERATOR"
    ]
  ]
  node [
    id 5
    zlevel -1

    graphics [
      x 155.0
      y 35.0
      w 80.0
      h 40.0
      fill "#FFFFFF"
      outline "#000000"
      frameThickness 2.0
      gradient 0.0
      opacity 1.0
      rounding 0.0
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
      glyphid "glyph1"
      role "BIOLOGICALACTIVITY"
    ]
  ]
  node [
    id 19
    zlevel -1

    graphics [
      x 89.5
      y 136.5
      w 36.0
      h 36.0
      fill "#FFFFFF"
      outline "#000000"
      frameThickness 2.0
      gradient 0.0
      opacity 1.0
      rounding 0.0
      type "oval"
    ]
    label "AND"
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
      glyphid "glyph2"
      role "ANDOPERATOR"
    ]
  ]
  node [
    id 20
    zlevel -1

    graphics [
      x 130.0
      y 100.0
      w 36.0
      h 36.0
      fill "#FFFFFF"
      outline "#000000"
      frameThickness 2.0
      gradient 0.0
      opacity 1.0
      rounding 0.0
      type "oval"
    ]
    label "NOT"
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
      glyphid "glyph4"
      role "NOTOPERATOR"
    ]
  ]
  edge [
    id 6
    source 2
    target 3
    SBGN [
      BendOut "250.5;136.5"
    ]
    graphics [
      fill "#000000"
      outline "#000000"
      Line [
        point [ x 0.0 y 0.0 ]
        point [ x 250.5 y 136.5 ]
        point [ x 0.0 y 0.0 ]
      ]
      arrow "last"
      arrowheadstyle "stimulation"
      frameThickness 1.5
      gradient 0.0
      opacity 1.0
      rounding 5.0
      type "org.graffiti.plugins.views.defaults.PolyLineEdgeShape"
      thickness 15.0
    ]
    sbgn [
      glyphid "positive-influence-732"
      role "POSITIVEINFLUENCE"
    ]
  ]
  edge [
    id 8
    source 5
    target 4
    SBGN [
      BendIn "175.0;64.0"
    ]
    graphics [
      fill "#000000"
      outline "#000000"
      Line [
        point [ x 0.0 y 0.0 ]
        point [ x 175.0 y 64.0 ]
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
      role "LOGICARC"
    ]
  ]
  edge [
    id 12
    source 4
    target 2
    SBGN [
      BendIn "178.5;136.5"
      BendOut "175.0;136.0"
    ]
    graphics [
      fill "#000000"
      outline "#000000"
      Line [
        point [ x 0.0 y 0.0 ]
        point [ x 175.0 y 136.0 ]
        point [ x 178.5 y 136.5 ]
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
      glyphid "arc2"
      role "LOGICARC"
    ]
  ]
  edge [
    id 18
    source 1
    target 2
    SBGN [
      BendIn "178.5;136.5"
    ]
    graphics [
      fill "#000000"
      outline "#000000"
      Line [
        point [ x 0.0 y 0.0 ]
        point [ x 178.5 y 136.5 ]
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
      glyphid "arc3"
      role "LOGICARC"
    ]
  ]
  edge [
    id 23
    source 20
    target 19
    SBGN [
      BendIn "125.5;136.5"
      BendOut "130.0;136.0"
    ]
    graphics [
      fill "#000000"
      outline "#000000"
      Line [
        point [ x 0.0 y 0.0 ]
        point [ x 130.0 y 136.0 ]
        point [ x 125.5 y 136.5 ]
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
      glyphid "arc4"
      role "LOGICARC"
    ]
  ]
  edge [
    id 26
    source 5
    target 20
    SBGN [
      BendIn "130.0;64.0"
    ]
    graphics [
      fill "#000000"
      outline "#000000"
      Line [
        point [ x 0.0 y 0.0 ]
        point [ x 130.0 y 64.0 ]
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
      glyphid "arc5"
      role "LOGICARC"
    ]
  ]
  edge [
    id 32
    source 3
    target 19
    SBGN [
      BendIn "125.5;136.5"
    ]
    graphics [
      fill "#000000"
      outline "#000000"
      Line [
        point [ x 0.0 y 0.0 ]
        point [ x 125.5 y 136.5 ]
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
      glyphid "arc6"
      role "LOGICARC"
    ]
  ]
  edge [
    id 35
    source 19
    target 1
    SBGN [
      BendOut "58.5;136.5"
    ]
    graphics [
      fill "#000000"
      outline "#000000"
      Line [
        point [ x 0.0 y 0.0 ]
        point [ x 48.5 y 136.5 ]
        point [ x 0.0 y 0.0 ]
      ]
      arrow "last"
      arrowheadstyle "stimulation"
      frameThickness 1.5
      gradient 0.0
      opacity 1.0
      rounding 5.0
      type "org.graffiti.plugins.views.defaults.PolyLineEdgeShape"
      thickness 15.0
    ]
    sbgn [
      role "STIMULATION"
    ]
  ]
]
