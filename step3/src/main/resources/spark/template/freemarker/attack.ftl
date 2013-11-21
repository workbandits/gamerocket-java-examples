<!doctype html>
<html>
    <head>
        <title>Mine</title>
        <meta charset="utf-8">
        <link rel="stylesheet" href="/css/style.css">
    </head>

    <body>
        <div id="site">
            <#include "header.ftl">
            
            <div class="groupe_compartiment">
                <div class="compartiment">
                    <table>
                        <tbody>
                            <tr>
                               <td><strong>Pseudo</strong></td>
                               <td style="width:50px"><strong>Xp</strong></td>
                               <td style="width:55px"><strong>Actions</strong></td>
                            </tr>
                            <#list data.players as player>
                                <tr>
                                    <td>${player.name}</td>
                                    <td>${player.dynProp.xp}</td>
                                    <td>
                                        <a href="/fight?opponent=${player.id}">
                                            Attack
                                        </a>
                                    </td>
                                </tr>
                            </#list>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </body>
</html>