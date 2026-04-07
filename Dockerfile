FROM atendai/evolution-api:latest

ENV DATABASE_TYPE=postgres
ENV DATABASE_ENABLED=true
ENV PORT=8080
# Garante que a API não tente processar imagens de QR code desnecessariamente
ENV QRCODE_ENABLED=false 

EXPOSE 8080

# Forçando o IPv4 para o WhatsApp não dar timeout no pareamento
CMD ["sh", "-c", "node --dns-result-order=ipv4first dist/main.js"]
