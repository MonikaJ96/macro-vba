Option Explicit

Sub TabliczkaMnozenia()

    Dim naglowek As Integer
    Dim licznik1 As Integer
    Dim licznik2 As Integer
    
    Range("B1").Select
    For naglowek = 1 To 10
        ActiveCell.Value = naglowek
        ActiveCell.Offset(0, 1).Select
    Next naglowek
    
    Range("A2").Select
      For naglowek = 1 To 10
        ActiveCell.Value = naglowek
        ActiveCell.Offset(1, 0).Select
    Next naglowek
    
    Range("B1", Range("B1").End(xlToRight)).Select
    Selection.Font.Bold = True
    Selection.Interior.Color = rgbGreen
    Selection.Font.Color = rgbWhite
    Selection.Font.Size = 10
    
    Range("A2", Range("A2").End(xlDown)).Select
    Selection.Font.Bold = True
    Selection.Interior.Color = rgbGreen
    Selection.Font.Color = rgbWhite
    Selection.Font.Size = 10
    
    
    Range("B2").Select
    For licznik1 = 1 To 10
        For licznik2 = 1 To 10
            ActiveCell = licznik1 * licznik2
            ActiveCell.Offset(0, 1).Select
        Next licznik2
        ActiveCell.Offset(1, -10).Select
    Next licznik1
    
    
    Range("A1:K11").Select
    Selection.Font.Size = 10
     With Selection.Borders
        .LineStyle = xlContinuous
        .Weight = xlThin
    End With
    
    
    Application.CutCopyMode = False


End Sub
