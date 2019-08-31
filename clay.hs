{-# LANGUAGE OverloadedStrings #-}
import Clay

-- Colors
darkGrey = "#555"

main = putCss $
  do
    -- Basic elements
    star ?
      do  sym margin (unitless 0) 
          sym padding (unitless 0)
    body ?
      do  fontFamily ["Trebuchet MS", "Helvetica"] [sansSerif]
          fontSize (px 16)
          sym margin (px 8)
          background white
          color black
    iframe ?
      do width (pct 100)
         height (px 730)
    h1 ?
      do  fontSize inherit
          display inline
          fontWeight normal

    -- Navigation
    a ?
      do  color mediumBlue
          textDecoration none
    ul ?
      do  listStyleType none
          display inline
          li ?
            do display inline
    nav ?
      do  display inline
          li ?
            do marginLeft (px 15)

    -- Custom classes
    ".fullCalendar" ?
      do fontStyle italic
         color darkGrey
    ".currentWeek" ?      
      fontWeight bold
