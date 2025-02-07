from flask import Flask, render_template, request
import pickle
import numpy as np

app = Flask(__name__)

# Load the trained model and scaler
with open("knn_cancer_model.pkl", 'rb') as model_file:
    loaded_model = pickle.load(model_file)
with open("scaler.pkl", 'rb') as scaler_file:
    loaded_scaler = pickle.load(scaler_file)

# Feature names
feature_names = [
    "radius_mean", "texture_mean", "perimeter_mean", "area_mean", "smoothness_mean",
    "compactness_mean", "concavity_mean", "concave points_mean", "symmetry_mean", "fractal_dimension_mean",
    "radius_se", "texture_se", "perimeter_se", "area_se", "smoothness_se",
    "compactness_se", "concavity_se", "concave points_se", "symmetry_se", "fractal_dimension_se",
    "radius_worst", "texture_worst", "perimeter_worst", "area_worst", "smoothness_worst",
    "compactness_worst", "concavity_worst", "concave points_worst", "symmetry_worst", "fractal_dimension_worst"
]

@app.route('/', methods=['GET', 'POST'])
def index():
    prediction_text = ""
    if request.method == 'POST':
        try:
            # Get user input
            input_data = [float(request.form[feature]) for feature in feature_names]
            
            # Scale input data
            input_scaled = loaded_scaler.transform([input_data])
            
            # Predict using the loaded model
            prediction = loaded_model.predict(input_scaled)[0]
            probabilities = loaded_model.predict_proba(input_scaled)[0]
            
            # Assign labels
            labels = {0: "Benign", 1: "Malignant"}
            
            # Determine the probability of the predicted class
            confidence = probabilities[prediction] * 100
            
            # Format result
            prediction_text = f"The person has '{labels[prediction]}' cancer with a probability of {confidence:.2f}%."
        except Exception as e:
            prediction_text = f"Error in processing input: {str(e)}"
    
    return render_template('index.html', feature_names=feature_names, prediction_text=prediction_text)

if __name__ == '__main__':
    app.run(debug=True)
