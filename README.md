# Azure_ARM_template

<h5>1. Clone arm-azure<br>
$ https://gitlab.linnovate.net/devops/marketing/arm-azure.git><h5>
<h5>2. Change to directory arm-azure<br>
$ cd arm-azure<h5>
<h5>3. Select resource group that not exixts and create it<br>
$ az group create --name azure-template --location "West Europe"<h5>
<h5>4. Run the deployment file<br>
$ az deployment group create  --resource-group azure-template --template-file template.json<h5>
<h5>5. Deploynet ready check resource group<h5>
<h5>6. To remove resource group<br>
$ az group delete --name azure-template<br>