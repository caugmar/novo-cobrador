REM  *****  BASIC  *****

Sub Main

End Sub


sub Salvar_CSV
rem ----------------------------------------------------------------------
rem define variables
dim document   as object
dim dispatcher as object
rem ----------------------------------------------------------------------
rem get access to the document
document   = ThisComponent.CurrentController.Frame
dispatcher = createUnoService("com.sun.star.frame.DispatchHelper")

rem ----------------------------------------------------------------------
dispatcher.executeDispatch(document, ".uno:JumpToPrevTable", "", 0, Array())

rem ----------------------------------------------------------------------
dispatcher.executeDispatch(document, ".uno:JumpToPrevTable", "", 0, Array())

rem ----------------------------------------------------------------------
dispatcher.executeDispatch(document, ".uno:JumpToPrevTable", "", 0, Array())

rem ----------------------------------------------------------------------
dispatcher.executeDispatch(document, ".uno:JumpToPrevTable", "", 0, Array())

rem ----------------------------------------------------------------------
dispatcher.executeDispatch(document, ".uno:JumpToPrevTable", "", 0, Array())

rem ----------------------------------------------------------------------
dim args6(0) as new com.sun.star.beans.PropertyValue
args6(0).Name = "Sel"
args6(0).Value = false

dispatcher.executeDispatch(document, ".uno:GoToStart", "", 0, args6())

rem ----------------------------------------------------------------------
dim args7(3) as new com.sun.star.beans.PropertyValue
args7(0).Name = "URL"
args7(0).Value = "file:///home/caugm/src/novo-cobrador/empresas.csv"
args7(1).Name = "FilterName"
args7(1).Value = "Text - txt - csv (StarCalc)"
args7(2).Name = "FilterOptions"
args7(2).Value = "44,34,12,0"
args7(3).Name = "SelectionOnly"
args7(3).Value = true

dispatcher.executeDispatch(document, ".uno:SaveAs", "", 0, args7())

rem ----------------------------------------------------------------------
dispatcher.executeDispatch(document, ".uno:JumpToNextTable", "", 0, Array())

rem ----------------------------------------------------------------------
dim args9(3) as new com.sun.star.beans.PropertyValue
args9(0).Name = "URL"
args9(0).Value = "file:///home/caugm/src/novo-cobrador/lancamentos.csv"
args9(1).Name = "FilterName"
args9(1).Value = "Text - txt - csv (StarCalc)"
args9(2).Name = "FilterOptions"
args9(2).Value = "44,34,12,0"
args9(3).Name = "SelectionOnly"
args9(3).Value = true

dispatcher.executeDispatch(document, ".uno:SaveAs", "", 0, args9())

end sub
