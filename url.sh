#!/bin/bash
read -p "What would you like to search? " QUERY
echo $QUERY
read -p "What category? [diy / tech / laptop / network] " CATEGORY


SEARCH="python3 -m  webbrowser"

## WEBSITES ##
SCREWFIX="https://www.screwfix.com/search?search="
WICKES="https://www.wickes.co.uk/search?text="
HOMEB="https://www.homebase.co.uk/elysium.search?search="
TOOLS="https://www.toolstation.com/search?q="
BNM="https://www.bmstores.co.uk/search?query="
WILKO="https://www.wilko.com/en-uk/search/?text="
BNQ="https://www.diy.com/search?term="
AMAZON="https://www.amazon.co.uk/s?k="
EBAY="https://www.ebay.co.uk/sch/i.html?_nkw="
ARGOS="https://www.argos.co.uk/search/"
JOHN="https://www.johnlewis.com/search?search-term="
HALFORD="https://www.halfords.com/search?q="
JEWSON="https://www.jewson.co.uk/search?text="
# SUPPLIER
MSDIS="https://www.msdist.co.uk/search?q="
LITX="https://linitx.com/search.php?keywords="
SCAN="https://www.scan.co.uk/search?q="
COMMS="https://www.comms-express.com/search/"
BOX="https://www.box.co.uk/products/ex/true/keywords/"
LDIR="https://www.laptopsdirect.co.uk/search-results/"
#BALLI="https://www.ballicom.co.uk/#/dfclassic/query=display&session_id=56316b866613eb476f8c41a165b0cc3d&query_name=match_and"
# 3D Printing
THING="https://www.thingiverse.com/search?q="


case $CATEGORY in

  diy)
    $SEARCH "$SCREWFIX$QUERY"
    $SEARCH "$WICKES$QUERY"
    $SEARCH "$HOMEB$QUERY"
    $SEARCH "$TOOLS$QUERY"
    $SEARCH "$BNM$QUERY"
    $SEARCH "$WILKO$QUERY"
    $SEARCH "$BNQ$QUERY"
    $SEARCH "$AMAZON$QUERY"
    $SEARCH "$EBAY$QUERY"
    $SEARCH "$ARGOS$QUERY"
    $SEARCH "$HALFORD$QUERY"
    $SEARCH "$JEWSON$QUERY"
    test
   ;; 
  
  tech)
    $SEARCH "$AMAZON$QUERY"
    $SEARCH "$EBAY$QUERY"
    $SEARCH "$ARGOS$QUERY"
    $SEARCH "$SCAN$QUERY"
    ;;

  laptop)
    $SEARCH "$AMAZON$QUERY"
    $SEARCH "$EBAY$QUERY"
    $SEARCH "$SCAN$QUERY"
    $SEARCH "$BOX$QUERY"
    $SEARCH "$LDIR$QUERY"
    $SEARCH "$JOHN$QUERY"
    ;;

   network)
    $SEARCH "$AMAZON$QUERY"
    $SEARCH "$MSDIS$QUERY"
    $SEARCH "$LITX$QUERY"
    $SEARCH "$COMMS$QUERY"
    ;;
  
  *)
    echo -n "unknown category"
    ;;
esac
