.class public Landroid/util/PathParser;
.super Ljava/lang/Object;
.source "PathParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/PathParser$1;,
        Landroid/util/PathParser$PathDataNode;,
        Landroid/util/PathParser$ExtractFloatResult;
    }
.end annotation


# static fields
.field static final LOGTAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const-class v0, Landroid/util/PathParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/util/PathParser;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    return-void
.end method

.method private static addNode(Ljava/util/ArrayList;C[F)V
    .registers 5
    .param p1, "cmd"    # C
    .param p2, "val"    # [F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/PathParser$PathDataNode;",
            ">;C[F)V"
        }
    .end annotation

    .prologue
    .line 140
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/PathParser$PathDataNode;>;"
    new-instance v0, Landroid/util/PathParser$PathDataNode;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Landroid/util/PathParser$PathDataNode;-><init>(C[FLandroid/util/PathParser$1;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    return-void
.end method

.method public static canMorph([Landroid/util/PathParser$PathDataNode;[Landroid/util/PathParser$PathDataNode;)Z
    .registers 6
    .param p0, "nodesFrom"    # [Landroid/util/PathParser$PathDataNode;
    .param p1, "nodesTo"    # [Landroid/util/PathParser$PathDataNode;

    .prologue
    const/4 v1, 0x0

    .line 93
    if-eqz p0, :cond_5

    if-nez p1, :cond_6

    .line 107
    :cond_5
    :goto_5
    return v1

    .line 97
    :cond_6
    array-length v2, p0

    array-length v3, p1

    if-ne v2, v3, :cond_5

    .line 101
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    array-length v2, p0

    if-ge v0, v2, :cond_2f

    .line 102
    aget-object v2, p0, v0

    # getter for: Landroid/util/PathParser$PathDataNode;->mType:C
    invoke-static {v2}, Landroid/util/PathParser$PathDataNode;->access$100(Landroid/util/PathParser$PathDataNode;)C

    move-result v2

    aget-object v3, p1, v0

    # getter for: Landroid/util/PathParser$PathDataNode;->mType:C
    invoke-static {v3}, Landroid/util/PathParser$PathDataNode;->access$100(Landroid/util/PathParser$PathDataNode;)C

    move-result v3

    if-ne v2, v3, :cond_5

    aget-object v2, p0, v0

    # getter for: Landroid/util/PathParser$PathDataNode;->mParams:[F
    invoke-static {v2}, Landroid/util/PathParser$PathDataNode;->access$200(Landroid/util/PathParser$PathDataNode;)[F

    move-result-object v2

    array-length v2, v2

    aget-object v3, p1, v0

    # getter for: Landroid/util/PathParser$PathDataNode;->mParams:[F
    invoke-static {v3}, Landroid/util/PathParser$PathDataNode;->access$200(Landroid/util/PathParser$PathDataNode;)[F

    move-result-object v3

    array-length v3, v3

    if-ne v2, v3, :cond_5

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 107
    :cond_2f
    const/4 v1, 0x1

    goto :goto_5
.end method

.method public static createNodesFromPathData(Ljava/lang/String;)[Landroid/util/PathParser$PathDataNode;
    .registers 9
    .param p0, "pathData"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 48
    if-nez p0, :cond_5

    .line 49
    const/4 v5, 0x0

    .line 69
    :goto_4
    return-object v5

    .line 51
    :cond_5
    const/4 v3, 0x0

    .line 52
    .local v3, "start":I
    const/4 v0, 0x1

    .line 54
    .local v0, "end":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/PathParser$PathDataNode;>;"
    :goto_c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_33

    .line 56
    invoke-static {p0, v0}, Landroid/util/PathParser;->nextStart(Ljava/lang/String;I)I

    move-result v0

    .line 57
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2f

    .line 59
    invoke-static {v2}, Landroid/util/PathParser;->getFloats(Ljava/lang/String;)[F

    move-result-object v4

    .line 60
    .local v4, "val":[F
    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v1, v5, v4}, Landroid/util/PathParser;->addNode(Ljava/util/ArrayList;C[F)V

    .line 63
    .end local v4    # "val":[F
    :cond_2f
    move v3, v0

    .line 64
    add-int/lit8 v0, v0, 0x1

    .line 65
    goto :goto_c

    .line 66
    .end local v2    # "s":Ljava/lang/String;
    :cond_33
    sub-int v5, v0, v3

    const/4 v6, 0x1

    if-ne v5, v6, :cond_47

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_47

    .line 67
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    new-array v6, v7, [F

    invoke-static {v1, v5, v6}, Landroid/util/PathParser;->addNode(Ljava/util/ArrayList;C[F)V

    .line 69
    :cond_47
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Landroid/util/PathParser$PathDataNode;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/util/PathParser$PathDataNode;

    goto :goto_4
.end method

.method public static createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;
    .registers 3
    .param p0, "pathData"    # Ljava/lang/String;

    .prologue
    .line 34
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 35
    .local v1, "path":Landroid/graphics/Path;
    invoke-static {p0}, Landroid/util/PathParser;->createNodesFromPathData(Ljava/lang/String;)[Landroid/util/PathParser$PathDataNode;

    move-result-object v0

    .line 36
    .local v0, "nodes":[Landroid/util/PathParser$PathDataNode;
    if-eqz v0, :cond_f

    .line 37
    invoke-static {v0, v1}, Landroid/util/PathParser$PathDataNode;->nodesToPath([Landroid/util/PathParser$PathDataNode;Landroid/graphics/Path;)V

    .line 40
    .end local v1    # "path":Landroid/graphics/Path;
    :goto_e
    return-object v1

    .restart local v1    # "path":Landroid/graphics/Path;
    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static deepCopyNodes([Landroid/util/PathParser$PathDataNode;)[Landroid/util/PathParser$PathDataNode;
    .registers 6
    .param p0, "source"    # [Landroid/util/PathParser$PathDataNode;

    .prologue
    const/4 v2, 0x0

    .line 77
    if-nez p0, :cond_5

    move-object v0, v2

    .line 84
    :cond_4
    return-object v0

    .line 80
    :cond_5
    array-length v3, p0

    new-array v0, v3, [Landroid/util/PathParser$PathDataNode;

    .line 81
    .local v0, "copy":[Landroid/util/PathParser$PathDataNode;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    array-length v3, p0

    if-ge v1, v3, :cond_4

    .line 82
    new-instance v3, Landroid/util/PathParser$PathDataNode;

    aget-object v4, p0, v1

    invoke-direct {v3, v4, v2}, Landroid/util/PathParser$PathDataNode;-><init>(Landroid/util/PathParser$PathDataNode;Landroid/util/PathParser$1;)V

    aput-object v3, v0, v1

    .line 81
    add-int/lit8 v1, v1, 0x1

    goto :goto_9
.end method

.method private static extract(Ljava/lang/String;ILandroid/util/PathParser$ExtractFloatResult;)V
    .registers 7
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "result"    # Landroid/util/PathParser$ExtractFloatResult;

    .prologue
    .line 205
    move v1, p1

    .line 206
    .local v1, "currentIndex":I
    const/4 v2, 0x0

    .line 207
    .local v2, "foundSeparator":Z
    const/4 v3, 0x0

    iput-boolean v3, p2, Landroid/util/PathParser$ExtractFloatResult;->mEndWithNegSign:Z

    .line 208
    :goto_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_14

    .line 209
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 210
    .local v0, "currentChar":C
    sparse-switch v0, :sswitch_data_24

    .line 222
    :cond_12
    :goto_12
    if-eqz v2, :cond_20

    .line 228
    .end local v0    # "currentChar":C
    :cond_14
    iput v1, p2, Landroid/util/PathParser$ExtractFloatResult;->mEndPosition:I

    .line 229
    return-void

    .line 213
    .restart local v0    # "currentChar":C
    :sswitch_17
    const/4 v2, 0x1

    .line 214
    goto :goto_12

    .line 216
    :sswitch_19
    if-eq v1, p1, :cond_12

    .line 217
    const/4 v2, 0x1

    .line 218
    const/4 v3, 0x1

    iput-boolean v3, p2, Landroid/util/PathParser$ExtractFloatResult;->mEndWithNegSign:Z

    goto :goto_12

    .line 208
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 210
    nop

    :sswitch_data_24
    .sparse-switch
        0x20 -> :sswitch_17
        0x2c -> :sswitch_17
        0x2d -> :sswitch_19
    .end sparse-switch
.end method

.method private static getFloats(Ljava/lang/String;)[F
    .registers 14
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 158
    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v11, 0x7a

    if-ne v8, v11, :cond_19

    move v8, v9

    :goto_b
    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x5a

    if-ne v11, v12, :cond_1b

    :goto_13
    or-int/2addr v8, v9

    if-eqz v8, :cond_1d

    .line 159
    new-array v8, v10, [F

    .line 189
    :goto_18
    return-object v8

    :cond_19
    move v8, v10

    .line 158
    goto :goto_b

    :cond_1b
    move v9, v10

    goto :goto_13

    .line 162
    :cond_1d
    :try_start_1d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    new-array v5, v8, [F

    .line 163
    .local v5, "results":[F
    const/4 v0, 0x0

    .line 164
    .local v0, "count":I
    const/4 v6, 0x1

    .line 165
    .local v6, "startPosition":I
    const/4 v3, 0x0

    .line 167
    .local v3, "endPosition":I
    new-instance v4, Landroid/util/PathParser$ExtractFloatResult;

    const/4 v8, 0x0

    invoke-direct {v4, v8}, Landroid/util/PathParser$ExtractFloatResult;-><init>(Landroid/util/PathParser$1;)V

    .line 168
    .local v4, "result":Landroid/util/PathParser$ExtractFloatResult;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    .local v7, "totalLength":I
    move v1, v0

    .line 173
    .end local v0    # "count":I
    .local v1, "count":I
    :goto_31
    if-ge v6, v7, :cond_51

    .line 174
    invoke-static {p0, v6, v4}, Landroid/util/PathParser;->extract(Ljava/lang/String;ILandroid/util/PathParser$ExtractFloatResult;)V

    .line 175
    iget v3, v4, Landroid/util/PathParser$ExtractFloatResult;->mEndPosition:I

    .line 177
    if-ge v6, v3, :cond_76

    .line 178
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    invoke-virtual {p0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    aput v8, v5, v1

    .line 182
    :goto_46
    iget-boolean v8, v4, Landroid/util/PathParser$ExtractFloatResult;->mEndWithNegSign:Z

    if-eqz v8, :cond_4d

    .line 184
    move v6, v3

    move v1, v0

    .end local v0    # "count":I
    .restart local v1    # "count":I
    goto :goto_31

    .line 186
    .end local v1    # "count":I
    .restart local v0    # "count":I
    :cond_4d
    add-int/lit8 v6, v3, 0x1

    move v1, v0

    .end local v0    # "count":I
    .restart local v1    # "count":I
    goto :goto_31

    .line 189
    :cond_51
    invoke-static {v5, v1}, Ljava/util/Arrays;->copyOf([FI)[F
    :try_end_54
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_54} :catch_56

    move-result-object v8

    goto :goto_18

    .line 190
    .end local v1    # "count":I
    .end local v3    # "endPosition":I
    .end local v4    # "result":Landroid/util/PathParser$ExtractFloatResult;
    .end local v5    # "results":[F
    .end local v6    # "startPosition":I
    .end local v7    # "totalLength":I
    :catch_56
    move-exception v2

    .line 191
    .local v2, "e":Ljava/lang/NumberFormatException;
    sget-object v8, Landroid/util/PathParser;->LOGTAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "error in parsing \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    throw v2

    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "count":I
    .restart local v3    # "endPosition":I
    .restart local v4    # "result":Landroid/util/PathParser$ExtractFloatResult;
    .restart local v5    # "results":[F
    .restart local v6    # "startPosition":I
    .restart local v7    # "totalLength":I
    :cond_76
    move v0, v1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    goto :goto_46
.end method

.method private static nextStart(Ljava/lang/String;I)I
    .registers 5
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "end"    # I

    .prologue
    .line 129
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p1, v1, :cond_18

    .line 130
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 131
    .local v0, "c":C
    add-int/lit8 v1, v0, -0x41

    add-int/lit8 v2, v0, -0x5a

    mul-int/2addr v1, v2

    if-lez v1, :cond_18

    add-int/lit8 v1, v0, -0x61

    add-int/lit8 v2, v0, -0x7a

    mul-int/2addr v1, v2

    if-gtz v1, :cond_19

    .line 136
    .end local v0    # "c":C
    :cond_18
    return p1

    .line 134
    .restart local v0    # "c":C
    :cond_19
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method public static updateNodes([Landroid/util/PathParser$PathDataNode;[Landroid/util/PathParser$PathDataNode;)V
    .registers 6
    .param p0, "target"    # [Landroid/util/PathParser$PathDataNode;
    .param p1, "source"    # [Landroid/util/PathParser$PathDataNode;

    .prologue
    .line 118
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_2f

    .line 119
    aget-object v2, p0, v0

    aget-object v3, p1, v0

    # getter for: Landroid/util/PathParser$PathDataNode;->mType:C
    invoke-static {v3}, Landroid/util/PathParser$PathDataNode;->access$100(Landroid/util/PathParser$PathDataNode;)C

    move-result v3

    # setter for: Landroid/util/PathParser$PathDataNode;->mType:C
    invoke-static {v2, v3}, Landroid/util/PathParser$PathDataNode;->access$102(Landroid/util/PathParser$PathDataNode;C)C

    .line 120
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_10
    aget-object v2, p1, v0

    # getter for: Landroid/util/PathParser$PathDataNode;->mParams:[F
    invoke-static {v2}, Landroid/util/PathParser$PathDataNode;->access$200(Landroid/util/PathParser$PathDataNode;)[F

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_2c

    .line 121
    aget-object v2, p0, v0

    # getter for: Landroid/util/PathParser$PathDataNode;->mParams:[F
    invoke-static {v2}, Landroid/util/PathParser$PathDataNode;->access$200(Landroid/util/PathParser$PathDataNode;)[F

    move-result-object v2

    aget-object v3, p1, v0

    # getter for: Landroid/util/PathParser$PathDataNode;->mParams:[F
    invoke-static {v3}, Landroid/util/PathParser$PathDataNode;->access$200(Landroid/util/PathParser$PathDataNode;)[F

    move-result-object v3

    aget v3, v3, v1

    aput v3, v2, v1

    .line 120
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 118
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 124
    .end local v1    # "j":I
    :cond_2f
    return-void
.end method
