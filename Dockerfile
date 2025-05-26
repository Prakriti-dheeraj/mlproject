FROM python:3.10-slim

# Install dependencies
RUN apt-get update && apt-get install -y git

# Set workdir
WORKDIR /app

# Copy code
COPY . .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose default Gradio/Streamlit port
EXPOSE 7860

# Run the app
CMD ["python", "app.py"]
