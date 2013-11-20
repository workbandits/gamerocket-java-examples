<!doctype html>
<html>
    <head>
        <#include "head.ftl">
        <title>Error</title>
    </head>

    <body>
        <div id="site">
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
                                <th colspan="100%"> Error: ${message} </th>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </body>
</html>