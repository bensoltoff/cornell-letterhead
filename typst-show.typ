// typst-show.typ: Calls the letterhead template
#import "typst-template.typ": letter

#show: doc => letter(
$if(by-author)$
  authors: (
$for(by-author)$
$if(it.name.literal)$
    ( name: [$it.name.literal$],
      email: [$it.email$] ),
$endif$
$endfor$
  ),
$endif$
$if(date)$
  date: [$date$],
$endif$
  doc,
)