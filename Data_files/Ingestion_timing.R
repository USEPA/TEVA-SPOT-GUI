
#----------------------------------------------------------------

ingestTimesSetup <- function() {

# 13 September 2006 version.
#
#Obtains spline functions for inverse CDFs for starting times for use in later 
#calls to ingestTime to obtain starting times for ingestion by receptors.

#Data for CDFs from timing paper

#Must be used before vIngest is used

#define percentiles

P3 <- c(0.5, 0.75, 1, 1.75, 2.5, 3.75, 5, 7.5, 10, 15, 20, 25, 30, 
       35, 40, 45, 50, 55, 60, 65, 70, 75, 80, 85, 90, 92.5, 95, 
       96.25, 97.5, 98.25, 99, 99.25, 99.5)

# quantiles for meal 1

ST1 <- c(4.07732292327533,
4.22123375072951,
4.35685327753238,
4.67762902764424,
4.88119117182683,
5.12403651465802,
5.32702463772763,
5.63965743000573,
5.86089249060754,
6.18137556214991,
6.45647838187913,
6.6937823230358,
6.89852251901101,
7.08210205500141,
7.26918805345663,
7.46887461424356,
7.6810681283296,
7.89674349146262,
8.108326536353,
8.36000862089145,
8.67527335085119,
8.9870421310423,
9.33782796827557,
9.9244593221242,
10.8040001835011,
11.4853185132876,
12.0769047227513,
12.3845014380221,
12.8758509308402,
13.3934661714434,
14.3475387278110,
14.9787163296501,
15.7964436663339)

# quantiles for meal 2

temp <- c(
5.9056,7.7178,9.4066,10.5638,12.1829,
6.0154,8.0197,9.6453,10.729,12.3789,
6.1136,8.2785,9.8112,10.8493,12.5361,
6.4616,8.8808,10.187,11.0946,12.9037,
6.8855,9.2452,10.4659,11.2626,13.2008,
7.6576,9.9522,10.7597,11.47,13.6171,
8.2159,10.3156,10.9427,11.6321,13.9466,
9.2234,10.8328,11.1904,11.8915,14.4082,
9.9549,11.0823,11.3699,12.1068,14.7368,
10.7024,11.3812,11.6234,12.4765,15.2514,
11.0468,11.5565,11.7986,12.8051,15.7002,
11.31,11.7098,11.9381,13.1136,16.1262,
11.5271,11.8346,12.0636,13.4177,16.5317,
11.6921,11.9284,12.1873,13.7333,16.9012,
11.8151,12.0081,12.3176,14.0752,17.2271,
11.9128,12.0857,12.4612,14.4498,17.5172,
11.9988,12.171,12.6222,14.8474,17.7846,
12.0822,12.2749,12.8008,15.2525,18.0419,
12.1707,12.402,12.9941,15.662,18.3015,
12.2735,12.5433,13.2091,16.0845,18.5773,
12.4032,12.7161,13.4677,16.5297,18.8893,
12.5766,12.9254,13.7812,17.0047,19.2666,
12.8136,13.1318,14.1443,17.5194,19.7374,
13.0855,13.4515,14.6587,18.093,20.2921,
13.5041,14.0395,15.5641,18.7249,20.9364,
13.9032,14.4082,16.1885,19.071,21.3422,
14.5992,15.2085,17.1038,19.4851,21.9038,
15.3005,15.7463,17.5372,19.7594,22.2828,
16.7452,16.794,17.9616,20.1645,22.7278,
17.3506,17.4741,18.2343,20.6158,23.0381,
18.1949,18.2843,18.7292,21.8539,23.4297,
18.6386,18.6583,19.0702,22.4096,23.6012,
18.9542,19.2227,19.6929,22.8775,23.8175)

temp1 <- matrix(temp, nrow = 33, ncol = 5, byrow = TRUE)
ST21 <- temp1[,1]
ST22 <- temp1[,2]
ST23 <- temp1[,3]
ST24 <- temp1[,4]
ST25 <- temp1[,5]

#quantiles for meal 3

temp2 <- c(
9.4879,14.1035,15.0904,15.9624,17.2042,
9.903,14.4269,15.603,16.1421,17.3591,
10.1651,14.7097,15.8268,16.2795,17.4783,
10.6748,15.1715,16.1439,16.5612,17.7373,
11,15.5424,16.3402,16.7447,17.9254,
11.3389,15.8961,16.5688,16.9563,18.1669,
11.5723,16.1163,16.7232,17.1115,18.361,
11.938,16.4415,16.9383,17.346,18.6768,
12.2851,16.6688,17.1084,17.532,18.9406,
13.2814,16.9458,17.4033,17.8437,19.3847,
15.076,17.1424,17.6446,18.1232,19.7554,
15.8365,17.3259,17.8411,18.3914,20.0775,
16.2886,17.498,18.0127,18.6557,20.3738,
16.6274,17.6573,18.175,18.9203,20.662,
16.8984,17.8052,18.3362,19.1885,20.9532,
17.1327,17.9426,18.4988,19.4607,21.2506,
17.3471,18.0771,18.665,19.7341,21.5527,
17.5492,18.2206,18.8394,20.0062,21.8604,
17.7429,18.3803,19.0269,20.28,22.1833,
17.9329,18.5553,19.2364,20.5636,22.5417,
18.1264,18.7502,19.4821,20.8671,22.9712,
18.3353,18.9645,19.7564,21.2005,23.5424,
18.5811,19.2035,20.0383,21.5811,24.4024,
18.9112,19.5237,20.3634,22.0501,25.2711,
19.432,19.9668,20.8028,22.6866,26.0337,
19.8082,20.2476,21.0874,23.1155,26.4785,
20.3305,20.6327,21.4946,23.8551,26.956,
20.7116,20.916,21.8684,25.1375,27.1978,
21.2142,21.2786,22.4018,25.8734,27.4573,
21.6177,21.5396,22.9699,26.2971,27.6377,
22.2317,22.0119,23.8417,26.8739,27.8652,
22.5423,22.2973,24.099,27.073,27.9632,
22.937,22.6939,24.4606,27.2791,28.0842)

temp3 <- matrix(temp2, nrow = 33, ncol = 5, byrow = TRUE)
ST31 <- temp3[,1]
ST32 <- temp3[,2]
ST33 <- temp3[,3]
ST34 <- temp3[,4]
ST35 <- temp3[,5]


g1 <- splinefun(P3, ST1, method = "fmm")

g21 <- splinefun(P3, ST21, method = "fmm")
g22 <- splinefun(P3, ST22, method = "fmm")
g23 <- splinefun(P3, ST23, method = "fmm")
g24 <- splinefun(P3, ST24, method = "fmm")
g25 <- splinefun(P3, ST25, method = "fmm")

g31 <- splinefun(P3, ST31, method = "fmm")
g32 <- splinefun(P3, ST32, method = "fmm")
g33 <- splinefun(P3, ST33, method = "fmm")
g34 <- splinefun(P3, ST34, method = "fmm")
g35 <- splinefun(P3, ST35, method = "fmm")

invcdf <- list(g1 = g1, g21 = g21, g22 = g22, g23 = g23, g24 = g24, g25 = g25,
               g31 = g31, g32 = g32, g33 = g33, g34 = g34, g35 = g35)
               
invcdf
}


