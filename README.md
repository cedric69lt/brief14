Brief 14

1 étape : Création d'un répo sur github puis intégrer vos anciens dossiers (en l'occurence, les dossiers du brief13)
![image](https://github.com/cedric69lt/brief14/assets/127845795/36368fdc-65b4-400c-9dc8-258328e59cb6)

2 étape : Sur votre serveur Jenkins, créez un nouveau projet pipeline
![image](https://github.com/cedric69lt/brief14/assets/127845795/7d8d1349-3a7e-4034-8389-86736367c203)
N'oubliez pas de selectionner GitHub project et de mettre votre lien du répo que vous venez de créez 
Cliquer également sur "Ce build a des paramètres" Dans les choix, ecrivez apply et destroy
![image](https://github.com/cedric69lt/brief14/assets/127845795/44eea7fe-4eb2-4a32-9590-3c478dcd8722)

3 étape : Insérez votre script (jenkinsfile) dans votre pipeline
![image](https://github.com/cedric69lt/brief14/assets/127845795/f24569aa-fdfa-4e0a-a0cf-0c5ca74c1ada)
Vous devez combinez votre script terraform avec votre script Docker
Précision :
Votre Jenkins doit contenir les outils suivants:
Terraform (Installer le plugin terraform)
Crédentials Azure (Pour vous connectez au service Azure, Creez un Azure principal service, allez dans Crédentials et renseignez vos informations comme le client id, l'id suscriptions,le tenant id etc...
et 'az login --service-principal -u $MY_CRED_CLIENT_ID -p $MY_CRED_CLIENT_SECRET -t $MY_CRED_TENANT_ID'

4 étape : Verifier que votre image soit sur Docker Hub et que votre infrastructure est bien en place
![image](https://github.com/cedric69lt/brief14/assets/127845795/aa830772-ca34-4c23-977e-c64b00af8fac)
![image](https://github.com/cedric69lt/brief14/assets/127845795/7566eca0-87cd-4531-9a83-ebc472c712af)
![image](https://github.com/cedric69lt/brief14/assets/127845795/130182af-c5e8-4d3c-b537-818aba4d8977)

5 étape : Intégrez un Azure Monitor sur votre VM
Rentrez dans votre groupe de ressource prod, descendez jusqu'a apercevoir Insights, cliquez dessus, puis dans Calculer,puis sur votre VM
![image](https://github.com/cedric69lt/brief14/assets/127845795/6db65471-2516-4b71-8ea0-3d065ece2cf7)
![image](https://github.com/cedric69lt/brief14/assets/127845795/5351a223-e2e1-424b-8239-11041461e40a)

