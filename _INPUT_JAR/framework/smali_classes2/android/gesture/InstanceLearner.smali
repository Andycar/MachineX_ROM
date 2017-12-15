.class Landroid/gesture/InstanceLearner;
.super Landroid/gesture/Learner;
.source "InstanceLearner.java"


# static fields
.field private static final sComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/gesture/Prediction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    new-instance v0, Landroid/gesture/InstanceLearner$1;

    invoke-direct {v0}, Landroid/gesture/InstanceLearner$1;-><init>()V

    sput-object v0, Landroid/gesture/InstanceLearner;->sComparator:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/gesture/Learner;-><init>()V

    return-void
.end method


# virtual methods
.method classify(II[F)Ljava/util/ArrayList;
    .registers 24
    .param p1, "sequenceType"    # I
    .param p2, "orientationType"    # I
    .param p3, "vector"    # [F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[F)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/gesture/Prediction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .local v12, "predictions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/Prediction;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/gesture/InstanceLearner;->getInstances()Ljava/util/ArrayList;

    move-result-object v9

    .line 47
    .local v9, "instances":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/Instance;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 48
    .local v4, "count":I
    new-instance v10, Ljava/util/TreeMap;

    invoke-direct {v10}, Ljava/util/TreeMap;-><init>()V

    .line 49
    .local v10, "label2score":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/Double;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_13
    if-ge v5, v4, :cond_91

    .line 50
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/gesture/Instance;

    .line 51
    .local v13, "sample":Landroid/gesture/Instance;
    iget-object v0, v13, Landroid/gesture/Instance;->vector:[F

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_32

    .line 49
    :cond_2f
    :goto_2f
    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    .line 55
    :cond_32
    const/16 v18, 0x2

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_7c

    .line 56
    iget-object v0, v13, Landroid/gesture/Instance;->vector:[F

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    move/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/gesture/GestureUtils;->minimumCosineDistance([F[FI)F

    move-result v18

    move/from16 v0, v18

    float-to-double v6, v0

    .line 61
    .local v6, "distance":D
    :goto_4b
    const-wide/16 v18, 0x0

    cmpl-double v18, v6, v18

    if-nez v18, :cond_8c

    .line 62
    const-wide v16, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 66
    .local v16, "weight":D
    :goto_56
    iget-object v0, v13, Landroid/gesture/Instance;->label:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Double;

    .line 67
    .local v14, "score":Ljava/lang/Double;
    if-eqz v14, :cond_6c

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    cmpl-double v18, v16, v18

    if-lez v18, :cond_2f

    .line 68
    :cond_6c
    iget-object v0, v13, Landroid/gesture/Instance;->label:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2f

    .line 58
    .end local v6    # "distance":D
    .end local v14    # "score":Ljava/lang/Double;
    .end local v16    # "weight":D
    :cond_7c
    iget-object v0, v13, Landroid/gesture/Instance;->vector:[F

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/gesture/GestureUtils;->squaredEuclideanDistance([F[F)F

    move-result v18

    move/from16 v0, v18

    float-to-double v6, v0

    .restart local v6    # "distance":D
    goto :goto_4b

    .line 64
    :cond_8c
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    div-double v16, v18, v6

    .restart local v16    # "weight":D
    goto :goto_56

    .line 73
    .end local v6    # "distance":D
    .end local v13    # "sample":Landroid/gesture/Instance;
    .end local v16    # "weight":D
    :cond_91
    invoke-virtual {v10}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_99
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_bc

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 74
    .local v11, "name":Ljava/lang/String;
    invoke-virtual {v10, v11}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Double;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    .line 76
    .local v14, "score":D
    new-instance v18, Landroid/gesture/Prediction;

    move-object/from16 v0, v18

    invoke-direct {v0, v11, v14, v15}, Landroid/gesture/Prediction;-><init>(Ljava/lang/String;D)V

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_99

    .line 84
    .end local v11    # "name":Ljava/lang/String;
    .end local v14    # "score":D
    :cond_bc
    sget-object v18, Landroid/gesture/InstanceLearner;->sComparator:Ljava/util/Comparator;

    move-object/from16 v0, v18

    invoke-static {v12, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 86
    return-object v12
.end method
