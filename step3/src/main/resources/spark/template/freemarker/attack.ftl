<!doctype html>
<html>
    <head>
        <#include "head.ftl">
        <title>Mine</title>
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