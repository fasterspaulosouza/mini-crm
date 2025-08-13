# Usa Node.js 20
FROM node:20

# Define diretório de trabalho
WORKDIR /usr/src/app

# Instala Nest CLI globalmente
RUN npm install -g @nestjs/cli

# Cria projeto NestJS se não existir
RUN nest new app --package-manager npm --skip-git && \
    cd app && npm install

# Define diretório do projeto
WORKDIR /usr/src/app/app

# Expõe a porta do NestJS
EXPOSE 3000

# Inicia o servidor em modo desenvolvimento
CMD ["npm", "run", "start:dev"]
