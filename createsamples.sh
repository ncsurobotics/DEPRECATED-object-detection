# Parameters

# -vec <vec_file_name> : Name of the output file containing the positive samples for training.
VEC

#  -img <image_file_name> : Source object image (e.g., a company logo).
IMG

#  -bg <background_file_name> : Background description file; contains a list of images which are used as a background for randomly distorted versions of the object.
BG

# - num <number_of_samples> : Number of positive samples to generate.
NUM

# - bgcolor <background_color> : Background color (currently grayscale images are assumed); the background color denotes the transparent color. Since there might be compression artifacts, the amount of color tolerance can be specified by -bgthresh. All pixels withing bgcolor-bgthresh and bgcolor+bgthresh range are interpreted as transparent.
BGCOLOR

# -bgthresh <background_color_threshold>
BGTHRESH

# -w <sample_width> : Width (in pixels) of the output samples.
W

# -h <sample_height> : Height (in pixels) of the output samples.
H



perl createsamples.pl positives.txt negatives.txt samples 1500\
  "opencv_createsamples -bgcolor 0 -bgthresh 0 -maxxangle 1.1\
  -maxyangle 1.1 maxzangle 0.5 -maxidev 40 -w 80 -h 40"
