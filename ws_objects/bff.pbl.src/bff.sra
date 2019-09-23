$PBExportHeader$bff.sra
$PBExportComments$Generated Application Object
forward
global type bff from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global type bff from application
string appname = "bff"
end type
global bff bff

on bff.create
appname = "bff"
message = create message
sqlca = create transaction
sqlda = create dynamicdescriptionarea
sqlsa = create dynamicstagingarea
error = create error
end on

on bff.destroy
destroy( sqlca )
destroy( sqlda )
destroy( sqlsa )
destroy( error )
destroy( message )
end on

