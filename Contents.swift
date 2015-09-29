//This program sorts through the collection of music I played my
// during my year of music school

import UIKit

var sheetMusic = ["Griffes" : "Poem", "Chaminade" : "Concertino", "Mozart" : "Concerto in D Major", "Handel" : "Sonata in e minor", "Hanson" : "Serenade", "Pessard" : "Andalouse"]

var titles = ["Poem", "Concertino", "Concerto in D Major", "Sonata in e minor", "Serenade", "Andalouse"]

var length = [7, 4, 9, 11, 3, 2]

var era = ["Modern", "Romantic", "Classical", "Baroque", "Modern", "Romantic"]
var temp = 0
var tempTitle = ""
var tempPageNum = 0
var tempEra = ""
var titleCounter = 0
var modernCounter = 0
var romanticCounter = 0
var classicalCounter = 0
var baroqueCounter = 0
var caseNum = 0
var modernTitles:Array<String> = [String]()
var romanticTitles:Array<String> = [String]()
var classicalTitles:Array<String> = [String]()
var baroqueTitles:Array<String> = [String]()



/***** Pieces listed in order of length, ascending ****/

for var i = 0; i < 5; i++
{
    for var x = 0; x < 5; x++
    {
        if length[x] > length[x+1]
        {
            tempTitle = titles[x]
            tempPageNum = length[x]
            tempEra = era[x]
            
            length[x] = length[x+1]
            titles[x] = titles[x+1]
            era[x] = era[x+1]
            
            titles[x+1] = tempTitle
            length[x+1] = tempPageNum
            era[x+1] = tempEra
        }
    }
}

println("Pieces sorted in order from least number of pages to most:")
println("----------------------------------------------------------")
for num in length
{
    println("\(titles[titleCounter]): \(num) pgs.")
    titleCounter++
}
println("")

/****** Pieces sectioned by era composed ******/

for var i = 0; i < 6; i++
{
    if era[i] == "Modern"
    {
        caseNum = 0
        modernCounter++
    }
    else if era[i] == "Romantic"
    {
        caseNum = 1
        romanticCounter++
    }
    else if era[i] == "Classical"
    {
        caseNum = 2
        classicalCounter++
    }
    else if era[i] == "Baroque"
    {
        caseNum = 3
        baroqueCounter++
    }
    else
    {
        println("Unable to read era")
    }
    
    switch(caseNum)
    {
    case 0:
        modernTitles.append(titles[i])
    case 1:
        romanticTitles.append(titles[i])
    case 2:
        classicalTitles.append(titles[i])
    case 3:
        baroqueTitles.append(titles[i])
    default:
        println("This is not a genre")
        
    }
    
    
}
println("If you're looking for a Modern piece:")
for var i = 0; i < modernCounter; i++
{
    println("\(modernTitles[i])")
}
println("")

println("If you're looking for a Romantic piece:")
for var i = 0; i < romanticCounter; i++
{
    println("\(romanticTitles[i])")
}
println("")

println("If you're looking for a Classical piece:")
for var i = 0; i < classicalCounter; i++
{
    println("\(classicalTitles[i])")
}
println("")

println("If you're looking for a Baroque piece:")
for var i = 0; i < baroqueCounter; i++
{
    println("\(baroqueTitles[i])")
}
