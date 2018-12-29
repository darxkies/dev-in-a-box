FROM ubuntu:18.10

ENV GO_VERSION=1.11.4

SHELL ["/bin/bash", "-c"]

# Install Ubuntu dependencies
RUN DEBIAN_FRONTEND=noninteractive apt -y update && apt -y upgrade && apt -y install vim neovim curl wget git tmux tmuxinator build-essential lsof zsh htop iotop docker.io strace ltrace sudo dialog xsel xclip mosh iputils-ping locales man-db python3-pip exuberant-ctags silversearcher-ag nodejs npm tig docker-compose xz-utils software-properties-common && apt -y clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Install Python dependenciesdependencies
RUN pip3 install -U pip setuptools wheel pyuv neovim 

# Install Golang
RUN curl -O https://storage.googleapis.com/golang/go${GO_VERSION}.linux-amd64.tar.gz && tar xfzv go${GO_VERSION}.linux-amd64.tar.gz -C /usr/local && rm go${GO_VERSION}.linux-amd64.tar.gz 

# Setup Golang
ENV GOPATH=$HOME/go
ENV GOBIN=$GOPATH/bin
ENV PATH=$PATH:/usr/local/go/bin:$GOBIN

# Install Golang Dependencies
RUN go get github.com/sourcegraph/go-langserver
RUN go get github.com/klauspost/asmfmt/cmd/asmfmt
RUN go get github.com/derekparker/delve/cmd/dlv
RUN go get github.com/kisielk/errcheck
RUN go get github.com/davidrjenni/reftools/cmd/fillstruct
RUN go get github.com/mdempsky/gocode
RUN go get github.com/stamblerre/gocode
RUN go get github.com/rogpeppe/godef
RUN go get github.com/zmb3/gogetdoc
RUN go get golang.org/x/tools/cmd/goimports
RUN go get golang.org/x/lint/golint
RUN go get github.com/alecthomas/gometalinter
RUN go get github.com/fatih/gomodifytags
RUN go get golang.org/x/tools/cmd/gorename
RUN go get github.com/jstemmer/gotags
RUN go get golang.org/x/tools/cmd/guru
RUN go get github.com/josharian/impl
RUN go get honnef.co/go/tools/cmd/keyify
RUN go get github.com/fatih/motion
RUN go get github.com/koron/iferr
RUN go build -o $GOBIN/gocode-gomod github.com/stamblerre/gocode

# Install SpaceVim
RUN curl -sLf https://spacevim.org/install.sh | bash
COPY files/.SpaceVim.d /root/.SpaceVim.d
RUN (cd $HOME/.SpaceVim/ && git checkout v1.0.0)
RUN vim --headless +'call dein#install()' +qall
RUN vim --headless +'e main.go' +':GoInstallBinaries' +qall

# Zsh
RUN umask g-w,o-w; git clone --depth 1 https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh 
RUN git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting 
RUN git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

COPY files/.zshrc /root/.zshrc

RUN chsh -s /bin/zsh root

RUN locale-gen en_US.UTF-8

WORKDIR /root

CMD ["zsh"]
