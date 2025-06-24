import json

with open('completo.json', 'r') as file:
    data = json.load(file)

new_data = {}

for key, value in data.items():
    # Check if the key can be split correctly
    parts = key.split(")")
    if len(parts) < 2:
        print(f"Skipped key: {key}")
        continue

    # Extract ID and name from key
    id_ = parts[0][1:]
    name = parts[1].strip()
    
    # Create new structure
    new_data[name] = {
        "id": id_,
        **value
    }

with open("completo_ids.json", "w") as outfile:
    json.dump(new_data, outfile, ensure_ascii=False, indent=4)
