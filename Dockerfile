FROM atendai/evolution-api:latest

ENV DATABASE_TYPE=postgres
ENV DATABASE_ENABLED=true
ENV PORT=8080

EXPOSE 8080

# Forçando o provider diretamente no comando de execução
CMD ["sh", "-c", "export DATABASE_PROVIDER=postgresql && node dist/main.js"]
