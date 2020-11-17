import os

def handler(event, context):
  return os.system("k6 version")
