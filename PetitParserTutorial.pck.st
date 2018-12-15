'From Cuis 4.2 of 25 July 2013 [latest update: #2739] on 12 December 2018 at 11:22:28.122613 am'!
'Description Please enter a description for this package'!
!provides: 'PetitParserTutorial' 1 5!
!requires: 'PetitParser' 1 6 nil!
!requires: 'Erudite' 1 73 nil!

!EruditeBook class methodsFor: '*PetitParserTutorial' stamp: 'MM 12/12/2018 11:16'!
petitparserTutorial

<book: 'PetitParser tutorial'>

^(EruditeBook basicNew title: 'PetitParser tutorial'; sections: ((OrderedCollection new) add: (EruditeBookSection basicNew title: 'Introduction'; document: (EruditeDocument contents: '!!!! PetitParser: Building modular parsers

with the participation of:
**Jan Kurs** //(kurs@iam.unibe.ch)//
**Guillaume Larcheveque** //(guillaume.larcheveque@gmail.com)//
**Lukas Renggli** //(renggli@gmail.com)//

Building parsers to analyze and transform data is a common task in software development. In this chapter we present a powerful parser framework called PetitParser. PetitParser combines many ideas from various parsing technologies to model grammars and parsers as objects that can be reconfigured dynamically. PetitParser was written by Lukas Renggli as part of his work on the Helvetia system 1 but it can be used as a standalone library.
'); subsections: ((OrderedCollection new)); yourself); add: (EruditeBookSection basicNew title: 'Writing parsers with PetitParser'; document: (EruditeDocument contents: '!!!! Writing parsers with PetitParser

PetitParser is a parsing framework different from many other popular parser generators. PetitParser makes it easy to define parsers with Smalltalk code and to dynamically reuse, compose, transform and extend grammars. We can reflect on the resulting grammars and modify them on-the-fly. As such PetitParser fits better the dynamic nature of Smalltalk.
Furthermore, PetitParser is not based on tables such as SmaCC and ANTLR. Instead it uses a combination of four alternative parser methodologies: scannerless parsers, parser combinators, parsing expression grammars and packrat parsers. As such PetitParser is more powerful in what it can parse. 

Let''s have a quick look at these four parser methodologies:

**Scannerless Parsers** combine what is usually done by two independent tools (scanner and parser) into one. This makes writing a grammar much simpler and avoids common problems when grammars are composed.
**Parser Combinators** are building blocks for parsers modeled as a graph of composable objects; they are modular and maintainable, and can be changed, recomposed, transformed and reflected upon.
**Parsing Expression Grammars** (PEGs) provide the notion of ordered choices. Unlike parser combinators, the ordered choice of PEGs always follows the first matching alternative and ignores other alternatives. Valid input always results in exactly one parse-tree, the result of a parse is never ambiguous.
**Packrat Parsers** give linear parse-time guarantees and avoid common problems with left-recursion in PEGs.'); subsections: ((OrderedCollection new) add: (EruditeBookSection basicNew title: 'Writing a simple grammar'; document: (EruditeDocument contents: '!!!!!! Writing a simple grammar

Writing grammars with PetitParser is as simple as writing Smalltalk code. For example, to define a grammar that parses identifiers starting with a letter followed by zero or more letters or digits is defined and used as follows:

[[[identifier := #letter asParser , #word asParser star.
identifier parse: ''a987jlkj''
]]] printItHere'); subsections: ((OrderedCollection new)); yourself); add: (EruditeBookSection basicNew title: 'Parsing some input'; document: (EruditeDocument contents: '!!!!!! Parsing some input

To actually parse a string (or stream) we use the method {PPParser>>parse: ::method} as follows:

[[[identifier parse: ''yeah'']]] printItHere
[[[identifier parse: ''f123'']]] printItHere

While it seems odd to get these nested arrays with characters as a return value, this is the default decomposition of the input into a parse tree. We''ll see in a while how that can be customized. If we try to parse something invalid we get an instance of {PPFailure::class} as an answer:

[[[identifier parse: ''123'']]] printItHere

This parsing results in a failure because the first character ( 1 ) is not a letter. Instances of PPFailure are the only objects in the system that answer with true when you send the message {isPetitFailure::selector}. Alternatively you can also use {PPParser>>parse:onError: ::method} to throw an exception in case of an error:

[[[identifier
   parse: ''123''
   onError: [ :msg :pos | self error: msg ] ]]] printItHere

If you are only interested if a given string (or stream) matches or not you can use the following constructs:

[[[identifier matches: ''foo'']]] printItHere
[[[identifier matches: ''123'']]] printItHere
[[[identifier matches: ''foo()'']]] printItHere

The last result can be surprising: indeed, a parenthesis is neither a digit nor a letter as was specified by the [[[#word asParser]]] expression. In fact, the identifier parser matches [[[''foo'']]] and this is enough for the {PPParser>>matches: ::method} call to return true . The result would be similar with the use of parse: which would return [[[#($f #($o $o))]]] .
If you want to be sure that the complete input is matched, use the message {PPParser>>end ::method} as follows:

[[[identifier end matches:''foo'']]] printItHere

The {PPParser>>end ::method} message creates a new parser that matches the end of
input. To be able to compose parsers easily, it is important that parsers do not match the end of input by default. Because of this, you might be interested to find all the places that a parser can match using the message {PPParser>>matchesSkipIn: ::method} and {PPParser>>matchesIn: ::method}.

[[[identifier matchesSkipIn: ''foo 123 bar12'']]] printItHere
[[[identifier matchesIn: ''foo 123 bar12'']]] printItHere

The {PPParser>>matchesSkipIn: ::method} method returns a collection of arrays containing what has been matched. This function avoids parsing the same character twice. The method {PPParser»matchesIn: ::method} does a similar job but returns a collection with all possible sub-parsed elements: e.g., evaluating [[[identifier matchesIn: ''foo 123 bar12'']]] returns a collection of 6 elements.

Similarly, to find all the matching ranges (index of first character and
index of last character) in the given input one can use either {PPParser>>matchingSkipRangesIn: ::method} or {PPParser>>matchingRangesIn: ::method} as shown by the script below:

[[[identifier matchingSkipRangesIn: ''foo 123 bar12'']]] printItHere
[[[identifier matchingRangesIn: ''foo 123 bar12'']]] printItHere
'); subsections: ((OrderedCollection new)); yourself); add: (EruditeBookSection basicNew title: 'Different kinds of parsers'; document: (EruditeDocument contents: '!!!!!! Different kinds of parsers

PetitParser provide a large set of ready-made parser that you can compose to consume and transform arbitrarily complex languages. The terminal parsers are the most simple ones. We&#8217;ve already seen a few of those, some more are defined in the protocol Table 1.1.

The class side of {PPPredicateObjectParser::class} provides a lot of other factory methods that can be used to build more complex terminal parsers. To use them, send the message {PPParser>>asParser ::method} to a symbol containing the name of the factory method (such as [[[#punctuation asParser]]] ).

The next set of parsers are used to combine other parsers together and is
defined in the protocol:

**Terminal Parsers**
[[[$a asParser]]]. Parses the character $a.
[[[''abc'' asParser]]]. Parses the string ''abc''.
[[[#any asParser]]]. Parses any character.
[[[#digit asParser]]]. Parses one digit (0..9).
[[[#letter asParser]]]. Parses one letter (a..z and A..Z).
[[[#word asParser]]]. Parses a digit or letter.
[[[#blank asParser]]]. Parses a space or a tabulation.
[[[#newline asParser]]]. Parses the carriage return or line feed characters.
[[[#space asParser]]]. Parses any white space character including new line.
[[[#tab asParser]]]. Parses a tab character.
[[[#lowercase asParser]]]. Parses a lowercase character.
[[[#uppercase asParser]]]. Parses an uppercase character.
[[[nil asParser]]]. Parses nothing.

**Parser Combinators**
**p1 , p2**. Parses p1 followed by p2 (sequence).
**p1 / p2**. Parses p1, if that doesn&#8217;t work parses p2.
**p star**. Parses zero or more p.
**p plus**. Parses one or more p.
**p optional**. Parses p if possible.
**p and**. Parses p but does not consume its input.
**p negate**. Parses p and succeeds when p fails.
**p not**. Parses p and succeeds when p fails, but does not consume its input.
**p end**. Parses p and succeeds only at the end of the input.
**p times: n**. Parses p exactly n times.
**p min: n max: m**. Parses p at least n times up to m times
**p starLazy: q**. Like  star  but  stop  consumming  when  q  suc-
ceeds

As a simple example of parser combination, the following definition of the
//identifier2 parser// is equivalent to our previous definition of //identifier//:

[[[identifier2 := #letter asParser , (#letter asParser / #digit asParser) star]]] printItHere

!!!!!!!! Parser action

To define an action or transformation on a parser we can use one of the mes-
sages {PPParser>>==> ::method}, {PPParser>>flatten ::method}, {PPParser>>token ::method} and {PPParser>>trim ::method} defined in the protocol:

**Action parsers**
**p flatten**. Creates a string from the result of p.
**p token**. Similar to flatten but returns a {PPToken::class} with details.
**p trim**. Trims white spaces before and after p.
**p trim: trimParser**. Trims whatever trimParser can parse (e.g., comments).
**p ==> aBlock**. Performs the transformation given in aBlock.

To return a string of the parsed identifier instead of getting an array of matched elements, configure the parser by sending it the message {PPParser>>flatten ::method}.

[[[|identifier|
identifier := (#letter asParser , (#letter asParser / #digit asParser) star).
identifier parse: '' ajka0 '']]] printItHere

[[[|identifier|
identifier := (#letter asParser , (#letter asParser / #digit asParser) star).
identifier parse: ''ajka0'']]] printItHere

Sending the message trim is equivalent to calling {PPParser>>trim: ::method} with [[[#space asParser]]] as a parameter. That means //trim:// can be useful to ignore other data from the input, source code comments for example:

[[[| identifier comment ignorable line |
identifier := (#letter asParser , #word asParser star) flatten.
comment := ''//'' asParser, #newline asParser negate star.
ignorable := comment / #space asParser.
line := identifier trim: ignorable.
line parse: ''// This is a comment
oneIdentifier // another comment'']]] printItHere'); subsections: ((OrderedCollection new)); yourself); yourself); yourself); yourself); updateParents; yourself)! !
