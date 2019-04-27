library(seewave)
library(soundecology)
library(tuneR)


p1 <- "Parque #1"
p2 <- "Parque #2"
p3 <- "Parque #3"
p4 <- "Parque #4"
p5 <- "Parque #5"
p6 <- "Parque #6"
p7 <- "Parque #7"
p8 <- "Parque #8"
p9 <- "Parque #9"
p10 <- "Parque #10"

p1.lat <- 25.732614
p1.lon <- -100.310080

p2.lat <- 25.733709
p2.lon <- -100.310483

p3.lat <- 25.734335
p3.lon <- -100.311859

p4.lat <- 25.735133
p4.lon <- -100.309291

p5.lat <- 25.736008
p5.lon <- -100.306520

p6.lat <- 25.736849
p6.lon <- -100.310563

p7.lat <- 25.738464
p7.lon <- -100.310526

p8.lat <- 25.737410
p8.lon <- -100.308797

p9.lat <- 25.737941
p9.lon <- -100.307245

p10.lat <- 25.738574
p10.lon <- -100.305173

p <- c(p1,p2,p3,p4,p5,p6,p7,p8,p9,p10)
p.lon <- c(p1.lon, 
           p2.lon,
           p3.lon,
           p4.lon,
           p5.lon,
           p6.lon,
           p7.lon,
           p8.lon,
           p9.lon,
           p10.lon)

p.lat <- c(p1.lat, 
           p2.lat,
           p3.lat,
           p4.lat,
           p5.lat,
           p6.lat,
           p7.lat,
           p8.lat,
           p9.lat,
           p10.lat)

p1.2.high <- readWave("../data/p1/p1-2.wav", from=3, to=4, units=c("minutes"))
p1.2.low <- readWave("../data/p1/p1-2.wav", from=50, to=52, units=c("seconds"))
p2.2.high <- readWave("../data/p2/p2-2.wav", from=3, to=4, units=c("minutes"))
p2.2.low <- readWave("../data/p2/p2-2.wav", from=50, to=52, units=c("seconds"))
p3.2.high <- readWave("../data/p3/p3-2.wav", from=3, to=4, units=c("minutes"))
p3.2.low <- readWave("../data/p3/p3-2.wav", from=50, to=52, units=c("seconds"))
p4.2.high <- readWave("../data/p4/P4-A2.wav", from=3, to=4, units=c("minutes"))
p4.2.low <- readWave("../data/p4/P4-A2.wav", from=50, to=52, units=c("seconds"))
p5.2.high <- readWave("../data/p5/P5-A2.wav", from=3, to=4, units=c("minutes"))
p5.2.low <- readWave("../data/p5/P5-A2.wav", from=50, to=52, units=c("seconds"))
p6.2.high <- readWave("../data/p6/p6-2.wav", from=3, to=4, units=c("minutes"))
p6.2.low <- readWave("../data/p6/p6-2.wav", from=50, to=52, units=c("seconds"))
p7.2.high <- readWave("../data/p7/p7-2.wav", from=3, to=4, units=c("minutes"))
p7.2.low <- readWave("../data/p7/p7-2.wav", from=50, to=52, units=c("seconds"))
p8.2.high <- readWave("../data/p8/P8-2.wav", from=3, to=4, units=c("minutes"))
p8.2.low <- readWave("../data/p8/P8-2.wav", from=50, to=52, units=c("seconds"))
p9.2.high <- readWave("../data/p9/P9-2.wav", from=3, to=4, units=c("minutes"))
p9.2.low <- readWave("../data/p9/P9-2.wav", from=50, to=52, units=c("seconds"))
p10.2.high <- readWave("../data/p10/P10-2.wav", from=3, to=4, units=c("minutes"))
p10.2.low <- readWave("../data/p10/P10-2.wav", from=50, to=52, units=c("seconds"))

