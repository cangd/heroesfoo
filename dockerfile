FROM node:14

EXPOSE 4200

WORKDIR /src/
RUN npm install -g @angular/cli

CMD ng serve --host 0.0.0.0
