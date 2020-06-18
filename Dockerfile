FROM eulertour/manim:latest
MAINTAINER Jason Kwan "jason.kwan@wisc.edu"

RUN apt-get update
RUN apt-get install -y nano zsh tmux htop
RUN chsh -s /usr/bin/zsh
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
RUN git clone https://github.com/romkatv/powerlevel10k.git /root/.oh-my-zsh/themes/powerlevel10k
COPY .zshrc /root/
RUN pip install pandas
RUN pip install scikit-learn
ENTRYPOINT ["/usr/bin/zsh"]
