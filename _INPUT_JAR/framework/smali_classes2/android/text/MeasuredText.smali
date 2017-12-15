.class Landroid/text/MeasuredText;
.super Ljava/lang/Object;
.source "MeasuredText.java"


# static fields
.field private static final localLOGV:Z

.field private static final mIsEnableEmoji:Z

.field private static final phoneNum1:Ljava/util/regex/Pattern;

.field private static final phoneNum2:Ljava/util/regex/Pattern;

.field private static final sCached:[Landroid/text/MeasuredText;

.field private static final sLock:[Ljava/lang/Object;


# instance fields
.field mChars:[C

.field mDir:I

.field mEasy:Z

.field mLen:I

.field mLevels:[B

.field private mPos:I

.field mText:Ljava/lang/CharSequence;

.field mTextStart:I

.field mWidths:[F

.field private mWorkPaint:Landroid/text/TextPaint;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 51
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Landroid/text/MeasuredText;->sLock:[Ljava/lang/Object;

    .line 52
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/text/MeasuredText;

    sput-object v0, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    .line 53
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Framework_EnableEmoji"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroid/text/MeasuredText;->mIsEnableEmoji:Z

    .line 94
    const-string v0, "[+][0-9]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/text/MeasuredText;->phoneNum1:Ljava/util/regex/Pattern;

    .line 95
    const-string v0, "[0-9]+([-/*+=. ]+([0-9]+))+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/text/MeasuredText;->phoneNum2:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/text/MeasuredText;->mWorkPaint:Landroid/text/TextPaint;

    .line 49
    return-void
.end method

.method static obtain()Landroid/text/MeasuredText;
    .registers 5

    .prologue
    .line 58
    sget-object v3, Landroid/text/MeasuredText;->sLock:[Ljava/lang/Object;

    monitor-enter v3

    .line 59
    :try_start_3
    sget-object v2, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    array-length v0, v2

    .local v0, "i":I
    :cond_6
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1b

    .line 60
    sget-object v2, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    aget-object v2, v2, v0

    if-eqz v2, :cond_6

    .line 61
    sget-object v2, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    aget-object v1, v2, v0

    .line 62
    .local v1, "mt":Landroid/text/MeasuredText;
    sget-object v2, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    const/4 v4, 0x0

    aput-object v4, v2, v0

    .line 63
    monitor-exit v3

    .line 71
    :goto_1a
    return-object v1

    .line 66
    .end local v1    # "mt":Landroid/text/MeasuredText;
    :cond_1b
    monitor-exit v3
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_22

    .line 67
    new-instance v1, Landroid/text/MeasuredText;

    invoke-direct {v1}, Landroid/text/MeasuredText;-><init>()V

    .line 71
    .restart local v1    # "mt":Landroid/text/MeasuredText;
    goto :goto_1a

    .line 66
    .end local v1    # "mt":Landroid/text/MeasuredText;
    :catchall_22
    move-exception v2

    :try_start_23
    monitor-exit v3
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v2
.end method

.method static recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;
    .registers 5
    .param p0, "mt"    # Landroid/text/MeasuredText;

    .prologue
    const/4 v3, 0x0

    .line 75
    iput-object v3, p0, Landroid/text/MeasuredText;->mText:Ljava/lang/CharSequence;

    .line 76
    iget v1, p0, Landroid/text/MeasuredText;->mLen:I

    const/16 v2, 0x3e8

    if-ge v1, v2, :cond_20

    .line 77
    sget-object v2, Landroid/text/MeasuredText;->sLock:[Ljava/lang/Object;

    monitor-enter v2

    .line 78
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    :try_start_d
    sget-object v1, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    array-length v1, v1

    if-ge v0, v1, :cond_1f

    .line 79
    sget-object v1, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    aget-object v1, v1, v0

    if-nez v1, :cond_21

    .line 80
    sget-object v1, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    aput-object p0, v1, v0

    .line 81
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/text/MeasuredText;->mText:Ljava/lang/CharSequence;

    .line 85
    :cond_1f
    monitor-exit v2

    .line 87
    .end local v0    # "i":I
    :cond_20
    return-object v3

    .line 78
    .restart local v0    # "i":I
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 85
    :catchall_24
    move-exception v1

    monitor-exit v2
    :try_end_26
    .catchall {:try_start_d .. :try_end_26} :catchall_24

    throw v1
.end method


# virtual methods
.method addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F
    .registers 29
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "len"    # I
    .param p3, "fm"    # Landroid/graphics/Paint$FontMetricsInt;

    .prologue
    .line 183
    if-eqz p3, :cond_9

    .line 184
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 187
    :cond_9
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/MeasuredText;->mPos:I

    .line 188
    .local v4, "p":I
    add-int v2, v4, p2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/MeasuredText;->mPos:I

    .line 190
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/MeasuredText;->mLen:I

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedCharArray(I)[C

    move-result-object v3

    .line 192
    .local v3, "tempChars":[C
    sget-boolean v2, Landroid/text/MeasuredText;->mIsEnableEmoji:Z

    if-eqz v2, :cond_6f

    .line 193
    const/16 v21, 0x0

    .local v21, "j":I
    :goto_21
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/MeasuredText;->mLen:I

    move/from16 v0, v21

    if-ge v0, v2, :cond_6f

    .line 194
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/MeasuredText;->mChars:[C

    aget-char v2, v2, v21

    const v5, 0xdbb8

    if-lt v2, v5, :cond_66

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/MeasuredText;->mChars:[C

    aget-char v2, v2, v21

    const v5, 0xdbbb

    if-gt v2, v5, :cond_66

    add-int/lit8 v2, v21, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/MeasuredText;->mLen:I

    if-ge v2, v5, :cond_66

    .line 195
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/MeasuredText;->mChars:[C

    aget-char v2, v2, v21

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/MeasuredText;->mChars:[C

    add-int/lit8 v6, v21, 0x1

    aget-char v5, v5, v6

    invoke-static {v2, v5}, Landroid/text/TextLine;->getEmojiCodeFromUACode(CC)C

    move-result v2

    aput-char v2, v3, v21

    .line 196
    add-int/lit8 v2, v21, 0x1

    const/16 v5, 0x200b

    aput-char v5, v3, v2

    .line 197
    add-int/lit8 v21, v21, 0x1

    .line 193
    :goto_63
    add-int/lit8 v21, v21, 0x1

    goto :goto_21

    .line 199
    :cond_66
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/MeasuredText;->mChars:[C

    aget-char v2, v2, v21

    aput-char v2, v3, v21

    goto :goto_63

    .line 204
    .end local v21    # "j":I
    :cond_6f
    const/16 v24, 0x0

    .line 205
    .local v24, "totalAdvance":F
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/text/MeasuredText;->mEasy:Z

    if-eqz v2, :cond_e9

    .line 206
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/MeasuredText;->mDir:I

    const/4 v5, 0x1

    if-eq v2, v5, :cond_94

    const/4 v8, 0x1

    .line 207
    .local v8, "isRtl":Z
    :goto_7f
    sget-boolean v2, Landroid/text/MeasuredText;->mIsEnableEmoji:Z

    if-eqz v2, :cond_96

    .line 208
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/MeasuredText;->mWidths:[F

    move-object/from16 v2, p1

    move/from16 v5, p2

    move v6, v4

    move/from16 v7, p2

    move v10, v4

    invoke-virtual/range {v2 .. v10}, Landroid/text/TextPaint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result v2

    .line 241
    :goto_93
    return v2

    .line 206
    .end local v8    # "isRtl":Z
    :cond_94
    const/4 v8, 0x0

    goto :goto_7f

    .line 210
    .restart local v8    # "isRtl":Z
    :cond_96
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/text/MeasuredText;->mChars:[C

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/MeasuredText;->mWidths:[F

    move-object/from16 v16, v0

    move-object/from16 v9, p1

    move v11, v4

    move/from16 v12, p2

    move v13, v4

    move/from16 v14, p2

    move v15, v8

    move/from16 v17, v4

    invoke-virtual/range {v9 .. v17}, Landroid/text/TextPaint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result v24

    .line 212
    const/4 v2, 0x1

    move/from16 v0, p2

    if-lt v0, v2, :cond_e6

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/MeasuredText;->mChars:[C

    add-int/lit8 v5, p2, -0x1

    aget-char v2, v2, v5

    invoke-static {v2}, Landroid/text/TextUtils;->isRegionalCharHandling(C)Z

    move-result v2

    if-eqz v2, :cond_e6

    .line 213
    add-int/lit8 v18, p2, -0x1

    .line 214
    .local v18, "cPos":I
    :goto_c4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/MeasuredText;->mWidths:[F

    aget v2, v2, v18

    const/4 v5, 0x0

    cmpl-float v2, v2, v5

    if-nez v2, :cond_d2

    add-int/lit8 v18, v18, -0x1

    goto :goto_c4

    .line 215
    :cond_d2
    const-string v2, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v23

    .line 216
    .local v23, "spaceWid":F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/MeasuredText;->mWidths:[F

    aget v5, v2, v18

    add-float v5, v5, v23

    aput v5, v2, v18

    .line 217
    add-float v24, v24, v23

    .end local v18    # "cPos":I
    .end local v23    # "spaceWid":F
    :cond_e6
    move/from16 v2, v24

    .line 219
    goto :goto_93

    .line 221
    .end local v8    # "isRtl":Z
    :cond_e9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/MeasuredText;->mLevels:[B

    aget-byte v22, v2, v4

    .line 222
    .local v22, "level":I
    move v11, v4

    .local v11, "q":I
    add-int/lit8 v20, v4, 0x1

    .local v20, "i":I
    add-int v19, v4, p2

    .line 223
    .local v19, "e":I
    :goto_f4
    move/from16 v0, v20

    move/from16 v1, v19

    if-eq v0, v1, :cond_104

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/MeasuredText;->mLevels:[B

    aget-byte v2, v2, v20

    move/from16 v0, v22

    if-eq v2, v0, :cond_151

    .line 224
    :cond_104
    and-int/lit8 v2, v22, 0x1

    if-eqz v2, :cond_147

    const/4 v8, 0x1

    .line 225
    .restart local v8    # "isRtl":Z
    :goto_109
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/text/MeasuredText;->mChars:[C

    sub-int v12, v20, v11

    sub-int v14, v20, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/MeasuredText;->mWidths:[F

    move-object/from16 v16, v0

    move-object/from16 v9, p1

    move v13, v11

    move v15, v8

    move/from16 v17, v11

    invoke-virtual/range {v9 .. v17}, Landroid/text/TextPaint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result v2

    add-float v24, v24, v2

    .line 227
    move/from16 v0, v20

    move/from16 v1, v19

    if-ne v0, v1, :cond_149

    .line 234
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/MeasuredText;->mChars:[C

    add-int/lit8 v5, p2, -0x1

    aget-char v2, v2, v5

    invoke-static {v2}, Landroid/text/TextUtils;->isRegionalCharHandling(C)Z

    move-result v2

    if-eqz v2, :cond_168

    .line 235
    add-int/lit8 v18, p2, -0x1

    .line 236
    .restart local v18    # "cPos":I
    :goto_139
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/MeasuredText;->mWidths:[F

    aget v2, v2, v18

    const/4 v5, 0x0

    cmpl-float v2, v2, v5

    if-nez v2, :cond_154

    add-int/lit8 v18, v18, -0x1

    goto :goto_139

    .line 224
    .end local v8    # "isRtl":Z
    .end local v18    # "cPos":I
    :cond_147
    const/4 v8, 0x0

    goto :goto_109

    .line 230
    .restart local v8    # "isRtl":Z
    :cond_149
    move/from16 v11, v20

    .line 231
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/MeasuredText;->mLevels:[B

    aget-byte v22, v2, v20

    .line 222
    .end local v8    # "isRtl":Z
    :cond_151
    add-int/lit8 v20, v20, 0x1

    goto :goto_f4

    .line 237
    .restart local v8    # "isRtl":Z
    .restart local v18    # "cPos":I
    :cond_154
    const-string v2, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v23

    .line 238
    .restart local v23    # "spaceWid":F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/MeasuredText;->mWidths:[F

    aget v5, v2, v18

    add-float v5, v5, v23

    aput v5, v2, v18

    .line 239
    add-float v24, v24, v23

    .end local v18    # "cPos":I
    .end local v23    # "spaceWid":F
    :cond_168
    move/from16 v2, v24

    .line 241
    goto/16 :goto_93
.end method

.method addStyleRun(Landroid/text/TextPaint;[Landroid/text/style/MetricAffectingSpan;ILandroid/graphics/Paint$FontMetricsInt;)F
    .registers 16
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "spans"    # [Landroid/text/style/MetricAffectingSpan;
    .param p3, "len"    # I
    .param p4, "fm"    # Landroid/graphics/Paint$FontMetricsInt;

    .prologue
    .line 247
    iget-object v1, p0, Landroid/text/MeasuredText;->mWorkPaint:Landroid/text/TextPaint;

    .line 248
    .local v1, "workPaint":Landroid/text/TextPaint;
    invoke-virtual {v1, p1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 250
    const/4 v2, 0x0

    iput v2, v1, Landroid/text/TextPaint;->baselineShift:I

    .line 252
    const/4 v0, 0x0

    .line 253
    .local v0, "replacement":Landroid/text/style/ReplacementSpan;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_a
    array-length v2, p2

    if-ge v7, v2, :cond_1d

    .line 254
    aget-object v8, p2, v7

    .line 255
    .local v8, "span":Landroid/text/style/MetricAffectingSpan;
    instance-of v2, v8, Landroid/text/style/ReplacementSpan;

    if-eqz v2, :cond_19

    move-object v0, v8

    .line 256
    check-cast v0, Landroid/text/style/ReplacementSpan;

    .line 253
    :goto_16
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    .line 258
    :cond_19
    invoke-virtual {v8, v1}, Landroid/text/style/MetricAffectingSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    goto :goto_16

    .line 263
    .end local v8    # "span":Landroid/text/style/MetricAffectingSpan;
    :cond_1d
    if-nez v0, :cond_38

    .line 264
    invoke-virtual {p0, v1, p3, p4}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F

    move-result v10

    .line 276
    .local v10, "wid":F
    :goto_23
    if-eqz p4, :cond_37

    .line 277
    iget v2, v1, Landroid/text/TextPaint;->baselineShift:I

    if-gez v2, :cond_67

    .line 278
    iget v2, p4, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v3, v1, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v2, v3

    iput v2, p4, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 279
    iget v2, p4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v3, v1, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v2, v3

    iput v2, p4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 286
    :cond_37
    :goto_37
    return v10

    .line 267
    .end local v10    # "wid":F
    :cond_38
    iget-object v2, p0, Landroid/text/MeasuredText;->mText:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/text/MeasuredText;->mTextStart:I

    iget v4, p0, Landroid/text/MeasuredText;->mPos:I

    add-int/2addr v3, v4

    iget v4, p0, Landroid/text/MeasuredText;->mTextStart:I

    iget v5, p0, Landroid/text/MeasuredText;->mPos:I

    add-int/2addr v4, v5

    add-int/2addr v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/text/style/ReplacementSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result v2

    int-to-float v10, v2

    .line 269
    .restart local v10    # "wid":F
    iget-object v9, p0, Landroid/text/MeasuredText;->mWidths:[F

    .line 270
    .local v9, "w":[F
    iget v2, p0, Landroid/text/MeasuredText;->mPos:I

    aput v10, v9, v2

    .line 271
    iget v2, p0, Landroid/text/MeasuredText;->mPos:I

    add-int/lit8 v7, v2, 0x1

    iget v2, p0, Landroid/text/MeasuredText;->mPos:I

    add-int v6, v2, p3

    .local v6, "e":I
    :goto_59
    if-ge v7, v6, :cond_61

    .line 272
    const/4 v2, 0x0

    aput v2, v9, v7

    .line 271
    add-int/lit8 v7, v7, 0x1

    goto :goto_59

    .line 273
    :cond_61
    iget v2, p0, Landroid/text/MeasuredText;->mPos:I

    add-int/2addr v2, p3

    iput v2, p0, Landroid/text/MeasuredText;->mPos:I

    goto :goto_23

    .line 281
    .end local v6    # "e":I
    .end local v9    # "w":[F
    :cond_67
    iget v2, p4, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v3, v1, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v2, v3

    iput v2, p4, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 282
    iget v2, p4, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v3, v1, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v2, v3

    iput v2, p4, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    goto :goto_37
.end method

.method breakText(IZF)I
    .registers 9
    .param p1, "limit"    # I
    .param p2, "forwards"    # Z
    .param p3, "width"    # F

    .prologue
    const/16 v4, 0x20

    const/4 v3, 0x0

    .line 290
    iget-object v1, p0, Landroid/text/MeasuredText;->mWidths:[F

    .line 291
    .local v1, "w":[F
    if-eqz p2, :cond_23

    .line 292
    const/4 v0, 0x0

    .line 293
    .local v0, "i":I
    :goto_8
    if-ge v0, p1, :cond_11

    .line 294
    aget v2, v1, v0

    sub-float/2addr p3, v2

    .line 295
    cmpg-float v2, p3, v3

    if-gez v2, :cond_1e

    .line 298
    :cond_11
    :goto_11
    if-lez v0, :cond_21

    iget-object v2, p0, Landroid/text/MeasuredText;->mChars:[C

    add-int/lit8 v3, v0, -0x1

    aget-char v2, v2, v3

    if-ne v2, v4, :cond_21

    add-int/lit8 v0, v0, -0x1

    goto :goto_11

    .line 296
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_21
    move v2, v0

    .line 308
    :goto_22
    return v2

    .line 301
    .end local v0    # "i":I
    :cond_23
    add-int/lit8 v0, p1, -0x1

    .line 302
    .restart local v0    # "i":I
    :goto_25
    if-ltz v0, :cond_2e

    .line 303
    aget v2, v1, v0

    sub-float/2addr p3, v2

    .line 304
    cmpg-float v2, p3, v3

    if-gez v2, :cond_3d

    .line 307
    :cond_2e
    :goto_2e
    add-int/lit8 v2, p1, -0x1

    if-ge v0, v2, :cond_40

    iget-object v2, p0, Landroid/text/MeasuredText;->mChars:[C

    add-int/lit8 v3, v0, 0x1

    aget-char v2, v2, v3

    if-ne v2, v4, :cond_40

    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    .line 305
    :cond_3d
    add-int/lit8 v0, v0, -0x1

    goto :goto_25

    .line 308
    :cond_40
    sub-int v2, p1, v0

    add-int/lit8 v2, v2, -0x1

    goto :goto_22
.end method

.method measure(II)F
    .registers 7
    .param p1, "start"    # I
    .param p2, "limit"    # I

    .prologue
    .line 313
    const/4 v2, 0x0

    .line 314
    .local v2, "width":F
    iget-object v1, p0, Landroid/text/MeasuredText;->mWidths:[F

    .line 315
    .local v1, "w":[F
    move v0, p1

    .local v0, "i":I
    :goto_4
    if-ge v0, p2, :cond_c

    .line 316
    aget v3, v1, v0

    add-float/2addr v2, v3

    .line 315
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 318
    :cond_c
    return v2
.end method

.method setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V
    .registers 26
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "textDir"    # Landroid/text/TextDirectionHeuristic;

    .prologue
    .line 101
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/MeasuredText;->mText:Ljava/lang/CharSequence;

    .line 102
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/MeasuredText;->mTextStart:I

    .line 104
    sub-int v11, p3, p2

    .line 105
    .local v11, "len":I
    move-object/from16 v0, p0

    iput v11, v0, Landroid/text/MeasuredText;->mLen:I

    .line 106
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/MeasuredText;->mPos:I

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/MeasuredText;->mWidths:[F

    move-object/from16 v18, v0

    if-eqz v18, :cond_31

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/MeasuredText;->mWidths:[F

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v0, v11, :cond_3b

    .line 109
    :cond_31
    invoke-static {v11}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedFloatArray(I)[F

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/MeasuredText;->mWidths:[F

    .line 111
    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/MeasuredText;->mChars:[C

    move-object/from16 v18, v0

    if-eqz v18, :cond_52

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/MeasuredText;->mChars:[C

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v0, v11, :cond_5c

    .line 112
    :cond_52
    invoke-static {v11}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedCharArray(I)[C

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/MeasuredText;->mChars:[C

    .line 114
    :cond_5c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/MeasuredText;->mChars:[C

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, v18

    move/from16 v4, v19

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 116
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/text/Spanned;

    move/from16 v18, v0

    if-eqz v18, :cond_c3

    move-object/from16 v14, p1

    .line 117
    check-cast v14, Landroid/text/Spanned;

    .line 118
    .local v14, "spanned":Landroid/text/Spanned;
    const-class v18, Landroid/text/style/ReplacementSpan;

    move/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, v18

    invoke-interface {v14, v0, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Landroid/text/style/ReplacementSpan;

    .line 121
    .local v15, "spans":[Landroid/text/style/ReplacementSpan;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_8c
    array-length v0, v15

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v8, v0, :cond_c3

    .line 122
    aget-object v18, v15, v8

    move-object/from16 v0, v18

    invoke-interface {v14, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v18

    sub-int v16, v18, p2

    .line 123
    .local v16, "startInPara":I
    aget-object v18, v15, v8

    move-object/from16 v0, v18

    invoke-interface {v14, v0}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v18

    sub-int v6, v18, p2

    .line 125
    .local v6, "endInPara":I
    if-gez v16, :cond_ab

    const/16 v16, 0x0

    .line 126
    :cond_ab
    if-le v6, v11, :cond_ae

    move v6, v11

    .line 127
    :cond_ae
    move/from16 v10, v16

    .local v10, "j":I
    :goto_b0
    if-ge v10, v6, :cond_c0

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/MeasuredText;->mChars:[C

    move-object/from16 v18, v0

    const v19, 0xfffc

    aput-char v19, v18, v10

    .line 127
    add-int/lit8 v10, v10, 0x1

    goto :goto_b0

    .line 121
    :cond_c0
    add-int/lit8 v8, v8, 0x1

    goto :goto_8c

    .line 133
    .end local v6    # "endInPara":I
    .end local v8    # "i":I
    .end local v10    # "j":I
    .end local v14    # "spanned":Landroid/text/Spanned;
    .end local v15    # "spans":[Landroid/text/style/ReplacementSpan;
    .end local v16    # "startInPara":I
    :cond_c3
    sget-object v18, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_db

    sget-object v18, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_db

    sget-object v18, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_fe

    :cond_db
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/MeasuredText;->mChars:[C

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v0, v1, v11}, Landroid/text/TextUtils;->doesNotNeedBidi([CII)Z

    move-result v18

    if-eqz v18, :cond_fe

    .line 137
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/MeasuredText;->mDir:I

    .line 138
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/text/MeasuredText;->mEasy:Z

    .line 180
    :cond_fd
    return-void

    .line 140
    :cond_fe
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/MeasuredText;->mLevels:[B

    move-object/from16 v18, v0

    if-eqz v18, :cond_115

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/MeasuredText;->mLevels:[B

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v0, v11, :cond_11f

    .line 141
    :cond_115
    invoke-static {v11}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedByteArray(I)[B

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/MeasuredText;->mLevels:[B

    .line 144
    :cond_11f
    sget-object v18, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_198

    .line 145
    const/4 v5, 0x1

    .line 156
    .local v5, "bidiRequest":I
    :goto_128
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/MeasuredText;->mChars:[C

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/MeasuredText;->mLevels:[B

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v5, v0, v1, v11, v2}, Landroid/text/AndroidBidi;->bidi(I[C[BIZ)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/MeasuredText;->mDir:I

    .line 157
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/text/MeasuredText;->mEasy:Z

    .line 158
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/MeasuredText;->mDir:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_fd

    .line 159
    new-instance v13, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/MeasuredText;->mChars:[C

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v13, v0, v1, v11}, Ljava/lang/String;-><init>([CII)V

    .line 160
    .local v13, "newStr":Ljava/lang/String;
    sget-object v18, Landroid/text/MeasuredText;->phoneNum1:Ljava/util/regex/Pattern;

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    .line 161
    .local v12, "m":Ljava/util/regex/Matcher;
    :cond_175
    :goto_175
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    move-result v18

    if-eqz v18, :cond_1d1

    .line 162
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->start()I

    move-result v17

    .line 163
    .local v17, "startIndex":I
    if-ltz v17, :cond_175

    move/from16 v0, v17

    if-ge v0, v11, :cond_175

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/MeasuredText;->mLevels:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/MeasuredText;->mLevels:[B

    move-object/from16 v19, v0

    add-int/lit8 v20, v17, 0x1

    aget-byte v19, v19, v20

    aput-byte v19, v18, v17

    goto :goto_175

    .line 146
    .end local v5    # "bidiRequest":I
    .end local v12    # "m":Ljava/util/regex/Matcher;
    .end local v13    # "newStr":Ljava/lang/String;
    .end local v17    # "startIndex":I
    :cond_198
    sget-object v18, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_1a2

    .line 147
    const/4 v5, -0x1

    .restart local v5    # "bidiRequest":I
    goto :goto_128

    .line 148
    .end local v5    # "bidiRequest":I
    :cond_1a2
    sget-object v18, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_1ad

    .line 149
    const/4 v5, 0x2

    .restart local v5    # "bidiRequest":I
    goto/16 :goto_128

    .line 150
    .end local v5    # "bidiRequest":I
    :cond_1ad
    sget-object v18, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_1b8

    .line 151
    const/4 v5, -0x2

    .restart local v5    # "bidiRequest":I
    goto/16 :goto_128

    .line 153
    .end local v5    # "bidiRequest":I
    :cond_1b8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/MeasuredText;->mChars:[C

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v0, v1, v2, v11}, Landroid/text/TextDirectionHeuristic;->isRtl([CII)Z

    move-result v9

    .line 154
    .local v9, "isRtl":Z
    if-eqz v9, :cond_1cf

    const/4 v5, -0x1

    .restart local v5    # "bidiRequest":I
    :goto_1cd
    goto/16 :goto_128

    .end local v5    # "bidiRequest":I
    :cond_1cf
    const/4 v5, 0x1

    goto :goto_1cd

    .line 168
    .end local v9    # "isRtl":Z
    .restart local v5    # "bidiRequest":I
    .restart local v12    # "m":Ljava/util/regex/Matcher;
    .restart local v13    # "newStr":Ljava/lang/String;
    :cond_1d1
    sget-object v18, Landroid/text/MeasuredText;->phoneNum2:Ljava/util/regex/Pattern;

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    .line 169
    :cond_1d9
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    move-result v18

    if-eqz v18, :cond_fd

    .line 170
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->start()I

    move-result v17

    .line 171
    .restart local v17    # "startIndex":I
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->end()I

    move-result v18

    add-int/lit8 v7, v18, -0x1

    .line 172
    .local v7, "endIndex":I
    if-ltz v17, :cond_1d9

    move/from16 v0, v17

    if-ge v0, v11, :cond_1d9

    if-ltz v7, :cond_1d9

    if-ge v7, v11, :cond_1d9

    .line 173
    move/from16 v8, v17

    .restart local v8    # "i":I
    :goto_1f5
    if-gt v8, v7, :cond_1d9

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/MeasuredText;->mLevels:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/MeasuredText;->mLevels:[B

    move-object/from16 v19, v0

    aget-byte v19, v19, v17

    aput-byte v19, v18, v8

    .line 173
    add-int/lit8 v8, v8, 0x1

    goto :goto_1f5
.end method

.method setPos(I)V
    .registers 3
    .param p1, "pos"    # I

    .prologue
    .line 91
    iget v0, p0, Landroid/text/MeasuredText;->mTextStart:I

    sub-int v0, p1, v0

    iput v0, p0, Landroid/text/MeasuredText;->mPos:I

    .line 92
    return-void
.end method
