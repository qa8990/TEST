from dotenv import load_dotenv
import os

class EnvLibrary:
    def __init__(self, env_file=".env"):
        """Load the .env file on initialization."""
        load_dotenv(dotenv_path=env_file)

    def get_env_variable(self, key):
        """Retrieve the value of an environment variable."""
        return os.getenv(key, "Environment variable not found")
