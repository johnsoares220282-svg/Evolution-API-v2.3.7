FROM atendai/evolution-api:latest

ENV DATABASE_TYPE=postgres
ENV DATABASE_ENABLED=true
ENV PORT=8080

EXPOSE 8080

# Forçando o provider no comando de execução para evitar o erro 'invalid'
CMD ["sh", "-c", "DATABASE_PROVIDER=postgresql node dist/main.js"]
