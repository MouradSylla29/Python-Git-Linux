# DEUX DASHBOARD

A noter que le principal projet est celui avec Monero (XMR), notamment aux niveau des consignes (intégration des métriques) 

## APPLE STOCK PRICE

J'ai pu récuperer les données historique et à jour sur ce site.
Seul problème est que les prix ne sont pas très intéractifs car ne se mettent pas à jour chaque minutes. 
voici le lien du site: https://moning.co/stocks/AAPL.US

Le dashboard est accéssible via le port 8050 et mon adresse IP suivante : http://35.180.65.112:8050/

## MONERO (XMR) PRICES

Pour le deuxieme je n'ai pas réussi à récuperer les données historiques, cependant j'ai pu avoir le prix à l'instant t.
Ainsi au fur et à mesure que le scrapping s'exécute, le graph du Dash se met à jour car le Bash rempli les données du CSV. 
voici le lien du site: https://www.coingecko.com/fr/pi%C3%A8ces/monero

Le dashboard est accéssible via le port 8085 et mon adresse IP suivante : http://35.180.65.112:8085/

## RUN h/24

I used gunicorn to run my Dash app and the tool "screen" where my dashbords are continiously running in those virutals sessions.
 
