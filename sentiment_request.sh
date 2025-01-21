#!/bin/bash

curl -s \
  "http://localhost:8080/v1/watson.runtime.nlp.v1/NlpService/SentimentPredict" \
  -H "accept: application/json" \
  -H "content-type: application/json" \
  -H "Grpc-Metadata-mm-model-id: sentiment_aggregated-cnn-workflow_lang_en_stock" \
  -d '{ "raw_document": { "text": "Traffic is terrible this morning. It will take me two hours to get to work. I am so frustrated with this heavy traffic!" }, "show_neutral_scores": true, "document_sentiment": true, "target_phrases": ["traffic"] }'
