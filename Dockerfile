FROM atendai/evolution-api:latest

ENV DATABASE_TYPE=postgres
ENV DATABASE_ENABLED=true
ENV PORT=8080

EXPOSE 8080

# Comando que força as variáveis de ambiente na inicialização
CMD ["sh", "-c", "export DATABASE_TYPE=postgres && export DATABASE_PROVIDER=postgresql && node dist/main.js"]
