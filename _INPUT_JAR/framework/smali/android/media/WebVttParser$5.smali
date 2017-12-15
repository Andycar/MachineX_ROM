.class Landroid/media/WebVttParser$5;
.super Ljava/lang/Object;
.source "WebVttRenderer.java"

# interfaces
.implements Landroid/media/WebVttParser$Phase;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/WebVttParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Landroid/media/WebVttParser;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 848
    const-class v0, Landroid/media/WebVttParser;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Landroid/media/WebVttParser$5;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method constructor <init>(Landroid/media/WebVttParser;)V
    .registers 2

    .prologue
    .line 848
    iput-object p1, p0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)V
    .registers 20
    .param p1, "line"    # Ljava/lang/String;

    .prologue
    .line 851
    const-string v15, "-->"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 852
    .local v3, "arrowAt":I
    if-gez v3, :cond_25

    .line 853
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    const/16 v16, 0x0

    # setter for: Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;
    invoke-static/range {v15 .. v16}, Landroid/media/WebVttParser;->access$902(Landroid/media/WebVttParser;Landroid/media/TextTrackCue;)Landroid/media/TextTrackCue;

    .line 854
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    move-object/from16 v16, v0

    # getter for: Landroid/media/WebVttParser;->mParseCueId:Landroid/media/WebVttParser$Phase;
    invoke-static/range {v16 .. v16}, Landroid/media/WebVttParser;->access$600(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;

    move-result-object v16

    # setter for: Landroid/media/WebVttParser;->mPhase:Landroid/media/WebVttParser$Phase;
    invoke-static/range {v15 .. v16}, Landroid/media/WebVttParser;->access$102(Landroid/media/WebVttParser;Landroid/media/WebVttParser$Phase;)Landroid/media/WebVttParser$Phase;

    .line 947
    :goto_24
    return-void

    .line 858
    :cond_25
    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 860
    .local v13, "start":Ljava/lang/String;
    add-int/lit8 v15, v3, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    const-string v16, "^\\s+"

    const-string v17, ""

    invoke-virtual/range {v15 .. v17}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "\\s+"

    const-string v17, " "

    invoke-virtual/range {v15 .. v17}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 862
    .local v10, "rest":Ljava/lang/String;
    const/16 v15, 0x20

    invoke-virtual {v10, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    .line 863
    .local v12, "spaceAt":I
    if-lez v12, :cond_9c

    const/4 v15, 0x0

    invoke-virtual {v10, v15, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 864
    .local v6, "end":Ljava/lang/String;
    :goto_55
    if-lez v12, :cond_9e

    add-int/lit8 v15, v12, 0x1

    invoke-virtual {v10, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 866
    :goto_5d
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    # getter for: Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;
    invoke-static {v15}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v15

    invoke-static {v13}, Landroid/media/WebVttParser;->parseTimestampMs(Ljava/lang/String;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    iput-wide v0, v15, Landroid/media/TextTrackCue;->mStartTimeMs:J

    .line 867
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    # getter for: Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;
    invoke-static {v15}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v15

    invoke-static {v6}, Landroid/media/WebVttParser;->parseTimestampMs(Ljava/lang/String;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    iput-wide v0, v15, Landroid/media/TextTrackCue;->mEndTimeMs:J

    .line 868
    const-string v15, " +"

    invoke-virtual {v10, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .local v2, "arr$":[Ljava/lang/String;
    array-length v8, v2

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_85
    if-ge v7, v8, :cond_28b

    aget-object v11, v2, v7

    .line 869
    .local v11, "setting":Ljava/lang/String;
    const/16 v15, 0x3a

    invoke-virtual {v11, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 870
    .local v4, "colonAt":I
    if-lez v4, :cond_99

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    if-ne v4, v15, :cond_a1

    .line 868
    :cond_99
    :goto_99
    add-int/lit8 v7, v7, 0x1

    goto :goto_85

    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v4    # "colonAt":I
    .end local v6    # "end":Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    .end local v11    # "setting":Ljava/lang/String;
    :cond_9c
    move-object v6, v10

    .line 863
    goto :goto_55

    .line 864
    .restart local v6    # "end":Ljava/lang/String;
    :cond_9e
    const-string v10, ""

    goto :goto_5d

    .line 873
    .restart local v2    # "arr$":[Ljava/lang/String;
    .restart local v4    # "colonAt":I
    .restart local v7    # "i$":I
    .restart local v8    # "len$":I
    .restart local v11    # "setting":Ljava/lang/String;
    :cond_a1
    const/4 v15, 0x0

    invoke-virtual {v11, v15, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 874
    .local v9, "name":Ljava/lang/String;
    add-int/lit8 v15, v4, 0x1

    invoke-virtual {v11, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 876
    .local v14, "value":Ljava/lang/String;
    const-string/jumbo v15, "region"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c0

    .line 877
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    # getter for: Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;
    invoke-static {v15}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v15

    iput-object v14, v15, Landroid/media/TextTrackCue;->mRegionId:Ljava/lang/String;

    goto :goto_99

    .line 878
    :cond_c0
    const-string/jumbo v15, "vertical"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_108

    .line 879
    const-string/jumbo v15, "rl"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_e1

    .line 880
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    # getter for: Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;
    invoke-static {v15}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v15

    const/16 v16, 0x65

    move/from16 v0, v16

    iput v0, v15, Landroid/media/TextTrackCue;->mWritingDirection:I

    goto :goto_99

    .line 882
    :cond_e1
    const-string v15, "lr"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_f8

    .line 883
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    # getter for: Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;
    invoke-static {v15}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v15

    const/16 v16, 0x66

    move/from16 v0, v16

    iput v0, v15, Landroid/media/TextTrackCue;->mWritingDirection:I

    goto :goto_99

    .line 886
    :cond_f8
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    const-string v16, "cue setting"

    const-string v17, "has invalid value"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    # invokes: Landroid/media/WebVttParser;->log_warning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v15, v0, v9, v1, v14}, Landroid/media/WebVttParser;->access$500(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_99

    .line 888
    :cond_108
    const-string v15, "line"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_19d

    .line 891
    :try_start_110
    sget-boolean v15, Landroid/media/WebVttParser$5;->$assertionsDisabled:Z

    if-nez v15, :cond_134

    const/16 v15, 0x20

    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    if-ltz v15, :cond_134

    new-instance v15, Ljava/lang/AssertionError;

    invoke-direct {v15}, Ljava/lang/AssertionError;-><init>()V

    throw v15
    :try_end_122
    .catch Ljava/lang/NumberFormatException; {:try_start_110 .. :try_end_122} :catch_122

    .line 902
    :catch_122
    move-exception v5

    .line 903
    .local v5, "e":Ljava/lang/NumberFormatException;
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    const-string v16, "cue setting"

    const-string v17, "is not numeric or percentage"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    # invokes: Landroid/media/WebVttParser;->log_warning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v15, v0, v9, v1, v14}, Landroid/media/WebVttParser;->access$500(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_99

    .line 892
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    :cond_134
    :try_start_134
    const-string v15, "%"

    invoke-virtual {v14, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_160

    .line 893
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    # getter for: Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;
    invoke-static {v15}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    iput-boolean v0, v15, Landroid/media/TextTrackCue;->mSnapToLines:Z

    .line 894
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    # getter for: Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;
    invoke-static {v15}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v15

    invoke-static {v14}, Landroid/media/WebVttParser;->parseIntPercentage(Ljava/lang/String;)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;

    goto/16 :goto_99

    .line 895
    :cond_160
    const-string v15, ".*[^0-9].*"

    invoke-virtual {v14, v15}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_179

    .line 896
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    const-string v16, "cue setting"

    const-string v17, "contains an invalid character"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    # invokes: Landroid/media/WebVttParser;->log_warning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v15, v0, v9, v1, v14}, Landroid/media/WebVttParser;->access$500(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_99

    .line 899
    :cond_179
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    # getter for: Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;
    invoke-static {v15}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v15, Landroid/media/TextTrackCue;->mSnapToLines:Z

    .line 900
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    # getter for: Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;
    invoke-static {v15}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v15

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;
    :try_end_19b
    .catch Ljava/lang/NumberFormatException; {:try_start_134 .. :try_end_19b} :catch_122

    goto/16 :goto_99

    .line 907
    :cond_19d
    const-string/jumbo v15, "position"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1ca

    .line 909
    :try_start_1a6
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    # getter for: Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;
    invoke-static {v15}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v15

    invoke-static {v14}, Landroid/media/WebVttParser;->parseIntPercentage(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/media/TextTrackCue;->mTextPosition:I
    :try_end_1b6
    .catch Ljava/lang/NumberFormatException; {:try_start_1a6 .. :try_end_1b6} :catch_1b8

    goto/16 :goto_99

    .line 910
    :catch_1b8
    move-exception v5

    .line 911
    .restart local v5    # "e":Ljava/lang/NumberFormatException;
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    const-string v16, "cue setting"

    const-string v17, "is not numeric or percentage"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    # invokes: Landroid/media/WebVttParser;->log_warning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v15, v0, v9, v1, v14}, Landroid/media/WebVttParser;->access$500(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_99

    .line 914
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    :cond_1ca
    const-string/jumbo v15, "size"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1f7

    .line 916
    :try_start_1d3
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    # getter for: Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;
    invoke-static {v15}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v15

    invoke-static {v14}, Landroid/media/WebVttParser;->parseIntPercentage(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/media/TextTrackCue;->mSize:I
    :try_end_1e3
    .catch Ljava/lang/NumberFormatException; {:try_start_1d3 .. :try_end_1e3} :catch_1e5

    goto/16 :goto_99

    .line 917
    :catch_1e5
    move-exception v5

    .line 918
    .restart local v5    # "e":Ljava/lang/NumberFormatException;
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    const-string v16, "cue setting"

    const-string v17, "is not numeric or percentage"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    # invokes: Landroid/media/WebVttParser;->log_warning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v15, v0, v9, v1, v14}, Landroid/media/WebVttParser;->access$500(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_99

    .line 921
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    :cond_1f7
    const-string v15, "align"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_99

    .line 922
    const-string/jumbo v15, "start"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_218

    .line 923
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    # getter for: Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;
    invoke-static {v15}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v15

    const/16 v16, 0xc9

    move/from16 v0, v16

    iput v0, v15, Landroid/media/TextTrackCue;->mAlignment:I

    goto/16 :goto_99

    .line 924
    :cond_218
    const-string/jumbo v15, "middle"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_231

    .line 925
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    # getter for: Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;
    invoke-static {v15}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v15

    const/16 v16, 0xc8

    move/from16 v0, v16

    iput v0, v15, Landroid/media/TextTrackCue;->mAlignment:I

    goto/16 :goto_99

    .line 926
    :cond_231
    const-string v15, "end"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_249

    .line 927
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    # getter for: Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;
    invoke-static {v15}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v15

    const/16 v16, 0xca

    move/from16 v0, v16

    iput v0, v15, Landroid/media/TextTrackCue;->mAlignment:I

    goto/16 :goto_99

    .line 928
    :cond_249
    const-string v15, "left"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_261

    .line 929
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    # getter for: Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;
    invoke-static {v15}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v15

    const/16 v16, 0xcb

    move/from16 v0, v16

    iput v0, v15, Landroid/media/TextTrackCue;->mAlignment:I

    goto/16 :goto_99

    .line 930
    :cond_261
    const-string/jumbo v15, "right"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_27a

    .line 931
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    # getter for: Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;
    invoke-static {v15}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v15

    const/16 v16, 0xcc

    move/from16 v0, v16

    iput v0, v15, Landroid/media/TextTrackCue;->mAlignment:I

    goto/16 :goto_99

    .line 933
    :cond_27a
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    const-string v16, "cue setting"

    const-string v17, "has invalid value"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    # invokes: Landroid/media/WebVttParser;->log_warning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v15, v0, v9, v1, v14}, Landroid/media/WebVttParser;->access$500(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_99

    .line 939
    .end local v4    # "colonAt":I
    .end local v9    # "name":Ljava/lang/String;
    .end local v11    # "setting":Ljava/lang/String;
    .end local v14    # "value":Ljava/lang/String;
    :cond_28b
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    # getter for: Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;
    invoke-static {v15}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v15

    iget-object v15, v15, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;

    if-nez v15, :cond_2b7

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    # getter for: Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;
    invoke-static {v15}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v15

    iget v15, v15, Landroid/media/TextTrackCue;->mSize:I

    const/16 v16, 0x64

    move/from16 v0, v16

    if-ne v15, v0, :cond_2b7

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    # getter for: Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;
    invoke-static {v15}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v15

    iget v15, v15, Landroid/media/TextTrackCue;->mWritingDirection:I

    const/16 v16, 0x64

    move/from16 v0, v16

    if-eq v15, v0, :cond_2c5

    .line 943
    :cond_2b7
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    # getter for: Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;
    invoke-static {v15}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v15

    const-string v16, ""

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/media/TextTrackCue;->mRegionId:Ljava/lang/String;

    .line 946
    :cond_2c5
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    move-object/from16 v16, v0

    # getter for: Landroid/media/WebVttParser;->mParseCueText:Landroid/media/WebVttParser$Phase;
    invoke-static/range {v16 .. v16}, Landroid/media/WebVttParser;->access$1000(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;

    move-result-object v16

    # setter for: Landroid/media/WebVttParser;->mPhase:Landroid/media/WebVttParser$Phase;
    invoke-static/range {v15 .. v16}, Landroid/media/WebVttParser;->access$102(Landroid/media/WebVttParser;Landroid/media/WebVttParser$Phase;)Landroid/media/WebVttParser$Phase;

    goto/16 :goto_24
.end method
