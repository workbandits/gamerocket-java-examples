<!doctype html>
<html>
    <head>
        <#include "head.ftl">
        <title>Army</title>
    </head>

    <body>
        <div id="site">
            <#include "header.ftl">
            
            <div class="groupe_compartiment">
                <div class="compartiment">
                    <table>
                        <tbody>
                            <tr>
                                <td style="padding-bottom: 10px">
                                    <h3>Attack</h3>
                                    <span id="attaque"><strong>${data.current_attack}</strong></span>
                                </td>
                                <td style="padding-bottom: 10px">
                                    <h3>Defense</h3>
                                    <span id="defense"><strong>${data.current_defense}</strong></span>
                                </td>
                           </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="groupe_compartiment">
                <div class="compartiment">
                    <form method="post" action="/enroll">
                        <table>
                            <tbody>
                                <tr>
                                    <th colspan="100%"> Army </th>
                                </tr>

                                <tr>
                                    <td><strong>${data.quantity_soldier}<br>Soldier</strong></td>
                                    <td class="txt">
                                        <table class="no_border">
                                            <tbody>
                                                <tr>
                                                    <td class="txt">Gold</td>
                                                    <td class="right">4</td>
                                                </tr>
                                                <tr>
                                                    <td class="txt">Att</td>
                                                    <td class="right">1</td>
                                                </tr>
                                                <tr>
                                                    <td class="txt">Def</td>
                                                    <td class="right">1</td>
                                                </tr>
                                            </tbody>
                                        </table>	
                                    </td>
                                    <td colspan="3" class="txt">
                                        Enroll:<br> <input type="number" min="0" name="soldier" value="0" id="input_nb1">
                                   </td>
                                </tr>

                                <tr>
                                    <td colspan="100%">
                                        <input type="submit" class="bouton_large" value="Enroll">
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