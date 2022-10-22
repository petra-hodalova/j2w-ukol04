[#ftl]
<!DOCTYPE html>
<html lang="cs">
<head>
    [#include "_common/bootstrapHead.ftlh"]
</head>
<body>
<div class="detail">
    <div class="vizitka">
        <div class="jmeno">${vizitka.jmeno}</div>
        <div class="firma">${vizitka.firma}</div>
        <div class="udaje">
            <div class="adresa">
                <div>${vizitka.ulice}</div>
                <div>${vizitka.obecPsc}</div>
            </div>
            <div class="kontakty">
                <div>[#if vizitka.email?exists]
                        <i class="las la-at"></i><span>${vizitka.email}</span>
                    [/#if]
                </div>
                <div> [#if vizitka.telefon?exists]
                        <i class="las la-phone-alt"></i><span>${vizitka.telefon}</span>
                    [/#if]
                </div>
                <div>[#if vizitka.web?exists]
                        <i class="las la-globe"></i><span>${vizitka.web}</span>
                    [/#if]
                </div>
            </div>
        </div>
    </div>

    <div class="mapa">
        <iframe style="border:none" src="https://frame.mapy.cz/?q=${vizitka.celaAdresa?url}" width="100%" height="100%" frameborder="0"></iframe>
    </div>

    <div class="delete">
        <form action="/delete" method="post">
            <input type="hidden" name="id" value=${idVizitka}>
            <button type="submit" class="btn btn-primary btn-lg">Smazat</button>
        </form>
    </div>

    <nav>
        <a href="/">◂ zpět na seznam</a>
    </nav>
</div>
</body>
</html>
