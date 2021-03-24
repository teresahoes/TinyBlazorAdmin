@echo off

#==============================
#== UPDATE WITH YOUR VALUES

frontendAppName="TinyAdminAD"
backendAppName="ShortenerAppAD"
subscriptionID="____________________"
#==
#==============================

echo $frontendAppName
echo $backendAppName

echo .. Login
az login

echo .. Creating AD App Registration for frontend
fAppAD=$(az ad sp create-for-rbac --name $frontendAppName)
echo $fAppAD.id


# az role assignment create --assignee < user/app id> --role Contributor --scope <subscription/subscription id>