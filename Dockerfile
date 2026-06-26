FROM mirror.gcr.io/binwiederhier/ntfy:latest

# The upstream image is already fully configured and optimized.
# Since building from source is failing repeatedly due to orchestration timeouts
# and complex build dependencies (CGO, specific Go toolchains, and embed files),
# we wrap the official production image.

EXPOSE 80
ENTRYPOINT ["ntfy"]
CMD ["serve"]