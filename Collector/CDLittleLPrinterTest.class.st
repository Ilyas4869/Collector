Class {
	#name : #CDLittleLPrinterTest,
	#superclass : #TestCase,
	#category : #'Collector-Tests'
}

{ #category : #example }
CDLittleLPrinterTest class >> oneAuthor [
	<sampleInstance>
	^ '(author : Aldiss, Brian 
  (serie : helliconia  
   		(title: Le printemps d''helliconia (read: no) (style: SF) (price: 1))
  	 	(title: Helliconia, l''ete (read: no) (style: SF) (price: 1))
 	  	(title: L''hiver d''helliconia (read: no) (style: SF) (price: 1)))
  (books : default
    	( title: L''instant de l''eclipse (read: no) (style: fantaisie) (price: 1))))'
]

{ #category : #tests }
CDLittleLPrinterTest >> testPrintAuthor [
	| author printer |
	author := CCollectorDLittleImporter new extractAuthorFromString: 'Ducasse, Stéphane'.
	printer := CDLittleLPrinter new.
	self assert: (printer print: author) equals: '(author : Ducasse, Stéphane)'
	
]

{ #category : #tests }
CDLittleLPrinterTest >> testPrintBook [
	| fullAuthor printer |
	fullAuthor := CCollectorDLittleImporter new extractAuthorFromString: self class oneAuthor.
	printer := CDLittleLPrinter new.
	self assert: (printer print: fullAuthor) equals: '(author : Ducasse, Stéphane)'
	
]