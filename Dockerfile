FROM alpine:3.16

RUN apk add --no-cache go hugo git make perl
RUN go install github.com/jackyzha0/hugo-obsidian@latest
ENV PATH="/root/go/bin:$PATH"
RUN git clone https://github.com/jackyzha0/quartz.git /quartz

# WORKDIR /quartz
# removing this because Drone will set the workdir

# CMD ["make", "serve"]
# i've got my own static file hosting solution
CMD ["make", "build"]
