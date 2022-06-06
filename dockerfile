FROM nginx:1.17.1-alpine
COPY ./build/ /usr/share/nginx/html
EXPOSE 3001
CMD ["nginx","-g","daemon off;"]