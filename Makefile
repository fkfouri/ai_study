LINE===================================================
HELP_SIZE=20

.PHONY: help
help:
	@echo "Usage: make [target]\n"
	@echo Neste exemplo, a lista esta ordenada por topico ordenado
	@awk 'BEGIN {FS = ":.*?## "}; \
		/^# ---/ {topic = substr($$0, 5); next} \
		/^[a-zA-Z_-]+:.*?## / {print topic "###" $$1 "###" $$2}' $(MAKEFILE_LIST) | \
		sort | \
		awk 'BEGIN {FS = "###"}; \
		{if ($$1 != "") {if (topic != $$1) {if (topic != "") print ""; topic = $$1; printf "\033[35m%s\033[0m\n", topic}; printf "  \033[36m%-${HELP_SIZE}s\033[0m %s\n", $$2, $$3}}'



#################################################################################
# --- Git
#################################################################################
git_config_wsl: ## configura o git
	git config --global user.name "Fulano"
	git config --global user.email "fulano@suzano.com.br"

git_back: ## volta um commit
	git log -n 1
	git reset --soft HEAD~1

git_remote_update: ## atualiza a lista de repositórios remotos
	git remote update origin --prune

git_test: ## testa conexao ssh
	-ssh -T git@github.com

ssh_fix: ## configura o ssh
	chmod 600 /root/.ssh/id_ed25519
