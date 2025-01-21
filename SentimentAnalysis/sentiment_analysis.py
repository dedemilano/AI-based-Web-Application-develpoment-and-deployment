from transformers import pipeline
from typing import Dict 

sentiment_pipeline = pipeline("sentiment-analysis", model="nlptown/bert-base-multilingual-uncased-sentiment")


def sentiment_analyzer(text_to_analyse: str) -> Dict:
    """
    Analyze the sentiment of input text using Hugging Face Transformers.
    Returns sentiment label and score.
    """
    try:
        result = sentiment_pipeline(text_to_analyse)[0]
        # Convert 1-5 star rating to positive/negative/neutral
        star_number = float(result['label'].split()[0])
        score = result['score']
        if star_number >= 4 :
            sentiment = "positive"
        elif star_number <= 2:
            sentiment = "negative"
        else:
            sentiment = "neutral"
            
        return {
            "sentiment": sentiment,
            "score": score
        }
    except Exception as e:
        return {
            "error": str(e)
        }