#!/bin/sh

npm run lint && \
npm run dist && \
npm run compile && \
node ./tests/dekko/dist.test.js && \
npm test -- --coverage -w $MAX_WORKERS && \
npm test -- --config .jest.node.json -w $MAX_WORKERS
