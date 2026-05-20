import time

class LRUCacheSimulator:
    def __init__(self, capacity):
        self.capacity = capacity
        # We will use a list to represent the cache to easily show order (recent at the end)
        self.cache = []
        self.hits = 0
        self.misses = 0

    def access(self, item):
        """Simulates accessing an item in the cache."""
        if item in self.cache:
            # Cache Hit: move the accessed item to the end (most recently used)
            self.cache.remove(item)
            self.cache.append(item)
            self.hits += 1
            status = "HIT "
        else:
            # Cache Miss
            if len(self.cache) >= self.capacity:
                # Evict the least recently used item (the first item in our list)
                evicted = self.cache.pop(0)
            self.cache.append(item)
            self.misses += 1
            status = "MISS"
            
        print(f"Access: {item:2} | Status: {status} | Current Cache State: {self.cache}")

    def get_hit_rate(self):
        total_accesses = self.hits + self.misses
        if total_accesses == 0:
            return 0.0
        return (self.hits / total_accesses) * 100

    def get_miss_rate(self):
        total_accesses = self.hits + self.misses
        if total_accesses == 0:
            return 0.0
        return (self.misses / total_accesses) * 100

def main():
    print("--- Cache Hit/Miss Rate Simulation (LRU Policy) ---")
    
    # Get Cache Capacity from User
    while True:
        try:
            cache_capacity = int(input("Enter Cache Capacity (e.g., 3, 4, 5): "))
            if cache_capacity <= 0:
                print("Capacity must be greater than 0.")
                continue
            break
        except ValueError:
            print("Please enter a valid integer.")

    # Get Access Sequence from User
    while True:
        try:
            seq_input = input("Enter memory access sequence separated by spaces (e.g., 1 2 3 1 4 5): ")
            # Convert the input string into a list of integers
            access_sequence = [int(x) for x in seq_input.split()]
            if not access_sequence:
                print("Sequence cannot be empty.")
                continue
            break
        except ValueError:
            print("Please enter only numbers separated by spaces.")
    
    print(f"\nCache Capacity: {cache_capacity}")
    print(f"Access Sequence: {access_sequence}\n")
    
    simulator = LRUCacheSimulator(capacity=cache_capacity)
    
    print("Starting Simulation...\n")
    for item in access_sequence:
        simulator.access(item)
        time.sleep(0.2) # Adding a small delay for readability
        
    print("\n--- Simulation Results ---")
    print(f"Total Accesses: {simulator.hits + simulator.misses}")
    print(f"Total Hits:     {simulator.hits}")
    print(f"Total Misses:   {simulator.misses}")
    print(f"Hit Rate:       {simulator.get_hit_rate():.2f}%")
    print(f"Miss Rate:      {simulator.get_miss_rate():.2f}%")

if __name__ == "__main__":
    main()
