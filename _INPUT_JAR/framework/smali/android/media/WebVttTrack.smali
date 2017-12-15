.class Landroid/media/WebVttTrack;
.super Landroid/media/SubtitleTrack;
.source "WebVttRenderer.java"

# interfaces
.implements Landroid/media/WebVttCueListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "WebVttTrack"


# instance fields
.field private mCurrentRunID:Ljava/lang/Long;

.field private final mExtractor:Landroid/media/UnstyledTextExtractor;

.field private final mParser:Landroid/media/WebVttParser;

.field private final mRegions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/media/TextTrackRegion;",
            ">;"
        }
    .end annotation
.end field

.field private final mRenderingWidget:Landroid/media/WebVttRenderingWidget;

.field private final mTimestamps:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mTokenizer:Landroid/media/Tokenizer;


# direct methods
.method constructor <init>(Landroid/media/WebVttRenderingWidget;Landroid/media/MediaFormat;)V
    .registers 5
    .param p1, "renderingWidget"    # Landroid/media/WebVttRenderingWidget;
    .param p2, "format"    # Landroid/media/MediaFormat;

    .prologue
    .line 1004
    invoke-direct {p0, p2}, Landroid/media/SubtitleTrack;-><init>(Landroid/media/MediaFormat;)V

    .line 992
    new-instance v0, Landroid/media/WebVttParser;

    invoke-direct {v0, p0}, Landroid/media/WebVttParser;-><init>(Landroid/media/WebVttCueListener;)V

    iput-object v0, p0, Landroid/media/WebVttTrack;->mParser:Landroid/media/WebVttParser;

    .line 993
    new-instance v0, Landroid/media/UnstyledTextExtractor;

    invoke-direct {v0}, Landroid/media/UnstyledTextExtractor;-><init>()V

    iput-object v0, p0, Landroid/media/WebVttTrack;->mExtractor:Landroid/media/UnstyledTextExtractor;

    .line 995
    new-instance v0, Landroid/media/Tokenizer;

    iget-object v1, p0, Landroid/media/WebVttTrack;->mExtractor:Landroid/media/UnstyledTextExtractor;

    invoke-direct {v0, v1}, Landroid/media/Tokenizer;-><init>(Landroid/media/Tokenizer$OnTokenListener;)V

    iput-object v0, p0, Landroid/media/WebVttTrack;->mTokenizer:Landroid/media/Tokenizer;

    .line 996
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/media/WebVttTrack;->mTimestamps:Ljava/util/Vector;

    .line 999
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/WebVttTrack;->mRegions:Ljava/util/Map;

    .line 1006
    iput-object p1, p0, Landroid/media/WebVttTrack;->mRenderingWidget:Landroid/media/WebVttRenderingWidget;

    .line 1007
    return-void
.end method


# virtual methods
.method public bridge synthetic getRenderingWidget()Landroid/media/SubtitleTrack$RenderingWidget;
    .registers 2

    .prologue
    .line 989
    invoke-virtual {p0}, Landroid/media/WebVttTrack;->getRenderingWidget()Landroid/media/WebVttRenderingWidget;

    move-result-object v0

    return-object v0
.end method

.method public getRenderingWidget()Landroid/media/WebVttRenderingWidget;
    .registers 2

    .prologue
    .line 1011
    iget-object v0, p0, Landroid/media/WebVttTrack;->mRenderingWidget:Landroid/media/WebVttRenderingWidget;

    return-object v0
.end method

