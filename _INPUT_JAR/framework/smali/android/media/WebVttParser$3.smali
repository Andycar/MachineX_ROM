.class Landroid/media/WebVttParser$3;
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
    .line 723
    const-class v0, Landroid/media/WebVttParser;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Landroid/media/WebVttParser$3;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method constructor <init>(Landroid/media/WebVttParser;)V
    .registers 2

    .prologue
    .line 723
    iput-object p1, p0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)V
    .registers 8
    .param p1, "line"    # Ljava/lang/String;

    .prologue
    .line 802
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_12

    .line 803
    iget-object v4, p0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    iget-object v5, p0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    # getter for: Landroid/media/WebVttParser;->mParseCueId:Landroid/media/WebVttParser$Phase;
    invoke-static {v5}, Landroid/media/WebVttParser;->access$600(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;

    move-result-object v5

    # setter for: Landroid/media/WebVttParser;->mPhase:Landroid/media/WebVttParser$Phase;
    invoke-static {v4, v5}, Landroid/media/WebVttParser;->access$102(Landroid/media/WebVttParser;Landroid/media/WebVttParser$Phase;)Landroid/media/WebVttParser$Phase;

    .line 820
    :cond_11
    :goto_11
    return-void

    .line 804
    :cond_12
    const-string v4, "-->"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 805
    iget-object v4, p0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    iget-object v5, p0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    # getter for: Landroid/media/WebVttParser;->mParseCueTime:Landroid/media/WebVttParser$Phase;
    invoke-static {v5}, Landroid/media/WebVttParser;->access$700(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;

    move-result-object v5

    # setter for: Landroid/media/WebVttParser;->mPhase:Landroid/media/WebVttParser$Phase;
    invoke-static {v4, v5}, Landroid/media/WebVttParser;->access$102(Landroid/media/WebVttParser;Landroid/media/WebVttParser$Phase;)Landroid/media/WebVttParser$Phase;

    .line 806
    iget-object v4, p0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    # getter for: Landroid/media/WebVttParser;->mPhase:Landroid/media/WebVttParser$Phase;
    invoke-static {v4}, Landroid/media/WebVttParser;->access$100(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;

    move-result-object v4

    invoke-interface {v4, p1}, Landroid/media/WebVttParser$Phase;->parse(Ljava/lang/String;)V

    goto :goto_11

    .line 808
    :cond_2f
    const/16 v4, 0x3a

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 809
    .local v0, "colonAt":I
    if-lez v0, :cond_3f

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-lt v0, v4, :cond_47

    .line 810
    :cond_3f
    iget-object v4, p0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    const-string/jumbo v5, "meta data header has invalid format"

    # invokes: Landroid/media/WebVttParser;->log_warning(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5, p1}, Landroid/media/WebVttParser;->access$000(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    :cond_47
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 813
    .local v1, "name":Ljava/lang/String;
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 815
    .local v3, "value":Ljava/lang/String;
    const-string v4, "Region"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 816
    invoke-virtual {p0, v3}, Landroid/media/WebVttParser$3;->parseRegion(Ljava/lang/String;)Landroid/media/TextTrackRegion;

    move-result-object v2

    .line 817
    .local v2, "region":Landroid/media/TextTrackRegion;
    iget-object v4, p0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    # getter for: Landroid/media/WebVttParser;->mListener:Landroid/media/WebVttCueListener;
    invoke-static {v4}, Landroid/media/WebVttParser;->access$800(Landroid/media/WebVttParser;)Landroid/media/WebVttCueListener;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/media/WebVttCueListener;->onRegionParsed(Landroid/media/TextTrackRegion;)V

    goto :goto_11
.end method

.method parseRegion(Ljava/lang/String;)Landroid/media/TextTrackRegion;
    .registers 32
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 725
    new-instance v26, Landroid/media/TextTrackRegion;

    invoke-direct/range {v26 .. v26}, Landroid/media/TextTrackRegion;-><init>()V

    .line 726
    .local v26, "region":Landroid/media/TextTrackRegion;
    const-string v2, " +"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .local v20, "arr$":[Ljava/lang/String;
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v25, v0

    .local v25, "len$":I
    const/16 v24, 0x0

    .local v24, "i$":I
    :goto_14
    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_16b

    aget-object v27, v20, v24

    .line 727
    .local v27, "setting":Ljava/lang/String;
    const/16 v2, 0x3d

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v23

    .line 728
    .local v23, "equalAt":I
    if-lez v23, :cond_30

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, v23

    if-ne v0, v2, :cond_33

    .line 726
    :cond_30
    :goto_30
    add-int/lit8 v24, v24, 0x1

    goto :goto_14

    .line 732
    :cond_33
    const/4 v2, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v23

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 733
    .local v4, "name":Ljava/lang/String;
    add-int/lit8 v2, v23, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 734
    .local v7, "value":Ljava/lang/String;
    const-string v2, "id"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 735
    move-object/from16 v0, v26

    iput-object v7, v0, Landroid/media/TextTrackRegion;->mId:Ljava/lang/String;

    goto :goto_30

    .line 736
    :cond_51
    const-string/jumbo v2, "width"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    .line 738
    :try_start_5a
    invoke-static {v7}, Landroid/media/WebVttParser;->parseFloatPercentage(Ljava/lang/String;)F

    move-result v2

    move-object/from16 v0, v26

    iput v2, v0, Landroid/media/TextTrackRegion;->mWidth:F
    :try_end_62
    .catch Ljava/lang/NumberFormatException; {:try_start_5a .. :try_end_62} :catch_63

    goto :goto_30

    .line 739
    :catch_63
    move-exception v22

    .line 740
    .local v22, "e":Ljava/lang/NumberFormatException;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    const-string/jumbo v3, "region setting"

    const-string v5, "has invalid value"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v6

    # invokes: Landroid/media/WebVttParser;->log_warning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v2 .. v7}, Landroid/media/WebVttParser;->access$400(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_30

    .line 743
    .end local v22    # "e":Ljava/lang/NumberFormatException;
    :cond_75
    const-string v2, "lines"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b8

    .line 744
    const-string v2, ".*[^0-9].*"

    invoke-virtual {v7, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_91

    .line 745
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    const-string v3, "lines"

    const-string v5, "contains an invalid character"

    # invokes: Landroid/media/WebVttParser;->log_warning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v4, v5, v7}, Landroid/media/WebVttParser;->access$500(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_30

    .line 748
    :cond_91
    :try_start_91
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v26

    iput v2, v0, Landroid/media/TextTrackRegion;->mLines:I

    .line 749
    sget-boolean v2, Landroid/media/WebVttParser$3;->$assertionsDisabled:Z

    if-nez v2, :cond_30

    move-object/from16 v0, v26

    iget v2, v0, Landroid/media/TextTrackRegion;->mLines:I

    if-gez v2, :cond_30

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_a9
    .catch Ljava/lang/NumberFormatException; {:try_start_91 .. :try_end_a9} :catch_a9

    .line 750
    :catch_a9
    move-exception v22

    .line 751
    .restart local v22    # "e":Ljava/lang/NumberFormatException;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    const-string/jumbo v3, "region setting"

    const-string v5, "is not numeric"

    # invokes: Landroid/media/WebVttParser;->log_warning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v4, v5, v7}, Landroid/media/WebVttParser;->access$500(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_30

    .line 754
    .end local v22    # "e":Ljava/lang/NumberFormatException;
    :cond_b8
    const-string/jumbo v2, "regionanchor"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ca

    const-string/jumbo v2, "viewportanchor"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_143

    .line 756
    :cond_ca
    const-string v2, ","

    invoke-virtual {v7, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v21

    .line 757
    .local v21, "commaAt":I
    if-gez v21, :cond_e0

    .line 758
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    const-string/jumbo v3, "region setting"

    const-string v5, "contains no comma"

    # invokes: Landroid/media/WebVttParser;->log_warning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v4, v5, v7}, Landroid/media/WebVttParser;->access$500(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_30

    .line 762
    :cond_e0
    const/4 v2, 0x0

    move/from16 v0, v21

    invoke-virtual {v7, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 763
    .local v13, "anchorX":Ljava/lang/String;
    add-int/lit8 v2, v21, 0x1

    invoke-virtual {v7, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    .line 767
    .local v19, "anchorY":Ljava/lang/String;
    :try_start_ed
    invoke-static {v13}, Landroid/media/WebVttParser;->parseFloatPercentage(Ljava/lang/String;)F
    :try_end_f0
    .catch Ljava/lang/NumberFormatException; {:try_start_ed .. :try_end_f0} :catch_10c

    move-result v28

    .line 774
    .local v28, "x":F
    :try_start_f1
    invoke-static/range {v19 .. v19}, Landroid/media/WebVttParser;->parseFloatPercentage(Ljava/lang/String;)F
    :try_end_f4
    .catch Ljava/lang/NumberFormatException; {:try_start_f1 .. :try_end_f4} :catch_120

    move-result v29

    .line 781
    .local v29, "y":F
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x72

    if-ne v2, v3, :cond_135

    .line 782
    move/from16 v0, v28

    move-object/from16 v1, v26

    iput v0, v1, Landroid/media/TextTrackRegion;->mAnchorPointX:F

    .line 783
    move/from16 v0, v29

    move-object/from16 v1, v26

    iput v0, v1, Landroid/media/TextTrackRegion;->mAnchorPointY:F

    goto/16 :goto_30

    .line 768
    .end local v28    # "x":F
    .end local v29    # "y":F
    :catch_10c
    move-exception v22

    .line 769
    .restart local v22    # "e":Ljava/lang/NumberFormatException;
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    const-string/jumbo v9, "region setting"

    const-string v11, "has invalid x component"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v12

    move-object v10, v4

    # invokes: Landroid/media/WebVttParser;->log_warning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v8 .. v13}, Landroid/media/WebVttParser;->access$400(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_30

    .line 775
    .end local v22    # "e":Ljava/lang/NumberFormatException;
    .restart local v28    # "x":F
    :catch_120
    move-exception v22

    .line 776
    .restart local v22    # "e":Ljava/lang/NumberFormatException;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    const-string/jumbo v15, "region setting"

    const-string v17, "has invalid y component"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v16, v4

    # invokes: Landroid/media/WebVttParser;->log_warning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v14 .. v19}, Landroid/media/WebVttParser;->access$400(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_30

    .line 785
    .end local v22    # "e":Ljava/lang/NumberFormatException;
    .restart local v29    # "y":F
    :cond_135
    move/from16 v0, v28

    move-object/from16 v1, v26

    iput v0, v1, Landroid/media/TextTrackRegion;->mViewportAnchorPointX:F

    .line 786
    move/from16 v0, v29

    move-object/from16 v1, v26

    iput v0, v1, Landroid/media/TextTrackRegion;->mViewportAnchorPointY:F

    goto/16 :goto_30

    .line 788
    .end local v13    # "anchorX":Ljava/lang/String;
    .end local v19    # "anchorY":Ljava/lang/String;
    .end local v21    # "commaAt":I
    .end local v28    # "x":F
    .end local v29    # "y":F
    :cond_143
    const-string/jumbo v2, "scroll"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 789
    const-string/jumbo v2, "up"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15d

    .line 790
    const/16 v2, 0x12d

    move-object/from16 v0, v26

    iput v2, v0, Landroid/media/TextTrackRegion;->mScrollValue:I

    goto/16 :goto_30

    .line 793
    :cond_15d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    const-string/jumbo v3, "region setting"

    const-string v5, "has invalid value"

    # invokes: Landroid/media/WebVttParser;->log_warning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v4, v5, v7}, Landroid/media/WebVttParser;->access$500(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_30

    .line 797
    .end local v4    # "name":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    .end local v23    # "equalAt":I
    .end local v27    # "setting":Ljava/lang/String;
    :cond_16b
    return-object v26
.end method
