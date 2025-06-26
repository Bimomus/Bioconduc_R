# Load ShortRead
library(ShortRead)

# Check quality
quality(fqsample)

# Check encoding
encoding(quality(fqsample))

# Check baseQuality
qaSummary[["baseQuality"]]

# Glimpse nucByCycle
glimpse(nucByCycle)

# Create a line plot of cycle vs. count
nucByCycle %>% 
  # Gather the nucleotide letters in alphabet and get a new count column
  pivot_longer(-cycle, names_to = 'alphabet', values_to = 'count') %>% 
  ggplot(aes(x = cycle, y =  count, color = alphabet)) +
  geom_line(size = 0.5 ) +
  labs(y = "Frequency") +
  theme_bw() +
  theme(panel.grid.major.x = element_blank())