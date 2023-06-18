FROM quay.io/sip-userbot/shicy
RUN git clone https://github.com/sip-userbot/Shicy /root/sipuserbot
WORKDIR /root/sipuserbot/
RUN npm install npm@latest
RUN yarn install --network-concurrency 1
EXPOSE 8000
CMD ["npm", "start"]
