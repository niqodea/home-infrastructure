plug-deployment:
	ln -s /opt/selfhost ._.deployment

create-deployment:
	sudo install -d -o ${USER} -g ${USER} /opt/selfhost

link-deployment:
	sudo ln -s $(DEPLOYMENT_PATH) /opt/selfhost
