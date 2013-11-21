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
                                <th colspan="100%"> Mine </th>
                            </tr>
                        </tbody>
                    </table>
                </div>

                <div class="compartiment">
                    <table>
                        <tbody>
                            <tr>
                                <td>
                                    Production: ${data.current_production} gold by hour
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>

                <div class="compartiment">
                    <form method="post" action="/upgrade_mine">
                        <table>
                            <tbody>
                                <tr>
                                    <td>
                                        Price: ${data.next_level_price} gold
                                        <br> Production: ${data.next_level_production} gold by hour
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="100%">
                                        <input type="submit" class="bouton_large" value="Upgrade">
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>