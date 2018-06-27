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

# Function for time series.
  library(lubridate)
  create_timeseries <- function(date_start,date_end) {
      date_start <- as.Date(date_start)
      date_end   <- as.Date(date_end)
      timeseries <- seq(date_start,date_end,by="day")
      return(timeseries)
  }
    
# Example create time series.
  timeseries <- create_timeseries("2012-03-29",now())                              
                             
                             
