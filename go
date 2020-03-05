ACR_LOGIN_SERVER=$(az acr show --name oneillalacr --query loginServer --output tsv)
ACR_REGISTRY_ID=$(az acr show --name oneillalacr --query id --output tsv)
SP_PASSWD=$(az ad sp create-for-rbac --name MY-USER --role Reader --scopes $ACR_REGISTRY_ID --query password --output tsv)
CLIENT_ID=$(az ad sp show --id http://MY-USER --query appId --output tsv)
