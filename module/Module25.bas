Attribute VB_Name = "Module25"
Sub taotendang12(ByVal control As Office.IRibbonControl)

ActiveDocument.Range.ListFormat.ConvertNumbersToText
Selection.EndKey Unit:=wdStory
Selection.TypeText text:="C�u 51."
Selection.HomeKey Unit:=wdStory
    
 Selection.Find.ClearFormatting
    Selection.Find.Replacement.ClearFormatting
    With Selection.Find
        .text = "(C�u [0-9]{1,2})([.:])"
        .Replacement.text = "\1."
        .Forward = True
        .Wrap = wdFindContinue
        .Format = False
        .MatchCase = False
        .MatchWholeWord = False
        .MatchByte = False
        .MatchAllWordForms = False
        .MatchSoundsLike = False
        .MatchWildcards = True
        .MatchFuzzy = False
    End With
    Selection.Find.Execute Replace:=wdReplaceAll
    
    Selection.HomeKey Unit:=wdStory
    
    For i = 1 To 50
Cau = "C�u " & i & "."
causau = "C�u " & i + 1 & "."
    Selection.Find.ClearFormatting
    Selection.Find.Replacement.ClearFormatting
    With Selection.Find
        .text = Cau & "(*)(L?i gi?i*)(A.*)" & causau
        .Replacement.text = Cau & "\1\3\2" & causau
        .Forward = True
        .Wrap = wdFindContinue
        .Format = False
        .MatchCase = False
        .MatchWholeWord = False
        .MatchByte = False
        .MatchAllWordForms = False
        .MatchSoundsLike = False
        .MatchWildcards = True
        .MatchFuzzy = False
    End With
    Selection.Find.Execute Replace:=wdReplaceOne
Next i
    
   
    
     With Selection.Find
        .text = "(C�u 51.)"
        .Replacement.text = ""
        .Forward = True
        .Wrap = wdFindContinue
        .Format = False
        .MatchCase = False
        .MatchWholeWord = False
        .MatchByte = False
        .MatchAllWordForms = False
        .MatchSoundsLike = False
        .MatchFuzzy = False
        .MatchWildcards = True
    End With
    Selection.Find.Execute Replace:=wdReplaceOne
    With Selection.Find
        .text = "(^13^13)"
        .Replacement.text = "^p"
        .Forward = True
        .Wrap = wdFindContinue
        .Format = False
        .MatchCase = False
        .MatchWholeWord = False
        .MatchByte = False
        .MatchAllWordForms = False
        .MatchSoundsLike = False
        .MatchFuzzy = False
        .MatchWildcards = True
    End With
    Selection.Find.Execute Replace:=wdReplaceAll


End Sub