#High Frequence
p1.2.high <- ffilter(p1.2.high, from=12000, to=96000, bandpass = TRUE, output="Wave")
p1.2.high.ACI <- ACI(p1.2.high) 
p1.2.high.ADI <- acoustic_diversity(p1.2.high, max_freq = 96000)

p2.2.high <- ffilter(p2.2.high, from=12000, to=96000, bandpass = TRUE, output="Wave")
p2.2.high.ACI <- ACI(p2.2.high) 
p2.2.high.ADI <- acoustic_diversity(p2.2.high, max_freq = 96000)

p3.2.high <- ffilter(p3.2.high, from=12000, to=96000, bandpass = TRUE, output="Wave")
p3.2.high.ACI <- ACI(p3.2.high) 
p3.2.high.ADI <- acoustic_diversity(p3.2.high, max_freq = 96000)

p4.2.high <- ffilter(p4.2.high, from=12000, to=96000, bandpass = TRUE, output="Wave")
p4.2.high.ACI <- ACI(p4.2.high) 
p4.2.high.ADI <- acoustic_diversity(p4.2.high, max_freq = 96000)

p5.2.high <- ffilter(p5.2.high, from=12000, to=96000, bandpass = TRUE, output="Wave")
p5.2.high.ACI <- ACI(p5.2.high) 
p5.2.high.ADI <- acoustic_diversity(p5.2.high, max_freq = 96000)

p6.2.high <- ffilter(p6.2.high, from=12000, to=96000, bandpass = TRUE, output="Wave")
p6.2.high.ACI <- ACI(p6.2.high) 
p6.2.high.ADI <- acoustic_diversity(p6.2.high, max_freq = 96000)

p7.2.high <- ffilter(p7.2.high, from=12000, to=96000, bandpass = TRUE, output="Wave")
p7.2.high.ACI <- ACI(p7.2.high) 
p7.2.high.ADI <- acoustic_diversity(p7.2.high, max_freq = 96000)

p8.2.high <- ffilter(p8.2.high, from=12000, to=96000, bandpass = TRUE, output="Wave")
p8.2.high.ACI <- ACI(p8.2.high) 
p8.2.high.ADI <- acoustic_diversity(p8.2.high, max_freq = 96000)

p9.2.high <- ffilter(p9.2.high, from=12000, to=96000, bandpass = TRUE, output="Wave")
p9.2.high.ACI <- ACI(p9.2.high) 
p9.2.high.ADI <- acoustic_diversity(p9.2.high, max_freq = 96000)

p10.2.high <- ffilter(p10.2.high, from=12000, to=96000, bandpass = TRUE, output="Wave")
p10.2.high.ACI <- ACI(p10.2.high) 
p10.2.high.ADI <- acoustic_diversity(p10.2.high, max_freq = 96000)

ACI.high <- c(p1.2.high.ACI,
              p2.2.high.ACI,
              p3.2.high.ACI,
              p4.2.high.ACI,
              p5.2.high.ACI,
              p6.2.high.ACI,
              p7.2.high.ACI,
              p8.2.high.ACI,
              p9.2.high.ACI,
              p10.2.high.ACI)

ADI.high <- c(p1.2.high.ADI$adi_left,
              p2.2.high.ADI$adi_left,
              p3.2.high.ADI$adi_left,
              p4.2.high.ADI$adi_left,
              p5.2.high.ADI$adi_left,
              p6.2.high.ADI$adi_left,
              p7.2.high.ADI$adi_left,
              p8.2.high.ADI$adi_left,
              p9.2.high.ADI$adi_left,
              p10.2.high.ADI$adi_left)


high.freq <- data.frame("Parque"=p, "longitude"=p.lon, "latitude"=p.lat, "ACI"=ACI.high, "ADI"=ADI.high)
#----------------------------------------------------------------------------


