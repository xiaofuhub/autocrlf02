$PBExportHeader$aff.sra
$PBExportComments$Generated Application Object
forward
global type aff from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global type aff from application
string appname = "aff"
end type
global aff aff

on aff.create
appname = "aff"
message = create message
sqlca = create transaction
sqlda = create dynamicdescriptionarea
sqlsa = create dynamicstagingarea
error = create error
end on

on aff.destroy
destroy( sqlca )
destroy( sqlda )
destroy( sqlsa )
destroy( error )
destroy( message )
end on

