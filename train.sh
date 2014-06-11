# PARAMETERS:

# -data <cascade_dir_name> : Where the trained classifier should be stored.
CASCADE_DIR=cascade

# -vec <vec_file_name> : vec-file with positive samples (created by opencv_createsamples utility).
VEC_FILE=positives.vec

# -bg <background_file_name> : Background description file.
BG_FILE_LIST=negatives.txt

# -numPos <number_of_positive_samples> : Number of positive samples
NUM_POS=1400

# -numNeg<number_of_negative_samples> : Number of negative samples
NUM_NEG=800

# -numStages <number_of_stages> : Number of cascade stages to be trained.
NUM_STAGES=20

# -precalcValBufSize <precalculated_vals_buffer_size_in_Mb> : Size of buffer for precalculated feature values (in Mb).
precalcValBufSizeMb=512

# -precalcIdxBufSize <precalculated_idxs_buffer_size_in_Mb> : Size of buffer for precalculated feature indices (in Mb). The more memory you have the faster the training process.
precalcIdxBufSizeMb=512

# -featureType<{HAAR(default), LBP}> : Type of features: HAAR - Haar-like features, LBP - local binary patterns.
FEATURE_TYPE=LBP

# Size of training samples (in pixels). Must have exactly the same values as used during training samples creation (opencv_createsamples utility).
S_WIDTH=91

# Size of training samples (in pixels). Must have exactly the same values as used during training samples creation (opencv_createsamples utility).
S_HEIGHT=21

# -minHitRate <min_hit_rate> : Minimal desired hit rate for each stage of the classifier. Overall hit rate may be estimated as (min_hit_rate^number_of_stages).
MIN_HIT=0.995

# -maxFalseAlarmRate <max_false_alarm_rate> : Maximal desired false alarm rate for each stage of the classifier. Overall false alarm rate may be estimated as (max_false_alarm_rate^number_of_stages).
MAX_FALSE_ALARM=0.5

# -weightTrimRate <weight_trim_rate> : Specifies whether trimming should be used and its weight. A decent choice is 0.95.
WEIGHT_TRIM_RATE=0.95

# -maxDepth <max_depth_of_weak_tree> : Maximal depth of a weak tree. A decent choice is 1, that is case of stumps.
MAX_TREE_DEPTH=1

# -maxWeakCount <max_weak_tree_count> : Maximal count of weak trees for every cascade stage. The boosted classifier (stage) will have so many weak trees (<=maxWeakCount), as needed to achieve the given -maxFalseAlarmRate.
MAX_WEAK_COUNT=100

./opencv_traincascade -data $CASCADE_DIR -vec $VEC_FILE -bg $BG_FILE_LIST -numPos $NUM_POS -numNeg $NUM_NEG -numStages $NUM_STAGES -precalcValBufSize $precalcValBufSizeMb -precalcIdxBufSize $precalcIdxBufSizeMb -featureType $FEATURE_TYPE -w $S_WIDTH -h $S_HEIGHT > ./$CASCADE_DIR/log_file.log


# command arguments:
# opencv_traincascade.exe -data cascade001 -vec positives.vec -bg
# negatives.txt -numPos 1400 -numNeg 2800 -numStages 20 -
# precalcValBufSize 512 -precalcIdxBufSize 512 -featureType LBP -w 91 -h
# 21 > cascade001.log

# Below is the output message.

# PARAMETERS:
# cascadeDirName: cascade001
# vecFileName: positives.vec
# bgFileName: negatives.txt
# numPos: 1400
# numNeg: 2800
# numStages: 20
# precalcValBufSize[Mb] : 512
# precalcIdxBufSize[Mb] : 512
# stageType: BOOST
# featureType: LBP
# sampleWidth: 91
# sampleHeight: 21
# boostType: GAB
# minHitRate: 0.995
# maxFalseAlarmRate: 0.5
# weightTrimRate: 0.95
# maxTreeDepth: 1 