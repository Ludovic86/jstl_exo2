<%-- 
    Document   : rapportInventaire
    Created on : 25 sept. 2018, 09:37:00
    Author     : TA-13
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="x" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inventaire</title>
    </head>
    <body>
        <c:import url="livres.xml" varReader="monReader">
            <x:parse var="doc" doc="${monReader}"></x:parse> 
            <ul>
            <x:forEach var="element" select="$doc/inventaire/livre">
                <x:set var="minimum" select="$element/minimum"/>
                <x:set var="stock" select="$element/stock"/>
                <li>
                 <x:out select="$element/titre"/>   
                </li>
                <x:if select="$stock < $minimum"> 
                    <span style="color: red">  Attention ! Le stock est faible !
                    Stock :
                    <x:out select="$stock"/>  
                 Minimum :
                 <x:out select="$minimum"/> 
                 </span> 
                </x:if>
            </x:forEach>
            </ul>
            
            
        </c:import> 
        <c:import url="livres.xml" varReader="monReader">
        <c:import url="newstylesheet.xsl" varReader="monReaderxsl">
            <x:transform doc="${monReader}" xslt="${monReaderxsl}"></x:transform>
        </c:import>    
        </c:import>
    </body>
</html>
