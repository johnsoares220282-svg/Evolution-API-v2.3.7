FROM atendai/evolution-api:latest

ENV DATABASE_TYPE=postgres
ENV DATABASE_ENABLED=true
ENV PORT=8080

EXPOSE 8080

# Comando corrigido para a imagem oficial
CMD ["node", "dist/main.js"]
