madlibRhyme <- function(rhymenum, words){

# words = [person], [place], [animal], [adj],
# [adj], [adj], [present verb], [past verb], [past verb]
   
    if(rhymenum == 1){
        line1 <- paste(words[1],", ", words[1], ", pumpkin eater,", sep = "")
        line2 <- paste(words[8], " a ", words[3]," and couldn\'t keep her;",sep = "")
        line3 <- paste(words[1], " put her in a ", words[4]," shell,", sep = "")
        line4 <- paste("And there ", words[1], " ", words[9], " her very well.", sep = "")
        Rhyme1 <- paste(line1, line2, line3, line4, sep = "\n")
        return(Rhyme1)
    }
    
    if(rhymenum == 2){
        Rhyme2 <- paste("There was an ", words[5]," woman who lived in ", words[2], 
                    " had so many ", words[3],"s , she didn't know what to do. She ",
                    words[7], " them some broth without any bread, then ", words[8], 
                    " them all soundly and ", words[9]," them to bed.")
        return(Rhyme2)
    }
    
    if(rhymenum == 3){
        Rhyme3 <- paste(words[3],", ", words[3], " where have you been?", " I've been to ", 
                    words[2], " to ", words[7], " ", words[1],". ", words[3],", ", words[3], 
                    " what did you do there?", " I ", words[8], " a ", words[6], 
                    " mouse under a chair.")
        return(Rhyme3)
    }
}