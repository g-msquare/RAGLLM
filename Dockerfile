FROM nvcr.io/nvidia/pytorch:24.09-py3
WORKDIR /workspace
RUN apt-get update && apt-get install -y \
    git wget gcc libglib2.0-0 libsm6 libxrender1 libxext6 \
    && rm -rf /var/lib/apt/lists/*
COPY requirements.txt .
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
COPY . .
# CMD ["python", "src/main.py"]  ← 실행할 파일 확정시 활성화