#Low Frequence
p1.2.low <- ffilter(p1.2.low, from=0, to=12000, bandpass = TRUE, output="Wave")
p1.2.low.ACI <- ACI(p1.2.low) 
p1.2.low.ADI <- acoustic_diversity(p1.2.low, max_freq = 12000)
p1.2.low.BI <- bioacoustic_index(p1.2.low, min_freq = 0, max_freq = 12000)
p1.2.low.spec <- soundscapespec(p1.2.low)
p1.2.low.NDSI <- NDSI(p1.2.low.spec)
p1.2.low.NDSI

p2.2.low <- ffilter(p2.2.low, from=0, to=12000, bandpass = TRUE, output="Wave")
p2.2.low.ACI <- ACI(p2.2.low) 
p2.2.low.ADI <- acoustic_diversity(p2.2.low, max_freq = 12000)
p2.2.low.BI <- bioacoustic_index(p2.2.low, min_freq = 0, max_freq = 12000)
p2.2.low.spec <- soundscapespec(p2.2.low)
p2.2.low.NDSI <- NDSI(p2.2.low.spec)
p2.2.low.NDSI

p3.2.low <- ffilter(p3.2.low, from=0, to=12000, bandpass = TRUE, output="Wave")
p3.2.low.ACI <- ACI(p3.2.low) 
p3.2.low.ADI <- acoustic_diversity(p3.2.low, max_freq = 12000)
p3.2.low.BI <- bioacoustic_index(p3.2.low, min_freq = 0, max_freq = 12000)
p3.2.low.spec <- soundscapespec(p3.2.low)
p3.2.low.NDSI <- NDSI(p3.2.low.spec)
p3.2.low.NDSI

p4.2.low <- ffilter(p4.2.low, from=0, to=12000, bandpass = TRUE, output="Wave")
p4.2.low.ACI <- ACI(p4.2.low) 
p4.2.low.ADI <- acoustic_diversity(p4.2.low, max_freq = 12000)
p4.2.low.BI <- bioacoustic_index(p4.2.low, min_freq = 0, max_freq = 12000)
p4.2.low.spec <- soundscapespec(p4.2.low)
p4.2.low.NDSI <- NDSI(p4.2.low.spec)
p4.2.low.NDSI

p5.2.low <- ffilter(p5.2.low, from=0, to=12000, bandpass = TRUE, output="Wave")
p5.2.low.ACI <- ACI(p5.2.low) 
p5.2.low.ADI <- acoustic_diversity(p5.2.low, max_freq = 12000)
p5.2.low.BI <- bioacoustic_index(p5.2.low, min_freq = 0, max_freq = 12000)
p5.2.low.spec <- soundscapespec(p5.2.low)
p5.2.low.NDSI <- NDSI(p5.2.low.spec)
p5.2.low.NDSI

p6.2.low <- ffilter(p6.2.low, from=0, to=12000, bandpass = TRUE, output="Wave")
p6.2.low.ACI <- ACI(p6.2.low) 
p6.2.low.ADI <- acoustic_diversity(p6.2.low, max_freq = 12000)
p6.2.low.BI <- bioacoustic_index(p6.2.low, min_freq = 0, max_freq = 12000)
p6.2.low.spec <- soundscapespec(p6.2.low)
p6.2.low.NDSI <- NDSI(p6.2.low.spec)
p6.2.low.NDSI

p7.2.low <- ffilter(p7.2.low, from=0, to=12000, bandpass = TRUE, output="Wave")
p7.2.low.ACI <- ACI(p7.2.low) 
p7.2.low.ADI <- acoustic_diversity(p7.2.low, max_freq = 12000)
p7.2.low.BI <- bioacoustic_index(p7.2.low, min_freq = 0, max_freq = 12000)
p7.2.low.spec <- soundscapespec(p7.2.low)
p7.2.low.NDSI <- NDSI(p7.2.low.spec)
p7.2.low.NDSI

