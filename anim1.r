library("ggplot2")
library("animation")

dat <- data.frame(x = runif(4L), y = runif(4L))

anim <- function() {
  for (i in 1:4) {
    p1 <- ggplot(dat[1:i, ], aes(x = x, y = y)) + geom_point()
    print(p1)
  }
}

ani.options(interval=2)
ani.options(ani.width=1920, ani.height=1080, outdir=getwd())
ani.options(autoplay = FALSE)

saveVideo(anim(), video.name = "anim1.mp4")

