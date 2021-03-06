private
logToChangeLog: postDictionary
	| lines |
	lines := ((String streamContents: [ :stream | 
		(postDictionary at: 'text') linesDo: [ :each | 
			each trimBoth ifNotEmpty: [ stream << each; cr ] ] ])
			withNoLineLongerThan: 80)
			lines.
	^ String streamContents: [ :stream | 
			stream << '  * ' << lines first; cr.
			lines allButFirst
				do: [ :each | stream << '    ' << each ]
				separatedBy: [ stream cr ]]