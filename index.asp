<html>
<%
Rem /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
Rem 程序名称：New Cms
Rem 程序作者：新成
Rem 作者博客：http://zhanxincheng.com/
Rem //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
Dim Post:Post = lcase(Request.ServerVariables("QUERY_STRING"))
If Post="" Then
Server.Execute("App/Home.asp")
ElseIf instr(Post,"pid=")>0 Then
Server.Execute("App/page.asp")
ElseIf instr(Post,"cat=")>0 Then
Server.Execute("App/list.asp")
ElseIf Instr(Post,"sitemap") Then
Server.Execute("App/sitemap.asp")
ElseIf instr(Post,"p=")>0 Then
Server.Execute("App/read.asp")
ElseIf instr(Post,"tags=")>0 Then
Server.Execute("App/tags.asp")
ElseIf instr(Post,"s=")>0 Then
Server.Execute("App/search.asp")
ElseIf instr(Post,"date=")>0 Then
Server.Execute("App/date.asp")
ElseIf Instr(Post,"author=") Then
Server.Execute("App/author.asp")
ElseIf Instr(Post,"go=") Then
Server.Execute("App/go.asp")
ElseIf Post="404" Then
Server.Execute("App/404.asp")
Else
Server.Execute("App/Home.asp")
End If
%>
</html>
