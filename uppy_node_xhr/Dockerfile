# IMAGE rick/uppy-node-xhr:1.0.0
FROM blodely/uppy-basic:1.0.0
WORKDIR /app
RUN rm /app/examples/node-xhr/package.json && echo "{\
  \"name\": \"@uppy-example/node-xhr\",\
  \"version\": \"0.0.0\",\
  \"type\": \"module\",\
  \"dependencies\": {\
    \"@uppy/core\": \"workspace:*\",\
    \"@uppy/dashboard\": \"workspace:*\",\
    \"@uppy/webcam\": \"workspace:*\",\
    \"@uppy/xhr-upload\": \"workspace:*\",\
    \"formidable\": \"^3.2.4\"\
  },\
  \"devDependencies\": {\
    \"npm-run-all\": \"^4.1.3\",\
    \"vite\": \"^4.0.0\"\
  },\
  \"private\": true,\
  \"scripts\": {\
    \"start\": \"npm-run-all --parallel start:server start:client\",\
    \"start:client\": \"vite --host\",\
    \"start:server\": \"node server.js\"\
  } \
}" >> /app/examples/node-xhr/package.json
VOLUME ["/app/examples/node-xhr/uploads"]
CMD sh -c "corepack yarn workspace @uppy-example/node-xhr start" && tail -F /dev/null

