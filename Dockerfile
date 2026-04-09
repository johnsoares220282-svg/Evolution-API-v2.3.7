FROM atendai/evolution-api:latest

ENV DATABASE_TYPE=postgres
ENV DATABASE_ENABLED=true
# Garante que a API não tente processar imagens de QR code desnecessariamente
ENV QRCODE_ENABLED=false 



# Forçando o IPv4 para o WhatsApp não dar timeout no pareamento
CMD ["sh", "-c", "node --dns-result-order=ipv4first dist/main.js"]
