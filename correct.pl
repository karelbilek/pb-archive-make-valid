$richpoor = $ARGV[0];
$from = $ARGV[1];
$to = $ARGV[2];

if ($richpoor ne "rich" && $richpoor ne "poor") {
    die "first argument must be  either 'rich' or 'poor'";
}



#ok, this script is pretty embarassing and very quick and dirty but well I just want to get it done
system '(
    echo \'<?xml version="1.0" encoding="utf-8"?>'.
                            
                            
                            #those are hosted on my github page
'    
<!DOCTYPE archive PUBLIC "piratebay'.$richpoor.'" "http://runn1ng.github.com/'.$richpoor.'.dtd">
<archive>\'; 
cat '.$from.'; 
echo "</archive>" ) | 
 perl -pne \'         #I want to escape every & -> &amp;, but not &lt; and &gt; that I escaped before
    while (/&((([^lg]|$)(.|$)(.|$))|((.|$)([^t]|$)(.|$))|((.|$)(.|$)([^;]|$)))/) {
        s/&((([^lg]|$)(.|$)(.|$))|((.|$)([^t]|$)(.|$))|((.|$)(.|$)([^;]|$)))/AAAmp;$1/g
    }; 
    s/AAAmp/&amp/g\' | 
        sed \'s/[[:cntrl:]]//g\' > '.$to;
        #I also want to escape all control chars
