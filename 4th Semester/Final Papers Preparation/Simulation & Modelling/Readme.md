## Simulation & Modeling

### 1. Calculate the Sending Rate (bps) for a VoIP application where packets are sent with an interval of 50 ms and a packet size of 80 bytes.

To calculate the sending rate (in bits per second, bps):

- **Interval between packets**: 50 milliseconds = 0.05 seconds
- **Packet size**: 80 bytes = 80 \* 8 bits = 640 bits

**Sending rate (bps)** = Packet size (bits) / Interval (seconds)
= 640 bits / 0.05 seconds = 12,800 bps

### 2. a) What does RTT mean?

**RTT** stands for Round-Trip Time. It's the time it takes for a signal to go from the sender to the receiver and back again.

### 2. b) If RTT is increasing then what does this indicate in the network?

Increasing **RTT** usually indicates network congestion or issues like high traffic, long routing paths, or possibly problems with the network infrastructure.

### 3. a) How does YouTube adapt to bandwidth variations?

**YouTube** adapts to bandwidth variations by adjusting the video quality. If bandwidth decreases, YouTube reduces the video resolution to prevent buffering. If bandwidth increases, it improves the video quality.

### 3. b) 'Real-time interactive applications' refers to?, and what are their constraints?

**Real-time interactive applications** include video calls, online gaming, and VoIP. These applications require low latency, low jitter, and minimal packet loss to function smoothly. Delays or variations can disrupt communication and degrade user experience.

### 4. When choosing a Transport protocol to use, what are the 3 points to take into consideration?

When choosing a transport protocol, consider:

1. **Reliability**: Does the application need guaranteed delivery of packets (e.g., TCP)?
2. **Latency**: Is low delay important for the application (e.g., UDP for real-time applications)?
3. **Bandwidth**: How much bandwidth does the application require, and how does it handle congestion?

### 5. Illustrate the difference between time-jitter and delay jitter, and its impacts to real-time applications.

- **Time-Jitter**: Variability in packet arrival times.
- **Delay Jitter**: Variability in end-to-end delay.

**Impact on real-time applications**: Both types of jitter can cause audio/video to become choppy or out of sync, affecting the quality of the user experience.

### 6. What does 'arrival of too late packets' refer to?

'**Arrival of too late packets**' refers to packets that arrive after their usefulness has expired, such as in real-time applications where late packets cannot be used because they cause delays and synchronization issues.

### 7. What are the disadvantages of having a full buffer at the routers?

- **Increased Latency**: Packets wait longer in the queue.
- **Packet Loss**: New packets are dropped if the buffer is full, leading to data loss.

### 8. What are the principles behind managing and controlling queue length, and why is it important?

**Principles**:

- **Prevent Congestion**: Control the number of packets to avoid congestion.
- **Ensure Fairness**: Allocate bandwidth fairly among users.
- **Improve Efficiency**: Optimize the use of network resources.

**Importance**: Managing queue length is crucial to maintain low latency and high throughput, ensuring smooth and efficient network performance.

### 9. Is this true that controlling queue length you can control delay directly?

Yes, by **controlling queue length**, you can directly control delay because shorter queues mean packets spend less time waiting to be processed.

### 10. What are the reasons that a) causes congestion (require 2 points) and b) how can it be prevented?

**a) Causes of Congestion**:

1. **High Traffic Volume**: Too many packets in the network.
2. **Insufficient Bandwidth**: Network capacity is too low for the traffic load.

**b) Prevention**:

1. **Traffic Shaping**: Limit the rate of data entering the network.
2. **Quality of Service (QoS)**: Prioritize critical traffic to ensure it gets through even when the network is busy.

### 11. What does this diagram intend to explain in terms of; (a) Multimedia Traffic, (b) Delay, (c) Loss, (d) Queueing?

Without the actual diagram, I'll explain typical aspects:

- **a) Multimedia Traffic**: Multimedia requires steady and predictable data flow.
- **b) Delay**: High delay can make multimedia unusable (e.g., choppy video calls).
- **c) Loss**: Packet loss can degrade multimedia quality (e.g., missing audio or video frames).
- **d) Queueing**: Proper queue management is needed to ensure low delay and loss, maintaining quality.
