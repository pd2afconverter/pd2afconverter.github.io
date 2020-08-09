# generated with VANTED V2.7.2 at Sun Aug 09 17:15:44 CEST 2020
graph [
  graphbackgroundcolor "#ffffff"
  sbgn [
    role "PROCESSDESCRIPTION"
  ]
  directed 1
  node [
    id 2
    zlevel -1

    graphics [
      x 50.0
      y 40.0
      w 80.0
      h 40.0
      fill "#B1D992"
      outline "#000000"
      frameThickness 2.0
      gradient 0.0
      opacity 1.0
      rounding 0.0
      type "oval"
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
      glyphid "A1"
      role "UNSPECIFIEDENTITY"
    ]
  ]
  node [
    id 8
    zlevel -1

    graphics [
      x 160.0
      y 40.0
      w 42.0
      h 42.0
      fill "#FFFFFF"
      outline "#000000"
      frameThickness 2.0
      gradient 0.0
      opacity 1.0
      rounding 0.0
      type "oval"
    ]
    label "<html><b>AND"
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
      role "ANDOPERATOR"
    ]
  ]
  edge [
    id 11
    source 2
    target 8
    SBGN [
      BendIn "118.0;40.0"
    ]
    graphics [
      fill "#000000"
      outline "#000000"
      Line [
        point [ x 0.0 y 0.0 ]
        point [ x 118.0 y 40.0 ]
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
      role "LOGICARC"
    ]
  ]
]
