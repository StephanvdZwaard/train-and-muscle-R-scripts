#create dataframe with 2 columns and 100 rows -------------------

df1 <- data.frame(x=rnorm(100, mean=10, sd=2), 
                  y=rnorm(100, mean=10, sd=20))

#create dataframe with timeseries data with upward slopes -------------------

df2 <- df1 %>%
        arrange(desc(x)) %>%
        rename(response = x) %>%
        mutate(year = 1901:2000)
ggplot(df2, aes(x=year, y=response)) +
  geom_line()

#create dataframe with timeseries data with downwards slopes -------------------

df3 <- df1 %>%
  arrange((y)) %>%
  rename(response = y) %>%
  mutate(year = 1901:2000)
ggplot(df3, aes(x=year, y=response)) +
  geom_line()

# Goed bezig! [SZ]
