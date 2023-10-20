.PHONY: install-tmux
# still needs testing
install-tmux:
	@echo "Copying .tmux.conf to ~"
	@if [ -e $(HOME)/.tmux.conf ]; then \
		echo "A .tmux.conf file already exists in $(HOME) directory."; \
		if [ -e $(HOME)/.tmux.conf.bak ]; then \
			read -p "Do you want to overwrite the existing .tmux.conf.bak? (y/n): " answer; \
			if [ "$$answer" = "y" ]; then \
				rm -f $(HOME)/.tmux.conf.bak; \
				mv $(HOME)/.tmux.conf $(HOME)/.tmux.conf.bak; \
				echo "Original .tmux.conf moved to .tmux.conf.bak"; \
			else \
				echo "Installation aborted."; \
				exit 1; \
			fi; \
		else \
			mv $(HOME)/.tmux.conf $(HOME)/.tmux.conf.bak; \
			echo "Original .tmux.conf moved to .tmux.conf.bak"; \
		fi; \
	fi
	cp .tmux.conf $(HOME)
	@echo "Installation complete."

