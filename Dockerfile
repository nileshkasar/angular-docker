From node:10

RUN mkdir /usr/src/app

WORKDIR /usr/src/app

ENV PATH /usr/src/app/node_modules/.bin:$PATH

COPY . /usr/src/app
RUN npm install -g @angular/cli@1.5.0
RUN npm install

CMD ng serve --host 0.0.0.0
