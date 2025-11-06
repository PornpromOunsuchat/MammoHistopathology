FROM python:3.10-slim

ENV DEBIAN_FRONTEND=noninteractive

# ✅ System dependencies required for OpenCV/Matplotlib
RUN apt-get update && apt-get install -y \
    libgl1 \
    libglib2.0-0 \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# ✅ Install Python packages
RUN pip install --no-cache-dir \
    tensorflow-cpu \
    pandas \
    numpy \
    matplotlib \
    seaborn \
    plotly \
    scikit-learn \
    pillow \
    opencv-python \
    jupyter

WORKDIR /app

CMD ["bash"]