#----------------------------------------------------------------
#----------------------------------------------------------------

ingestTimesV2 <- function(N, invcdf, mindiff, times = "ATUS", test = FALSE) {

# 19 Dec 2006 version
# Mostly vectorized version of ingestTimes; about 150 times faster
# must be preceded by a call to ingestTimesSetup

# simulation for ingestion start times
# N = number of receptors
# invcdf = inverse cdfs for starting times - from ingestTimesSetup
#
# mindif = minimum time difference (hours) required between meals
#
# if times = "ATUS", the default, ingestion times are determined on the basis
# of ATUS data.

# if times = "RANDOM", ingestion times (5 per day) are selected randomly from
#  (0, 0.1, 0.2, ... , 23.9) hours.

# if times = "FIXED", ingestion times are always 7.0, 9.5, 12.0, 15.0, and
#   18.0 hours.
#
# if times = "FIXED2", ingestion times are always 12.0 and 21.0 hours.
#  these are peak demand times for Network I.

# if times = "FIXED24"  DO NOT USE.  Use ingestDose24
#
# mindif is used only if times = "ATUS"
#
# if test = TRUE, seed is set to 123

if (identical(times, "FIXED")) {return(matrix(c(7.0, 9.5, 12.0, 15.0, 18.0),
                                nrow = N, ncol = 5, byrow = TRUE))}

if (identical(times, "FIXED2")) {return(matrix(c(12.0, 999, 999, 999, 21.0),
                                 nrow = N, ncol = 5, byrow = TRUE))}

if (test) set.seed(123)

if (identical(times, "RANDOM")) {
                  t <- seq(0, 23.9, by = 0.1)
                  ti <- matrix(-1, nrow = N, ncol = 5)
                  for (i in 1:N) ti[i,] <- sort(sample(t, 5))
                  return(ti)
                  }

b1 <- c(0, 6, 8, 10, 12, 28)  #intervals for meal 1

b2 <- c(0, 11, 13, 15, 17, 28)  #intervals for meal 2

ST <- matrix(0, nrow = N, ncol = 5)
t2 <- vector(length = N)
t3 <- vector(length = N)


t1 <- invcdf[[1]](100*runif(N))

br1 <- cut(t1, breaks = b1 ,labels = FALSE, right = FALSE)

t2[br1==1] <- invcdf[[2]](100*runif(length(br1[br1==1])))
t2[br1==2] <- invcdf[[3]](100*runif(length(br1[br1==2])))
t2[br1==3] <- invcdf[[4]](100*runif(length(br1[br1==3])))
t2[br1==4] <- invcdf[[5]](100*runif(length(br1[br1==4])))
t2[br1==5] <- invcdf[[6]](100*runif(length(br1[br1==5])))

i1 <- which(t2 < (t1 + mindiff))
for (i in i1) t2[i] <- invcdf[[br1[i] + 1]](100*runif(1))

i2 <- which(t2 < (t1 + mindiff))
for (i in i2) t2[i] <- invcdf[[br1[i] + 1]](100*runif(1))

i3 <- which(t2 < (t1 + mindiff))
t2[i3] <- t1[i3] + mindiff

br2 <- cut(t2, breaks = b2 ,labels = FALSE, right = FALSE)

t3[br2==1] <- invcdf[[7]](100*runif(length(br2[br2==1])))
t3[br2==2] <- invcdf[[8]](100*runif(length(br2[br2==2])))
t3[br2==3] <- invcdf[[9]](100*runif(length(br2[br2==3])))
t3[br2==4] <- invcdf[[10]](100*runif(length(br2[br2==4])))
t3[br2==5] <- invcdf[[11]](100*runif(length(br2[br2==5])))

j1 <- which(t3 < (t2 + mindiff))
for (i in j1) t3[i] <- invcdf[[br2[i] + 6]](100*runif(1))

j2 <- which(t3 < (t2 + mindiff))
t3[j2] <- t2[j2] + mindiff

ST[,1] <- t1
ST[,3] <- t2
ST[,5] <- t3
ST[,2] <- (t1 + t2)/2    # Between meal times are half way between meal times.
ST[,4] <- (t2 + t3)/2

ST
}