p8.2.low <- ffilter(p8.2.low, from=0, to=12000, bandpass = TRUE, output="Wave")
p8.2.low.ACI <- ACI(p8.2.low) 
p8.2.low.ADI <- acoustic_diversity(p8.2.low, max_freq = 12000)
p8.2.low.BI <- bioacoustic_index(p8.2.low, min_freq = 0, max_freq = 12000)
p8.2.low.spec <- soundscapespec(p8.2.low)
p8.2.low.NDSI <- NDSI(p8.2.low.spec)
p8.2.low.NDSI

p9.2.low <- ffilter(p9.2.low, from=0, to=12000, bandpass = TRUE, output="Wave")
p9.2.low.ACI <- ACI(p9.2.low) 
p9.2.low.ADI <- acoustic_diversity(p9.2.low, max_freq = 12000)
p9.2.low.BI <- bioacoustic_index(p9.2.low, min_freq = 0, max_freq = 12000)
p9.2.low.spec <- soundscapespec(p9.2.low)
p9.2.low.NDSI <- NDSI(p9.2.low.spec)
p9.2.low.NDSI

p10.2.low <- ffilter(p10.2.low, from=0, to=12000, bandpass = TRUE, output="Wave")
p10.2.low.ACI <- ACI(p10.2.low) 
p10.2.low.ADI <- acoustic_diversity(p10.2.low, max_freq = 12000)
p10.2.low.BI <- bioacoustic_index(p10.2.low, min_freq = 0, max_freq = 12000)
p10.2.low.spec <- soundscapespec(p10.2.low)
p10.2.low.NDSI <- NDSI(p10.2.low.spec)
p10.2.low.NDSI

p1.2.low.ACI
p1.2.low.ADI$adi_left
p1.2.low.BI$left_area
p1.2.low.NDSI

ACI.low = c(p1.2.low.ACI,
            p2.2.low.ACI,
            p3.2.low.ACI,
            p4.2.low.ACI,
            p5.2.low.ACI,
            p6.2.low.ACI,
            p7.2.low.ACI,
            p8.2.low.ACI,
            p9.2.low.ACI,
            p10.2.low.ACI)

ADI.low = c(p1.2.low.ADI$adi_left,
            p2.2.low.ADI$adi_left,
            p3.2.low.ADI$adi_left,
            p4.2.low.ADI$adi_left,
            p5.2.low.ADI$adi_left,
            p6.2.low.ADI$adi_left,
            p7.2.low.ADI$adi_left,
            p8.2.low.ADI$adi_left,
            p9.2.low.ADI$adi_left,
            p10.2.low.ADI$adi_left)

BI.low = c(p1.2.low.BI$left_area,
           p2.2.low.BI$left_area,
           p3.2.low.BI$left_area,
           p4.2.low.BI$left_area,
           p5.2.low.BI$left_area,
           p6.2.low.BI$left_area,
           p7.2.low.BI$left_area,
           p8.2.low.BI$left_area,
           p9.2.low.BI$left_area,
           p10.2.low.BI$left_area)

NDSI.low = c(p1.2.low.NDSI,
             p2.2.low.NDSI,
             p3.2.low.NDSI,
             p4.2.low.NDSI,
             p5.2.low.NDSI,
             p6.2.low.NDSI,
             p7.2.low.NDSI,
             p8.2.low.NDSI,
             p9.2.low.NDSI,
             p10.2.low.NDSI)

low.freq = data.frame("Parque"=p,
                      "longitude"=p.lon, 
                      "latitude"=p.lat,
                      "ACI-low"=ACI.low, 
                      "ADI-low"=ADI.low,
                      "BI-low"=BI.low,
                      "NDSI-low"=NDSI.low,
                      "ACI-high"=ACI.high,
                      "ADI-high"=ADI.high)

#----------------------------------------------------------------------------



write.csv(low.freq, file="../data/log/low-freq.csv")
write.csv(high.freq, file="../data/log/high-freq.csv")

#graphics.off()


