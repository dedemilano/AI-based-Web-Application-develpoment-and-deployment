curl -s `
  "http://localhost:8080/v1/watson.runtime.nlp.v1/NlpService/SentimentPredict" `
  -H "accept: application/json" `
  -H "content-type: application/json" `
  -H "Grpc-Metadata-mm-model-id: sentiment_aggregated-cnn-workflow_lang_en_stock" `
  -d @data.json