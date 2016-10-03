groupExtraction(289065)

def groupWords(group_words, numGroup, num)
             (0..4).each do |i|
                          group_words[i]=threeDigitGroupToWords(groupExtraction(numGroup, num))
             end
end

def threeDigitGroupToWords(threeDigitNum)
             smallValues=["Zero", "One", "Two", "Three", "Four", "Five", "Six", "Seven",
             "Eight", "Nine", "Ten", "Eleven", "Twelve", "Thirteen", "Fourteen",
             "Fifteen", "Sixteen", "Seventeen", "Eighteen", "Nineteen"]

             tenValues=["", "", "Twenty", "Thirty", "Forty", "Fifty", "Fifty", "Sixty",
           "Seventy", "Eighty", "Ninety"]

             threeGroupText=""
             
             
             hundreds=threeDigitNum/100
             tensUnits=threeDigitNum%100
             
                          
             if hundreds!=0
                          threeGroupText+= smallValues[hundreds] + " Hundred"
                          if tensUnits != 0
                                       threeGroupText+= " and "
                          end
             end
             
             tens=tensUnits/10
             units=tensUnits%10
             
             if tens>= 2
                          threeGroupText += tenValues[tens]
                          if units !=0
                                       threeGroupText+= " " + smallValues[units]
                          end
             end
             if tens==1
                          threeGroupText += smallValues[10+units]
             end
             
             return threeGroupText
end

def returnZero
             smallValues[0]
end



def numberToWords(num)
             if num==0
                          returnZero
             end
         threeDigitGroupToWords(num)
end

puts(numberToWords(26))
puts(numberToWords(296))
puts(numberToWords(826))

