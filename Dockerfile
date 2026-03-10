FROM nvcr.io/nvidia/pytorch:24.07-py3

# Source - https://stackoverflow.com/a/63377623
# Posted by Tushar Kolhe, modified by community. See post 'Timeline' for change history
# Retrieved 2026-02-14, License - CC BY-SA 4.0

RUN apt-get update && apt-get install ffmpeg libsm6 libxext6  -y

RUN pip install torch-scatter -f https://data.pyg.org/whl/torch-2.4.0+cu124.html

# Create a work directory
RUN mkdir -p /workspace