.method public onCueParsed(Landroid/media/TextTrackCue;)V
    .registers 20
    .param p1, "cue"    # Landroid/media/TextTrackCue;

    .prologue
    .line 1042
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/WebVttTrack;->mParser:Landroid/media/WebVttParser;

    monitor-enter v13

    .line 1044
    :try_start_5
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/media/TextTrackCue;->mRegionId:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_21

    .line 1045
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/WebVttTrack;->mRegions:Ljava/util/Map;

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/media/TextTrackCue;->mRegionId:Ljava/lang/String;

    invoke-interface {v12, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/media/TextTrackRegion;

    move-object/from16 v0, p1

    iput-object v12, v0, Landroid/media/TextTrackCue;->mRegion:Landroid/media/TextTrackRegion;

    .line 1048
    :cond_21
    move-object/from16 v0, p0

    iget-boolean v12, v0, Landroid/media/WebVttTrack;->DEBUG:Z

    if-eqz v12, :cond_41

    const-string v12, "WebVttTrack"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "adding cue "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    :cond_41
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/WebVttTrack;->mTokenizer:Landroid/media/Tokenizer;

    invoke-virtual {v12}, Landroid/media/Tokenizer;->reset()V

    .line 1052
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    .local v2, "arr$":[Ljava/lang/String;
    array-length v7, v2

    .local v7, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_4e
    if-ge v4, v7, :cond_5c

    aget-object v10, v2, v4

    .line 1053
    .local v10, "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/WebVttTrack;->mTokenizer:Landroid/media/Tokenizer;

    invoke-virtual {v12, v10}, Landroid/media/Tokenizer;->tokenize(Ljava/lang/String;)V

    .line 1052
    add-int/lit8 v4, v4, 0x1

    goto :goto_4e

    .line 1055
    .end local v10    # "s":Ljava/lang/String;
    :cond_5c
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/WebVttTrack;->mExtractor:Landroid/media/UnstyledTextExtractor;

    invoke-virtual {v12}, Landroid/media/UnstyledTextExtractor;->getText()[[Landroid/media/TextTrackCueSpan;

    move-result-object v12

    move-object/from16 v0, p1

    iput-object v12, v0, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    .line 1056
    move-object/from16 v0, p0

    iget-boolean v12, v0, Landroid/media/WebVttTrack;->DEBUG:Z

    if-eqz v12, :cond_8e

    const-string v12, "WebVttTrack"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/media/TextTrackCue;->appendStringsToBuilder(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " simplified to: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/media/TextTrackCue;->appendLinesToBuilder(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    :cond_8e
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    .local v2, "arr$":[[Landroid/media/TextTrackCueSpan;
    array-length v7, v2

    const/4 v4, 0x0

    move v5, v4

    .end local v2    # "arr$":[[Landroid/media/TextTrackCueSpan;
    .end local v4    # "i$":I
    .end local v7    # "len$":I
    .local v5, "i$":I
    :goto_95
    if-ge v5, v7, :cond_dc

    aget-object v9, v2, v5

    .line 1063
    .local v9, "line":[Landroid/media/TextTrackCueSpan;
    move-object v3, v9

    .local v3, "arr$":[Landroid/media/TextTrackCueSpan;
    array-length v8, v3

    .local v8, "len$":I
    const/4 v4, 0x0

    .end local v5    # "i$":I
    .restart local v4    # "i$":I
    :goto_9c
    if-ge v4, v8, :cond_d8

    aget-object v11, v3, v4

    .line 1064
    .local v11, "span":Landroid/media/TextTrackCueSpan;
    iget-wide v14, v11, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/media/TextTrackCue;->mStartTimeMs:J

    move-wide/from16 v16, v0

    cmp-long v12, v14, v16

    if-lez v12, :cond_d5

    iget-wide v14, v11, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/media/TextTrackCue;->mEndTimeMs:J

    move-wide/from16 v16, v0

    cmp-long v12, v14, v16

    if-gez v12, :cond_d5

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/WebVttTrack;->mTimestamps:Ljava/util/Vector;

    iget-wide v14, v11, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_d5

    .line 1067
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/WebVttTrack;->mTimestamps:Ljava/util/Vector;

    iget-wide v14, v11, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1063
    :cond_d5
    add-int/lit8 v4, v4, 0x1

    goto :goto_9c

    .line 1062
    .end local v11    # "span":Landroid/media/TextTrackCueSpan;
    :cond_d8
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    .end local v4    # "i$":I
    .restart local v5    # "i$":I
    goto :goto_95

    .line 1072
    .end local v3    # "arr$":[Landroid/media/TextTrackCueSpan;
    .end local v8    # "len$":I
    .end local v9    # "line":[Landroid/media/TextTrackCueSpan;
    :cond_dc
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/WebVttTrack;->mTimestamps:Ljava/util/Vector;

    invoke-virtual {v12}, Ljava/util/Vector;->size()I

    move-result v12

    if-lez v12, :cond_12e

    .line 1073
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/WebVttTrack;->mTimestamps:Ljava/util/Vector;

    invoke-virtual {v12}, Ljava/util/Vector;->size()I

    move-result v12

    new-array v12, v12, [J

    move-object/from16 v0, p1

    iput-object v12, v0, Landroid/media/TextTrackCue;->mInnerTimesMs:[J

    .line 1074
    const/4 v6, 0x0

    .local v6, "ix":I
    :goto_f5
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/WebVttTrack;->mTimestamps:Ljava/util/Vector;

    invoke-virtual {v12}, Ljava/util/Vector;->size()I

    move-result v12

    if-ge v6, v12, :cond_116

    .line 1075
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/media/TextTrackCue;->mInnerTimesMs:[J

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/WebVttTrack;->mTimestamps:Ljava/util/Vector;

    invoke-virtual {v12, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    aput-wide v16, v14, v6

    .line 1074
    add-int/lit8 v6, v6, 0x1

    goto :goto_f5

    .line 1077
    :cond_116
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/WebVttTrack;->mTimestamps:Ljava/util/Vector;

    invoke-virtual {v12}, Ljava/util/Vector;->clear()V

    .line 1082
    .end local v6    # "ix":I
    :goto_11d
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/WebVttTrack;->mCurrentRunID:Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    move-object/from16 v0, p1

    iput-wide v14, v0, Landroid/media/TextTrackCue;->mRunID:J

    .line 1083
    monitor-exit v13
    :try_end_12a
    .catchall {:try_start_5 .. :try_end_12a} :catchall_134

    .line 1085
    invoke-virtual/range {p0 .. p1}, Landroid/media/WebVttTrack;->addCue(Landroid/media/SubtitleTrack$Cue;)Z

    .line 1086
    return-void

    .line 1079
    :cond_12e
    const/4 v12, 0x0

    :try_start_12f
    move-object/from16 v0, p1

    iput-object v12, v0, Landroid/media/TextTrackCue;->mInnerTimesMs:[J

    goto :goto_11d

    .line 1083
    .end local v5    # "i$":I
    :catchall_134
    move-exception v12

    monitor-exit v13
    :try_end_136
    .catchall {:try_start_12f .. :try_end_136} :catchall_134

    throw v12
.end method

.method public onData([BZJ)V
    .registers 12
    .param p1, "data"    # [B
    .param p2, "eos"    # Z
    .param p3, "runID"    # J

    .prologue
    .line 1017
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 1020
    .local v1, "str":Ljava/lang/String;
    iget-object v3, p0, Landroid/media/WebVttTrack;->mParser:Landroid/media/WebVttParser;

    monitor-enter v3
    :try_end_a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_a} :catch_40

    .line 1021
    :try_start_a
    iget-object v2, p0, Landroid/media/WebVttTrack;->mCurrentRunID:Ljava/lang/Long;

    if-eqz v2, :cond_5b

    iget-object v2, p0, Landroid/media/WebVttTrack;->mCurrentRunID:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, p3, v4

    if-eqz v2, :cond_5b

    .line 1022
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Run #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/media/WebVttTrack;->mCurrentRunID:Ljava/lang/Long;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in progress.  Cannot process run #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1034
    :catchall_3d
    move-exception v2

    monitor-exit v3
    :try_end_3f
    .catchall {:try_start_a .. :try_end_3f} :catchall_3d

    :try_start_3f
    throw v2
    :try_end_40
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3f .. :try_end_40} :catch_40

    .line 1035
    .end local v1    # "str":Ljava/lang/String;
    :catch_40
    move-exception v0

    .line 1036
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v2, "WebVttTrack"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "subtitle data is not UTF-8 encoded: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_5a
    return-void

    .line 1026
    .restart local v1    # "str":Ljava/lang/String;
    :cond_5b
    :try_start_5b
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Landroid/media/WebVttTrack;->mCurrentRunID:Ljava/lang/Long;

    .line 1027
    iget-object v2, p0, Landroid/media/WebVttTrack;->mParser:Landroid/media/WebVttParser;

    invoke-virtual {v2, v1}, Landroid/media/WebVttParser;->parse(Ljava/lang/String;)V

    .line 1028
    if-eqz p2, :cond_78

    .line 1029
    invoke-virtual {p0, p3, p4}, Landroid/media/WebVttTrack;->finishedRun(J)V

    .line 1030
    iget-object v2, p0, Landroid/media/WebVttTrack;->mParser:Landroid/media/WebVttParser;

    invoke-virtual {v2}, Landroid/media/WebVttParser;->eos()V

    .line 1031
    iget-object v2, p0, Landroid/media/WebVttTrack;->mRegions:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 1032
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/WebVttTrack;->mCurrentRunID:Ljava/lang/Long;

    .line 1034
    :cond_78
    monitor-exit v3
    :try_end_79
    .catchall {:try_start_5b .. :try_end_79} :catchall_3d

    goto :goto_5a
.end method

.method public onRegionParsed(Landroid/media/TextTrackRegion;)V
    .registers 5
    .param p1, "region"    # Landroid/media/TextTrackRegion;

    .prologue
    .line 1090
    iget-object v1, p0, Landroid/media/WebVttTrack;->mParser:Landroid/media/WebVttParser;

    monitor-enter v1

    .line 1091
    :try_start_3
    iget-object v0, p0, Landroid/media/WebVttTrack;->mRegions:Ljava/util/Map;

    iget-object v2, p1, Landroid/media/TextTrackRegion;->mId:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1092
    monitor-exit v1

    .line 1093
    return-void

    .line 1092
    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public updateView(Ljava/util/Vector;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Landroid/media/SubtitleTrack$Cue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1097
    .local p1, "activeCues":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/media/SubtitleTrack$Cue;>;"
    iget-boolean v1, p0, Landroid/media/WebVttTrack;->mVisible:Z

    if-nez v1, :cond_5

    .line 1115
    :cond_4
    :goto_4
    return-void

    .line 1102
    :cond_5
    iget-boolean v1, p0, Landroid/media/WebVttTrack;->DEBUG:Z

    if-eqz v1, :cond_36

    iget-object v1, p0, Landroid/media/WebVttTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    if-eqz v1, :cond_36

    .line 1104
    :try_start_d
    const-string v1, "WebVttTrack"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/WebVttTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/media/MediaTimeProvider;->getCurrentTimeUs(ZZ)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms the active cues are:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_36} :catch_40

    .line 1112
    :cond_36
    :goto_36
    iget-object v1, p0, Landroid/media/WebVttTrack;->mRenderingWidget:Landroid/media/WebVttRenderingWidget;

    if-eqz v1, :cond_4

    .line 1113
    iget-object v1, p0, Landroid/media/WebVttTrack;->mRenderingWidget:Landroid/media/WebVttRenderingWidget;

    invoke-virtual {v1, p1}, Landroid/media/WebVttRenderingWidget;->setActiveCues(Ljava/util/Vector;)V

    goto :goto_4

    .line 1107
    :catch_40
    move-exception v0

    .line 1108
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "WebVttTrack"

    const-string v2, "at (illegal state) the active cues are:"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36
.end method
