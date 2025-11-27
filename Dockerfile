# Imagem base do Node
FROM node:18

# Pasta onde a aplicação vai rodar
WORKDIR /app

# Copia apenas o package.json e package-lock.json
COPY package*.json ./

# Instala as dependências
RUN npm install

# Copia todo o restante do projeto
COPY . .

# Expõe a porta do servidor (3000)
EXPOSE 3000

# Comando para iniciar o servidor
CMD ["npm", "start"]
