FROM atendai/evolution-api:latest
ENV DATABASE_TYPE=postgres
ENV PORT=8080
EXPOSE 8080
CMD ["node", "dist/src/main.js"]
