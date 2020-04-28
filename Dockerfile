FROM alpine:latest As build
RUN wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip
RUN unzip ngrok-stable-linux-amd64.zip

FROM gcr.io/distroless/base-debian10
COPY --from=build ngrok /ngrok
CMD ["/ngrok"]

