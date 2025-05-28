# Sample Flask Application

This is a sample Flask application that serves a "Hello World" page.

## Running Locally

To run the application locally, you need to have Python and Flask installed.

1. Clone the repository:
   ```bash
   git clone https://github.com/YOUR_USERNAME/YOUR_REPOSITORY.git
   cd YOUR_REPOSITORY
   ```
2. Install dependencies:
   ```bash
   pip install -r requirements.txt
   ```
3. Run the application:
   ```bash
   python main.py
   ```
The application will be available at [http://localhost:8080](http://localhost:8080).

## Deployment

This application can be deployed using Google Cloud Run. The `cloudbuild.yaml` and `clouddeploy.yaml` files are provided for this purpose.

Refer to the Google Cloud documentation for instructions on how to deploy using these files.
