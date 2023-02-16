FROM golang:latest AS build

RUN go install -tags extended github.com/gohugoio/hugo@latest
RUN go install github.com/jackyzha0/hugo-obsidian@latest
ENV PATH="/root/go/bin:$PATH"
# RUN git clone -b hugo https://github.com/therealfakemoot/quartz.git /tmp/blog
# I can do this in my CI/CD

# WORKDIR /drone/src
# removing this because Drone will set the workdir

# CMD ["make", "serve"]
# i've got my own static file hosting solution
