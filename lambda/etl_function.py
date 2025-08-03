import json
import random
import time
from datetime import datetime

# Simulate patient vitals data (without sending to AWS)
def generate_patient_data():
    return {
        "patient_id": f"P-{random.randint(1000, 9999)}",
        "heart_rate": random.randint(60, 120),
        "temperature": round(random.uniform(97.0, 101.5), 1),
        "timestamp": datetime.utcnow().isoformat()
    }

if __name__ == "__main__":
    for _ in range(5):  # generate 5 sample records
        record = generate_patient_data()
        print(json.dumps(record, indent=2))
        time.sleep(1)
