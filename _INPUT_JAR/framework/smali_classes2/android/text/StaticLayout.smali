.class public Landroid/text/StaticLayout;
.super Landroid/text/Layout;
.source "StaticLayout.java"


# static fields
.field private static final CHAR_FIRST_CJK:C = '\u2e80'

.field private static final CHAR_FIRST_HIGH_SURROGATE:I = 0xd800

.field private static final CHAR_HYPHEN:C = '-'

.field private static final CHAR_LAST_LOW_SURROGATE:I = 0xdfff

.field private static final CHAR_NEW_LINE:C = '\n'

.field private static final CHAR_SLASH:C = '/'

.field private static final CHAR_SPACE:C = ' '

.field private static final CHAR_TAB:C = '\t'

.field private static final CHAR_ZWSP:C = '\u200b'

.field private static final COLUMNS_ELLIPSIZE:I = 0x5

.field private static final COLUMNS_NORMAL:I = 0x3

.field private static final DESCENT:I = 0x2

.field private static final DIR:I = 0x0

.field private static final DIR_SHIFT:I = 0x1e

.field private static final ELLIPSIS_COUNT:I = 0x4

.field private static final ELLIPSIS_START:I = 0x3

.field private static final EXTRA_ROUNDING:D = 0.5

.field private static final START:I = 0x0

.field private static final START_MASK:I = 0x1fffffff

.field private static final TAB:I = 0x0

.field private static final TAB_INCREMENT:I = 0x14

.field private static final TAB_MASK:I = 0x20000000

.field static final TAG:Ljava/lang/String; = "StaticLayout"

.field private static final TOP:I = 0x1


# instance fields
.field private mBottomPadding:I

.field private mColumns:I

.field private mEllipsizedWidth:I

.field private mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

.field private mLineCount:I

.field private mLineDirections:[Landroid/text/Layout$Directions;

.field private mLines:[I

.field private mMaximumVisibleLineCount:I

.field private mMeasured:Landroid/text/MeasuredText;

.field private mTopPadding:I


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;)V
    .registers 9
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 150
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, v2

    move v6, v5

    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 1018
    const v0, 0x7fffffff

    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 1046
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v0, p0, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 152
    const/4 v0, 0x5

    iput v0, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 153
    const-class v0, Landroid/text/Layout$Directions;

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Layout$Directions;

    iput-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 154
    iget-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 156
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 157
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .registers 22
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "bufstart"    # I
    .param p3, "bufend"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "outerwidth"    # I
    .param p6, "align"    # Landroid/text/Layout$Alignment;
    .param p7, "spacingmult"    # F
    .param p8, "spacingadd"    # F
    .param p9, "includepad"    # Z

    .prologue
    .line 70
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V
    .registers 26
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "bufstart"    # I
    .param p3, "bufend"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "outerwidth"    # I
    .param p6, "align"    # Landroid/text/Layout$Alignment;
    .param p7, "spacingmult"    # F
    .param p8, "spacingadd"    # F
    .param p9, "includepad"    # Z
    .param p10, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p11, "ellipsizedWidth"    # I

    .prologue
    .line 92
    sget-object v7, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    const v13, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    invoke-direct/range {v0 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V
    .registers 25
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "bufstart"    # I
    .param p3, "bufend"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "outerwidth"    # I
    .param p6, "align"    # Landroid/text/Layout$Alignment;
    .param p7, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p8, "spacingmult"    # F
    .param p9, "spacingadd"    # F
    .param p10, "includepad"    # Z

    .prologue
    .line 82
    const/4 v11, 0x0

    const/4 v12, 0x0

    const v13, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V
    .registers 29
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "bufstart"    # I
    .param p3, "bufend"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "outerwidth"    # I
    .param p6, "align"    # Landroid/text/Layout$Alignment;
    .param p7, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p8, "spacingmult"    # F
    .param p9, "spacingadd"    # F
    .param p10, "includepad"    # Z
    .param p11, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p12, "ellipsizedWidth"    # I
    .param p13, "maxLines"    # I

    .prologue
    .line 106
    if-nez p11, :cond_81

    move-object/from16 v2, p1

    :goto_4
    move-object v1, p0

    move-object/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v1 .. v8}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V

    .line 1018
    const v1, 0x7fffffff

    iput v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 1046
    new-instance v1, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v1}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v1, p0, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 121
    if-eqz p11, :cond_99

    .line 122
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v14

    check-cast v14, Landroid/text/Layout$Ellipsizer;

    .line 124
    .local v14, "e":Landroid/text/Layout$Ellipsizer;
    iput-object p0, v14, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    .line 125
    move/from16 v0, p12

    iput v0, v14, Landroid/text/Layout$Ellipsizer;->mWidth:I

    .line 126
    move-object/from16 v0, p11

    iput-object v0, v14, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    .line 127
    move/from16 v0, p12

    iput v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    .line 129
    const/4 v1, 0x5

    iput v1, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 135
    .end local v14    # "e":Landroid/text/Layout$Ellipsizer;
    :goto_39
    const-class v1, Landroid/text/Layout$Directions;

    iget v2, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/Layout$Directions;

    iput-object v1, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 136
    iget-object v1, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 137
    move/from16 v0, p13

    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 139
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v1

    iput-object v1, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 141
    move/from16 v0, p12

    int-to-float v12, v0

    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p10

    move-object/from16 v13, p11

    invoke-virtual/range {v1 .. v13}, Landroid/text/StaticLayout;->generate(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/TextDirectionHeuristic;FFZZFLandroid/text/TextUtils$TruncateAt;)V

    .line 145
    iget-object v1, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    invoke-static {v1}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    move-result-object v1

    iput-object v1, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 146
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 147
    return-void

    .line 106
    :cond_81
    move-object/from16 v0, p1

    instance-of v1, v0, Landroid/text/Spanned;

    if-eqz v1, :cond_90

    new-instance v2, Landroid/text/Layout$SpannedEllipsizer;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/text/Layout$SpannedEllipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_90
    new-instance v2, Landroid/text/Layout$Ellipsizer;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 131
    :cond_99
    const/4 v1, 0x3

    iput v1, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 132
    move/from16 v0, p5

    iput v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    goto :goto_39
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .registers 18
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "width"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "spacingmult"    # F
    .param p6, "spacingadd"    # F
    .param p7, "includepad"    # Z

    .prologue
    .line 50
    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V
    .registers 20
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "width"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p6, "spacingmult"    # F
    .param p7, "spacingadd"    # F
    .param p8, "includepad"    # Z

    .prologue
    .line 61
    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V

    .line 63
    return-void
.end method

.method private calculateEllipsis(II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z)V
    .registers 36
    .param p1, "lineStart"    # I
    .param p2, "lineEnd"    # I
    .param p3, "widths"    # [F
    .param p4, "widthStart"    # I
    .param p5, "avail"    # F
    .param p6, "where"    # Landroid/text/TextUtils$TruncateAt;
    .param p7, "line"    # I
    .param p8, "textWidth"    # F
    .param p9, "paint"    # Landroid/text/TextPaint;
    .param p10, "forceEllipsis"    # Z

    .prologue
    .line 753
    cmpg-float v22, p8, p5

    if-gtz v22, :cond_2f

    if-nez p10, :cond_2f

    .line 755
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v23, v0

    mul-int v23, v23, p7

    add-int/lit8 v23, v23, 0x3

    const/16 v24, 0x0

    aput v24, v22, v23

    .line 756
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v23, v0

    mul-int v23, v23, p7

    add-int/lit8 v23, v23, 0x4

    const/16 v24, 0x0

    aput v24, v22, v23

    .line 883
    :goto_2e
    return-void

    .line 760
    :cond_2f
    sget-object v22, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_9b

    sget-object v22, Landroid/text/StaticLayout;->ELLIPSIS_TWO_DOTS:[C

    :goto_39
    const/16 v23, 0x0

    const/16 v24, 0x1

    move-object/from16 v0, p9

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText([CII)F

    move-result v6

    .line 763
    .local v6, "ellipsisWidth":F
    const/4 v5, 0x0

    .line 764
    .local v5, "ellipsisStart":I
    const/4 v4, 0x0

    .line 765
    .local v4, "ellipsisCount":I
    sub-int v10, p2, p1

    .line 768
    .local v10, "len":I
    sget-object v22, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_cd

    .line 769
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_bb

    .line 770
    const/16 v18, 0x0

    .line 772
    .local v18, "sum":F
    move v15, v10

    .line 774
    .local v15, "rightForZeroWidth":I
    move v7, v10

    .local v7, "i":I
    :goto_67
    if-ltz v7, :cond_71

    .line 775
    if-nez v7, :cond_9e

    move/from16 v0, p1

    move/from16 v1, p4

    if-ne v0, v1, :cond_9e

    .line 789
    :cond_71
    if-eqz v7, :cond_74

    .line 790
    move v7, v15

    .line 793
    :cond_74
    const/4 v5, 0x0

    .line 794
    move v4, v7

    .line 881
    .end local v7    # "i":I
    .end local v15    # "rightForZeroWidth":I
    .end local v18    # "sum":F
    :cond_76
    :goto_76
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v23, v0

    mul-int v23, v23, p7

    add-int/lit8 v23, v23, 0x3

    aput v5, v22, v23

    .line 882
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v23, v0

    mul-int v23, v23, p7

    add-int/lit8 v23, v23, 0x4

    aput v4, v22, v23

    goto :goto_2e

    .line 760
    .end local v4    # "ellipsisCount":I
    .end local v5    # "ellipsisStart":I
    .end local v6    # "ellipsisWidth":F
    .end local v10    # "len":I
    :cond_9b
    sget-object v22, Landroid/text/StaticLayout;->ELLIPSIS_NORMAL:[C

    goto :goto_39

    .line 778
    .restart local v4    # "ellipsisCount":I
    .restart local v5    # "ellipsisStart":I
    .restart local v6    # "ellipsisWidth":F
    .restart local v7    # "i":I
    .restart local v10    # "len":I
    .restart local v15    # "rightForZeroWidth":I
    .restart local v18    # "sum":F
    :cond_9e
    add-int/lit8 v22, v7, -0x1

    add-int v22, v22, p1

    sub-int v22, v22, p4

    aget v21, p3, v22

    .line 780
    .local v21, "w":F
    add-float v22, v21, v18

    add-float v22, v22, v6

    cmpl-float v22, v22, p5

    if-gtz v22, :cond_71

    .line 783
    const/16 v22, 0x0

    cmpl-float v22, v21, v22

    if-eqz v22, :cond_b6

    .line 784
    add-int/lit8 v15, v7, -0x1

    .line 787
    :cond_b6
    add-float v18, v18, v21

    .line 774
    add-int/lit8 v7, v7, -0x1

    goto :goto_67

    .line 796
    .end local v7    # "i":I
    .end local v15    # "rightForZeroWidth":I
    .end local v18    # "sum":F
    .end local v21    # "w":F
    :cond_bb
    const-string v22, "StaticLayout"

    const/16 v23, 0x5

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v22

    if-eqz v22, :cond_76

    .line 797
    const-string v22, "StaticLayout"

    const-string v23, "Start Ellipsis only supported with one line"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_76

    .line 800
    :cond_cd
    sget-object v22, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_e5

    sget-object v22, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_e5

    sget-object v22, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_14f

    .line 802
    :cond_e5
    const/16 v18, 0x0

    .line 805
    .restart local v18    # "sum":F
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_e8
    if-ge v7, v10, :cond_f8

    .line 806
    add-int v22, v7, p1

    sub-int v22, v22, p4

    aget v21, p3, v22

    .line 808
    .restart local v21    # "w":F
    add-float v22, v21, v18

    add-float v22, v22, v6

    cmpl-float v22, v22, p5

    if-lez v22, :cond_143

    .line 815
    .end local v21    # "w":F
    :cond_f8
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 816
    .local v12, "mt":Landroid/text/MeasuredText;
    iget-object v0, v12, Landroid/text/MeasuredText;->mChars:[C

    move-object/from16 v19, v0

    .line 817
    .local v19, "tmpBuf":[C
    :goto_100
    if-lez v7, :cond_127

    if-ge v7, v10, :cond_127

    aget-char v22, v19, v7

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isArabicChar(C)Z

    move-result v22

    if-eqz v22, :cond_127

    .line 818
    new-instance v17, Ljava/lang/String;

    const/16 v22, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v22

    invoke-direct {v0, v1, v2, v7}, Ljava/lang/String;-><init>([CII)V

    .line 819
    .local v17, "s":Ljava/lang/String;
    move-object/from16 v0, p9

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v20

    .line 820
    .local v20, "tmpwid":F
    add-float v22, v20, v6

    cmpg-float v22, v22, p5

    if-gtz v22, :cond_148

    .line 826
    .end local v17    # "s":Ljava/lang/String;
    .end local v20    # "tmpwid":F
    :cond_127
    move v5, v7

    .line 827
    sub-int v4, v10, v7

    .line 828
    if-eqz p10, :cond_76

    if-nez v4, :cond_76

    if-lez v10, :cond_76

    .line 829
    add-int/lit8 v5, v10, -0x1

    .line 830
    :goto_132
    if-lez v5, :cond_14b

    add-int v22, v5, p1

    sub-int v22, v22, p4

    aget v22, p3, v22

    const/16 v23, 0x0

    cmpl-float v22, v22, v23

    if-nez v22, :cond_14b

    .line 831
    add-int/lit8 v5, v5, -0x1

    goto :goto_132

    .line 812
    .end local v12    # "mt":Landroid/text/MeasuredText;
    .end local v19    # "tmpBuf":[C
    .restart local v21    # "w":F
    :cond_143
    add-float v18, v18, v21

    .line 805
    add-int/lit8 v7, v7, 0x1

    goto :goto_e8

    .line 823
    .end local v21    # "w":F
    .restart local v12    # "mt":Landroid/text/MeasuredText;
    .restart local v17    # "s":Ljava/lang/String;
    .restart local v19    # "tmpBuf":[C
    .restart local v20    # "tmpwid":F
    :cond_148
    add-int/lit8 v7, v7, -0x1

    .line 824
    goto :goto_100

    .line 832
    .end local v17    # "s":Ljava/lang/String;
    .end local v20    # "tmpwid":F
    :cond_14b
    sub-int v4, v10, v5

    goto/16 :goto_76

    .line 836
    .end local v7    # "i":I
    .end local v12    # "mt":Landroid/text/MeasuredText;
    .end local v18    # "sum":F
    .end local v19    # "tmpBuf":[C
    :cond_14f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1af

    .line 837
    const/4 v11, 0x0

    .local v11, "lsum":F
    const/16 v16, 0x0

    .line 838
    .local v16, "rsum":F
    const/4 v9, 0x0

    .local v9, "left":I
    move v14, v10

    .line 839
    .local v14, "right":I
    move v15, v14

    .line 841
    .restart local v15    # "rightForZeroWidth":I
    sub-float v22, p5, v6

    const/high16 v23, 0x40000000    # 2.0f

    div-float v13, v22, v23

    .line 842
    .local v13, "ravail":F
    move v14, v10

    :goto_16a
    if-ltz v14, :cond_174

    .line 843
    if-nez v14, :cond_18f

    move/from16 v0, p1

    move/from16 v1, p4

    if-ne v0, v1, :cond_18f

    .line 857
    :cond_174
    if-eqz v14, :cond_177

    .line 858
    move v14, v15

    .line 861
    :cond_177
    sub-float v22, p5, v6

    sub-float v8, v22, v16

    .line 862
    .local v8, "lavail":F
    const/4 v9, 0x0

    :goto_17c
    if-ge v9, v14, :cond_18a

    .line 863
    add-int v22, v9, p1

    sub-int v22, v22, p4

    aget v21, p3, v22

    .line 865
    .restart local v21    # "w":F
    add-float v22, v21, v11

    cmpl-float v22, v22, v8

    if-lez v22, :cond_1aa

    .line 872
    .end local v21    # "w":F
    :cond_18a
    move v5, v9

    .line 873
    sub-int v4, v14, v9

    .line 874
    goto/16 :goto_76

    .line 846
    .end local v8    # "lavail":F
    :cond_18f
    add-int/lit8 v22, v14, -0x1

    add-int v22, v22, p1

    sub-int v22, v22, p4

    aget v21, p3, v22

    .line 848
    .restart local v21    # "w":F
    add-float v22, v21, v16

    cmpl-float v22, v22, v13

    if-gtz v22, :cond_174

    .line 851
    const/16 v22, 0x0

    cmpl-float v22, v21, v22

    if-eqz v22, :cond_1a5

    .line 852
    add-int/lit8 v15, v14, -0x1

    .line 855
    :cond_1a5
    add-float v16, v16, v21

    .line 842
    add-int/lit8 v14, v14, -0x1

    goto :goto_16a

    .line 869
    .restart local v8    # "lavail":F
    :cond_1aa
    add-float v11, v11, v21

    .line 862
    add-int/lit8 v9, v9, 0x1

    goto :goto_17c

    .line 875
    .end local v8    # "lavail":F
    .end local v9    # "left":I
    .end local v11    # "lsum":F
    .end local v13    # "ravail":F
    .end local v14    # "right":I
    .end local v15    # "rightForZeroWidth":I
    .end local v16    # "rsum":F
    .end local v21    # "w":F
    :cond_1af
    const-string v22, "StaticLayout"

    const/16 v23, 0x5

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v22

    if-eqz v22, :cond_76

    .line 876
    const-string v22, "StaticLayout"

    const-string v23, "Middle Ellipsis only supported with one line"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_76
.end method

.method private static final isIdeographic(CZ)Z
    .registers 5
    .param p0, "c"    # C
    .param p1, "includeNonStarters"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 536
    const/16 v2, 0x2e80

    if-lt p0, v2, :cond_b

    const/16 v2, 0x2fff

    if-gt p0, v2, :cond_b

    .line 612
    :cond_a
    :goto_a
    return v0

    .line 539
    :cond_b
    const/16 v2, 0x3000

    if-eq p0, v2, :cond_a

    .line 542
    const/16 v2, 0x3040

    if-lt p0, v2, :cond_1f

    const/16 v2, 0x309f

    if-gt p0, v2, :cond_1f

    .line 543
    if-nez p1, :cond_a

    .line 544
    sparse-switch p0, :sswitch_data_74

    goto :goto_a

    :sswitch_1d
    move v0, v1

    .line 561
    goto :goto_a

    .line 566
    :cond_1f
    const/16 v2, 0x30a0

    if-lt p0, v2, :cond_2f

    const/16 v2, 0x30ff

    if-gt p0, v2, :cond_2f

    .line 567
    if-nez p1, :cond_a

    .line 568
    sparse-switch p0, :sswitch_data_b6

    goto :goto_a

    :sswitch_2d
    move v0, v1

    .line 586
    goto :goto_a

    .line 591
    :cond_2f
    const/16 v2, 0x3400

    if-lt p0, v2, :cond_37

    const/16 v2, 0x4db5

    if-le p0, v2, :cond_a

    .line 594
    :cond_37
    const/16 v2, 0x4e00

    if-lt p0, v2, :cond_40

    const v2, 0x9fbb

    if-le p0, v2, :cond_a

    .line 597
    :cond_40
    const v2, 0xf900

    if-lt p0, v2, :cond_4a

    const v2, 0xfad9

    if-le p0, v2, :cond_a

    .line 600
    :cond_4a
    const v2, 0xa000

    if-lt p0, v2, :cond_54

    const v2, 0xa48f

    if-le p0, v2, :cond_a

    .line 603
    :cond_54
    const v2, 0xa490

    if-lt p0, v2, :cond_5e

    const v2, 0xa4cf

    if-le p0, v2, :cond_a

    .line 606
    :cond_5e
    const v2, 0xfe62

    if-lt p0, v2, :cond_68

    const v2, 0xfe66

    if-le p0, v2, :cond_a

    .line 609
    :cond_68
    const v2, 0xff10

    if-lt p0, v2, :cond_72

    const v2, 0xff19

    if-le p0, v2, :cond_a

    :cond_72
    move v0, v1

    .line 612
    goto :goto_a

    .line 544
    :sswitch_data_74
    .sparse-switch
        0x3041 -> :sswitch_1d
        0x3043 -> :sswitch_1d
        0x3045 -> :sswitch_1d
        0x3047 -> :sswitch_1d
        0x3049 -> :sswitch_1d
        0x3063 -> :sswitch_1d
        0x3083 -> :sswitch_1d
        0x3085 -> :sswitch_1d
        0x3087 -> :sswitch_1d
        0x308e -> :sswitch_1d
        0x3095 -> :sswitch_1d
        0x3096 -> :sswitch_1d
        0x309b -> :sswitch_1d
        0x309c -> :sswitch_1d
        0x309d -> :sswitch_1d
        0x309e -> :sswitch_1d
    .end sparse-switch

    .line 568
    :sswitch_data_b6
    .sparse-switch
        0x30a0 -> :sswitch_2d
        0x30a1 -> :sswitch_2d
        0x30a3 -> :sswitch_2d
        0x30a5 -> :sswitch_2d
        0x30a7 -> :sswitch_2d
        0x30a9 -> :sswitch_2d
        0x30c3 -> :sswitch_2d
        0x30e3 -> :sswitch_2d
        0x30e5 -> :sswitch_2d
        0x30e7 -> :sswitch_2d
        0x30ee -> :sswitch_2d
        0x30f5 -> :sswitch_2d
        0x30f6 -> :sswitch_2d
        0x30fb -> :sswitch_2d
        0x30fc -> :sswitch_2d
        0x30fd -> :sswitch_2d
        0x30fe -> :sswitch_2d
    .end sparse-switch
.end method

.method private static native nLineBreakOpportunities(Ljava/lang/String;[CI[I)[I
.end method

.method private out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I
    .registers 58
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "above"    # I
    .param p5, "below"    # I
    .param p6, "top"    # I
    .param p7, "bottom"    # I
    .param p8, "v"    # I
    .param p9, "spacingmult"    # F
    .param p10, "spacingadd"    # F
    .param p11, "chooseHt"    # [Landroid/text/style/LineHeightSpan;
    .param p12, "chooseHtv"    # [I
    .param p13, "fm"    # Landroid/graphics/Paint$FontMetricsInt;
    .param p14, "hasTabOrEmoji"    # Z
    .param p15, "needMultiply"    # Z
    .param p16, "chdirs"    # [B
    .param p17, "dir"    # I
    .param p18, "easy"    # Z
    .param p19, "bufEnd"    # I
    .param p20, "includePad"    # Z
    .param p21, "trackPad"    # Z
    .param p22, "chs"    # [C
    .param p23, "widths"    # [F
    .param p24, "widthStart"    # I
    .param p25, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p26, "ellipsisWidth"    # F
    .param p27, "textWidth"    # F
    .param p28, "paint"    # Landroid/text/TextPaint;
    .param p29, "moreChars"    # Z

    .prologue
    .line 626
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mLineCount:I

    move/from16 v22, v0

    .line 627
    .local v22, "j":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int v26, v22, v2

    .line 628
    .local v26, "off":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    add-int v2, v2, v26

    add-int/lit8 v27, v2, 0x1

    .line 629
    .local v27, "want":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v25, v0

    .line 631
    .local v25, "lines":[I
    move-object/from16 v0, v25

    array-length v2, v0

    move/from16 v0, v27

    if-lt v0, v2, :cond_5e

    .line 632
    const-class v2, Landroid/text/Layout$Directions;

    invoke-static/range {v27 .. v27}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Landroid/text/Layout$Directions;

    .line 634
    .local v20, "grow2":[Landroid/text/Layout$Directions;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v5, v5

    move-object/from16 v0, v20

    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 636
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 638
    move-object/from16 v0, v20

    array-length v2, v0

    new-array v0, v2, [I

    move-object/from16 v19, v0

    .line 639
    .local v19, "grow":[I
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v25

    array-length v4, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy([II[III)V

    .line 640
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mLines:[I

    .line 641
    move-object/from16 v25, v19

    .line 644
    .end local v19    # "grow":[I
    .end local v20    # "grow2":[Landroid/text/Layout$Directions;
    :cond_5e
    if-eqz p11, :cond_c9

    .line 645
    move/from16 v0, p4

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 646
    move/from16 v0, p5

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 647
    move/from16 v0, p6

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 648
    move/from16 v0, p7

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 650
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_7a
    move-object/from16 v0, p11

    array-length v2, v0

    move/from16 v0, v21

    if-ge v0, v2, :cond_b1

    .line 651
    aget-object v2, p11, v21

    instance-of v2, v2, Landroid/text/style/LineHeightSpan$WithDensity;

    if-eqz v2, :cond_9f

    .line 652
    aget-object v2, p11, v21

    check-cast v2, Landroid/text/style/LineHeightSpan$WithDensity;

    aget v6, p12, v21

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, p8

    move-object/from16 v8, p13

    move-object/from16 v9, p28

    invoke-interface/range {v2 .. v9}, Landroid/text/style/LineHeightSpan$WithDensity;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    .line 650
    :goto_9c
    add-int/lit8 v21, v21, 0x1

    goto :goto_7a

    .line 656
    :cond_9f
    aget-object v2, p11, v21

    aget v6, p12, v21

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, p8

    move-object/from16 v8, p13

    invoke-interface/range {v2 .. v8}, Landroid/text/style/LineHeightSpan;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V

    goto :goto_9c

    .line 660
    :cond_b1
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 p4, v0

    .line 661
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 p5, v0

    .line 662
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 p6, v0

    .line 663
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 p7, v0

    .line 666
    .end local v21    # "i":I
    :cond_c9
    if-nez v22, :cond_1b2

    const/16 v18, 0x1

    .line 667
    .local v18, "firstLine":Z
    :goto_cd
    add-int/lit8 v2, v22, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v2, v3, :cond_1b6

    const/4 v13, 0x1

    .line 668
    .local v13, "currentLineIsTheLastVisibleOne":Z
    :goto_d6
    if-nez v13, :cond_de

    move/from16 v0, p3

    move/from16 v1, p19

    if-ne v0, v1, :cond_1b9

    :cond_de
    const/16 v23, 0x1

    .line 670
    .local v23, "lastLine":Z
    :goto_e0
    if-eqz v18, :cond_ee

    .line 671
    if-eqz p21, :cond_ea

    .line 672
    sub-int v2, p6, p4

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/StaticLayout;->mTopPadding:I

    .line 675
    :cond_ea
    if-eqz p20, :cond_ee

    .line 676
    move/from16 p4, p6

    .line 682
    :cond_ee
    if-eqz v23, :cond_fc

    .line 683
    if-eqz p21, :cond_f8

    .line 684
    sub-int v2, p7, p5

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/StaticLayout;->mBottomPadding:I

    .line 687
    :cond_f8
    if-eqz p20, :cond_fc

    .line 688
    move/from16 p5, p7

    .line 693
    :cond_fc
    if-eqz p15, :cond_1c7

    if-nez v23, :cond_1c7

    .line 694
    sub-int v2, p5, p4

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v3, p9, v3

    mul-float/2addr v2, v3

    add-float v2, v2, p10

    float-to-double v0, v2

    move-wide/from16 v16, v0

    .line 695
    .local v16, "ex":D
    const-wide/16 v2, 0x0

    cmpl-double v2, v16, v2

    if-ltz v2, :cond_1bd

    .line 696
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double v2, v2, v16

    double-to-int v15, v2

    .line 704
    .end local v16    # "ex":D
    .local v15, "extra":I
    :goto_118
    add-int/lit8 v2, v26, 0x0

    aput p2, v25, v2

    .line 705
    add-int/lit8 v2, v26, 0x1

    aput p8, v25, v2

    .line 706
    add-int/lit8 v2, v26, 0x2

    add-int v3, p5, v15

    aput v3, v25, v2

    .line 708
    sub-int v2, p5, p4

    add-int/2addr v2, v15

    add-int p8, p8, v2

    .line 709
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    add-int v2, v2, v26

    add-int/lit8 v2, v2, 0x0

    aput p3, v25, v2

    .line 710
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    add-int v2, v2, v26

    add-int/lit8 v2, v2, 0x1

    aput p8, v25, v2

    .line 712
    if-eqz p14, :cond_14a

    .line 713
    add-int/lit8 v2, v26, 0x0

    aget v3, v25, v2

    const/high16 v4, 0x20000000

    or-int/2addr v3, v4

    aput v3, v25, v2

    .line 715
    :cond_14a
    add-int/lit8 v2, v26, 0x0

    aget v3, v25, v2

    shl-int/lit8 v4, p17, 0x1e

    or-int/2addr v3, v4

    aput v3, v25, v2

    .line 716
    sget-object v24, Landroid/text/StaticLayout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    .line 720
    .local v24, "linedirs":Landroid/text/Layout$Directions;
    if-eqz p18, :cond_1ca

    .line 721
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    aput-object v24, v2, v22

    .line 727
    :goto_15d
    if-eqz p25, :cond_1a7

    .line 730
    if-eqz p29, :cond_1e2

    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v2, v3, :cond_1e2

    const/4 v12, 0x1

    .line 732
    .local v12, "forceEllipsis":Z
    :goto_16e
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_177

    if-nez p29, :cond_17b

    :cond_177
    if-eqz v18, :cond_181

    if-nez p29, :cond_181

    :cond_17b
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p25

    if-ne v0, v2, :cond_18d

    :cond_181
    if-nez v18, :cond_1e4

    if-nez v13, :cond_187

    if-nez p29, :cond_1e4

    :cond_187
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p25

    if-ne v0, v2, :cond_1e4

    :cond_18d
    const/4 v14, 0x1

    .line 737
    .local v14, "doEllipsis":Z
    :goto_18e
    if-eqz v14, :cond_1a7

    move-object/from16 v2, p0

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p23

    move/from16 v6, p24

    move/from16 v7, p26

    move-object/from16 v8, p25

    move/from16 v9, v22

    move/from16 v10, p27

    move-object/from16 v11, p28

    .line 738
    invoke-direct/range {v2 .. v12}, Landroid/text/StaticLayout;->calculateEllipsis(II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z)V

    .line 744
    .end local v12    # "forceEllipsis":Z
    .end local v14    # "doEllipsis":Z
    :cond_1a7
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/StaticLayout;->mLineCount:I

    .line 745
    return p8

    .line 666
    .end local v13    # "currentLineIsTheLastVisibleOne":Z
    .end local v15    # "extra":I
    .end local v18    # "firstLine":Z
    .end local v23    # "lastLine":Z
    .end local v24    # "linedirs":Landroid/text/Layout$Directions;
    :cond_1b2
    const/16 v18, 0x0

    goto/16 :goto_cd

    .line 667
    .restart local v18    # "firstLine":Z
    :cond_1b6
    const/4 v13, 0x0

    goto/16 :goto_d6

    .line 668
    .restart local v13    # "currentLineIsTheLastVisibleOne":Z
    :cond_1b9
    const/16 v23, 0x0

    goto/16 :goto_e0

    .line 698
    .restart local v16    # "ex":D
    .restart local v23    # "lastLine":Z
    :cond_1bd
    move-wide/from16 v0, v16

    neg-double v2, v0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int v2, v2

    neg-int v15, v2

    .restart local v15    # "extra":I
    goto/16 :goto_118

    .line 701
    .end local v15    # "extra":I
    .end local v16    # "ex":D
    :cond_1c7
    const/4 v15, 0x0

    .restart local v15    # "extra":I
    goto/16 :goto_118

    .line 723
    .restart local v24    # "linedirs":Landroid/text/Layout$Directions;
    :cond_1ca
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    sub-int v4, p2, p24

    sub-int v6, p2, p24

    sub-int v7, p3, p2

    move/from16 v2, p17

    move-object/from16 v3, p16

    move-object/from16 v5, p22

    invoke-static/range {v2 .. v7}, Landroid/text/AndroidBidi;->directions(I[BI[CII)Landroid/text/Layout$Directions;

    move-result-object v2

    aput-object v2, v8, v22

    goto/16 :goto_15d

    .line 730
    :cond_1e2
    const/4 v12, 0x0

    goto :goto_16e

    .line 732
    .restart local v12    # "forceEllipsis":Z
    :cond_1e4
    const/4 v14, 0x0

    goto :goto_18e
.end method


# virtual methods
.method finish()V
    .registers 2

    .prologue
    .line 993
    iget-object v0, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    invoke-static {v0}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 994
    return-void
.end method

.method generate(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/TextDirectionHeuristic;FFZZFLandroid/text/TextUtils$TruncateAt;)V
    .registers 148
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "bufStart"    # I
    .param p3, "bufEnd"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "outerWidth"    # I
    .param p6, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p7, "spacingmult"    # F
    .param p8, "spacingadd"    # F
    .param p9, "includepad"    # Z
    .param p10, "trackpad"    # Z
    .param p11, "ellipsizedWidth"    # F
    .param p12, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;

    .prologue
    .line 165
    const/16 v94, 0x0

    .line 166
    .local v94, "breakOpp":[I
    invoke-virtual/range {p4 .. p4}, Landroid/text/TextPaint;->getTextLocale()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v115

    .line 168
    .local v115, "localeLanguageTag":Ljava/lang/String;
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Landroid/text/StaticLayout;->mLineCount:I

    .line 170
    const/4 v13, 0x0

    .line 171
    .local v13, "v":I
    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, p7, v5

    if-nez v5, :cond_1b

    const/4 v5, 0x0

    cmpl-float v5, p8, v5

    if-eqz v5, :cond_af

    :cond_1b
    const/16 v20, 0x1

    .line 173
    .local v20, "needMultiply":Z
    :goto_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v18, v0

    .line 174
    .local v18, "fm":Landroid/graphics/Paint$FontMetricsInt;
    const/16 v17, 0x0

    .line 176
    .local v17, "chooseHtv":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    move-object/from16 v116, v0

    .line 178
    .local v116, "measured":Landroid/text/MeasuredText;
    const/16 v129, 0x0

    .line 179
    .local v129, "spanned":Landroid/text/Spanned;
    move-object/from16 v0, p1

    instance-of v5, v0, Landroid/text/Spanned;

    if-eqz v5, :cond_37

    move-object/from16 v129, p1

    .line 180
    check-cast v129, Landroid/text/Spanned;

    .line 183
    :cond_37
    move/from16 v29, p2

    .local v29, "paraStart":I
    :goto_39
    move/from16 v0, v29

    move/from16 v1, p3

    if-gt v0, v1, :cond_4b6

    .line 184
    const/16 v5, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v29

    move/from16 v2, p3

    invoke-static {v0, v5, v1, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v38

    .line 185
    .local v38, "paraEnd":I
    if-gez v38, :cond_b3

    .line 186
    move/from16 v38, p3

    .line 190
    :goto_4f
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int/lit8 v99, v5, 0x1

    .line 191
    .local v99, "firstWidthLineLimit":I
    move/from16 v98, p5

    .line 192
    .local v98, "firstWidth":I
    move/from16 v124, p5

    .line 194
    .local v124, "restWidth":I
    const/16 v16, 0x0

    .line 196
    .local v16, "chooseHt":[Landroid/text/style/LineHeightSpan;
    if-eqz v129, :cond_107

    .line 197
    const-class v5, Landroid/text/style/LeadingMarginSpan;

    move-object/from16 v0, v129

    move/from16 v1, v29

    move/from16 v2, v38

    invoke-static {v0, v1, v2, v5}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v125

    check-cast v125, [Landroid/text/style/LeadingMarginSpan;

    .line 199
    .local v125, "sp":[Landroid/text/style/LeadingMarginSpan;
    const/16 v108, 0x0

    .local v108, "i":I
    :goto_6d
    move-object/from16 v0, v125

    array-length v5, v0

    move/from16 v0, v108

    if-ge v0, v5, :cond_b6

    .line 200
    aget-object v112, v125, v108

    .line 201
    .local v112, "lms":Landroid/text/style/LeadingMarginSpan;
    aget-object v5, v125, v108

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v5

    sub-int v98, v98, v5

    .line 202
    aget-object v5, v125, v108

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v5

    sub-int v124, v124, v5

    .line 206
    move-object/from16 v0, v112

    instance-of v5, v0, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v5, :cond_ac

    move-object/from16 v113, v112

    .line 207
    check-cast v113, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    .line 208
    .local v113, "lms2":Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;
    move-object/from16 v0, v129

    move-object/from16 v1, v113

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/text/StaticLayout;->getLineForOffset(I)I

    move-result v114

    .line 209
    .local v114, "lmsFirstLine":I
    invoke-interface/range {v113 .. v113}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v5

    add-int v5, v5, v114

    move/from16 v0, v99

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v99

    .line 199
    .end local v113    # "lms2":Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;
    .end local v114    # "lmsFirstLine":I
    :cond_ac
    add-int/lit8 v108, v108, 0x1

    goto :goto_6d

    .line 171
    .end local v16    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .end local v17    # "chooseHtv":[I
    .end local v18    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .end local v20    # "needMultiply":Z
    .end local v29    # "paraStart":I
    .end local v38    # "paraEnd":I
    .end local v98    # "firstWidth":I
    .end local v99    # "firstWidthLineLimit":I
    .end local v108    # "i":I
    .end local v112    # "lms":Landroid/text/style/LeadingMarginSpan;
    .end local v116    # "measured":Landroid/text/MeasuredText;
    .end local v124    # "restWidth":I
    .end local v125    # "sp":[Landroid/text/style/LeadingMarginSpan;
    .end local v129    # "spanned":Landroid/text/Spanned;
    :cond_af
    const/16 v20, 0x0

    goto/16 :goto_1d

    .line 188
    .restart local v17    # "chooseHtv":[I
    .restart local v18    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .restart local v20    # "needMultiply":Z
    .restart local v29    # "paraStart":I
    .restart local v38    # "paraEnd":I
    .restart local v116    # "measured":Landroid/text/MeasuredText;
    .restart local v129    # "spanned":Landroid/text/Spanned;
    :cond_b3
    add-int/lit8 v38, v38, 0x1

    goto :goto_4f

    .line 214
    .restart local v16    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .restart local v98    # "firstWidth":I
    .restart local v99    # "firstWidthLineLimit":I
    .restart local v108    # "i":I
    .restart local v124    # "restWidth":I
    .restart local v125    # "sp":[Landroid/text/style/LeadingMarginSpan;
    :cond_b6
    const-class v5, Landroid/text/style/LineHeightSpan;

    move-object/from16 v0, v129

    move/from16 v1, v29

    move/from16 v2, v38

    invoke-static {v0, v1, v2, v5}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    check-cast v16, [Landroid/text/style/LineHeightSpan;

    .line 216
    .restart local v16    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    move-object/from16 v0, v16

    array-length v5, v0

    if-eqz v5, :cond_107

    .line 217
    if-eqz v17, :cond_d3

    move-object/from16 v0, v17

    array-length v5, v0

    move-object/from16 v0, v16

    array-length v6, v0

    if-ge v5, v6, :cond_da

    .line 219
    :cond_d3
    move-object/from16 v0, v16

    array-length v5, v0

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v17

    .line 222
    :cond_da
    const/16 v108, 0x0

    :goto_dc
    move-object/from16 v0, v16

    array-length v5, v0

    move/from16 v0, v108

    if-ge v0, v5, :cond_107

    .line 223
    aget-object v5, v16, v108

    move-object/from16 v0, v129

    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v117

    .line 225
    .local v117, "o":I
    move/from16 v0, v117

    move/from16 v1, v29

    if-ge v0, v1, :cond_104

    .line 229
    move-object/from16 v0, p0

    move/from16 v1, v117

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineForOffset(I)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v5

    aput v5, v17, v108

    .line 222
    :goto_101
    add-int/lit8 v108, v108, 0x1

    goto :goto_dc

    .line 233
    :cond_104
    aput v13, v17, v108

    goto :goto_101

    .line 239
    .end local v108    # "i":I
    .end local v117    # "o":I
    .end local v125    # "sp":[Landroid/text/style/LeadingMarginSpan;
    :cond_107
    move-object/from16 v0, v116

    move-object/from16 v1, p1

    move/from16 v2, v29

    move/from16 v3, v38

    move-object/from16 v4, p6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V

    .line 240
    move-object/from16 v0, v116

    iget-object v0, v0, Landroid/text/MeasuredText;->mChars:[C

    move-object/from16 v27, v0

    .line 241
    .local v27, "chs":[C
    move-object/from16 v0, v116

    iget-object v0, v0, Landroid/text/MeasuredText;->mWidths:[F

    move-object/from16 v28, v0

    .line 242
    .local v28, "widths":[F
    move-object/from16 v0, v116

    iget-object v0, v0, Landroid/text/MeasuredText;->mLevels:[B

    move-object/from16 v21, v0

    .line 243
    .local v21, "chdirs":[B
    move-object/from16 v0, v116

    iget v0, v0, Landroid/text/MeasuredText;->mDir:I

    move/from16 v22, v0

    .line 244
    .local v22, "dir":I
    move-object/from16 v0, v116

    iget-boolean v0, v0, Landroid/text/MeasuredText;->mEasy:Z

    move/from16 v23, v0

    .line 246
    .local v23, "easy":Z
    sub-int v5, v38, v29

    move-object/from16 v0, v115

    move-object/from16 v1, v27

    move-object/from16 v2, v94

    invoke-static {v0, v1, v5, v2}, Landroid/text/StaticLayout;->nLineBreakOpportunities(Ljava/lang/String;[CI[I)[I

    move-result-object v94

    .line 247
    const/16 v95, 0x0

    .line 249
    .local v95, "breakOppIndex":I
    move/from16 v134, v98

    .line 251
    .local v134, "width":I
    const/16 v62, 0x0

    .line 253
    .local v62, "w":F
    move/from16 v7, v29

    .line 257
    .local v7, "here":I
    move/from16 v118, v29

    .line 258
    .local v118, "ok":I
    move/from16 v123, v62

    .line 259
    .local v123, "okWidth":F
    const/16 v119, 0x0

    .local v119, "okAscent":I
    const/16 v121, 0x0

    .local v121, "okDescent":I
    const/16 v122, 0x0

    .local v122, "okTop":I
    const/16 v120, 0x0

    .line 263
    .local v120, "okBottom":I
    move/from16 v100, v29

    .line 264
    .local v100, "fit":I
    move/from16 v101, v62

    .line 265
    .local v101, "fitWidth":F
    const/16 v39, 0x0

    .local v39, "fitAscent":I
    const/16 v40, 0x0

    .local v40, "fitDescent":I
    const/16 v41, 0x0

    .local v41, "fitTop":I
    const/16 v42, 0x0

    .line 267
    .local v42, "fitBottom":I
    move/from16 v102, v62

    .line 269
    .local v102, "fitWidthGraphing":F
    const/16 v19, 0x0

    .line 270
    .local v19, "hasTabOrEmoji":Z
    const/16 v107, 0x0

    .line 271
    .local v107, "hasTab":Z
    const/16 v131, 0x0

    .line 273
    .local v131, "tabStops":Landroid/text/Layout$TabStops;
    move/from16 v128, v29

    .local v128, "spanStart":I
    :goto_168
    move/from16 v0, v128

    move/from16 v1, v38

    if-ge v0, v1, :cond_435

    .line 275
    if-nez v129, :cond_1fe

    .line 276
    move/from16 v126, v38

    .line 277
    .local v126, "spanEnd":I
    sub-int v127, v126, v128

    .line 278
    .local v127, "spanLen":I
    move-object/from16 v0, v116

    move-object/from16 v1, p4

    move/from16 v2, v127

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F

    .line 289
    :goto_17f
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v106, v0

    .line 290
    .local v106, "fmTop":I
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v104, v0

    .line 291
    .local v104, "fmBottom":I
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v103, v0

    .line 292
    .local v103, "fmAscent":I
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v105, v0

    .line 294
    .local v105, "fmDescent":I
    move/from16 v111, v128

    .local v111, "j":I
    :goto_199
    move/from16 v0, v111

    move/from16 v1, v126

    if-ge v0, v1, :cond_3de

    .line 295
    sub-int v5, v111, v29

    aget-char v96, v27, v5

    .line 297
    .local v96, "c":C
    const/16 v5, 0xa

    move/from16 v0, v96

    if-ne v0, v5, :cond_235

    .line 348
    :goto_1a9
    const/16 v5, 0x20

    move/from16 v0, v96

    if-eq v0, v5, :cond_1bb

    const/16 v5, 0x9

    move/from16 v0, v96

    if-eq v0, v5, :cond_1bb

    const/16 v5, 0x200b

    move/from16 v0, v96

    if-ne v0, v5, :cond_2e6

    :cond_1bb
    const/16 v110, 0x1

    .line 350
    .local v110, "isSpaceOrTab":Z
    :goto_1bd
    move/from16 v0, v134

    int-to-float v5, v0

    cmpg-float v5, v62, v5

    if-lez v5, :cond_1c6

    if-eqz v110, :cond_382

    .line 351
    :cond_1c6
    move/from16 v101, v62

    .line 352
    if-nez v110, :cond_1cc

    .line 353
    move/from16 v102, v62

    .line 355
    :cond_1cc
    add-int/lit8 v100, v111, 0x1

    .line 357
    move/from16 v0, v106

    move/from16 v1, v41

    if-ge v0, v1, :cond_1d6

    .line 358
    move/from16 v41, v106

    .line 359
    :cond_1d6
    move/from16 v0, v103

    move/from16 v1, v39

    if-ge v0, v1, :cond_1de

    .line 360
    move/from16 v39, v103

    .line 361
    :cond_1de
    move/from16 v0, v105

    move/from16 v1, v40

    if-le v0, v1, :cond_1e6

    .line 362
    move/from16 v40, v105

    .line 363
    :cond_1e6
    move/from16 v0, v104

    move/from16 v1, v42

    if-le v0, v1, :cond_1ee

    .line 364
    move/from16 v42, v104

    .line 367
    :cond_1ee
    :goto_1ee
    aget v5, v94, v95

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2ea

    aget v5, v94, v95

    sub-int v6, v111, v29

    add-int/lit8 v6, v6, 0x1

    if-ge v5, v6, :cond_2ea

    .line 368
    add-int/lit8 v95, v95, 0x1

    goto :goto_1ee

    .line 280
    .end local v96    # "c":C
    .end local v103    # "fmAscent":I
    .end local v104    # "fmBottom":I
    .end local v105    # "fmDescent":I
    .end local v106    # "fmTop":I
    .end local v110    # "isSpaceOrTab":Z
    .end local v111    # "j":I
    .end local v126    # "spanEnd":I
    .end local v127    # "spanLen":I
    :cond_1fe
    const-class v5, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v129

    move/from16 v1, v128

    move/from16 v2, v38

    invoke-interface {v0, v1, v2, v5}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v126

    .line 282
    .restart local v126    # "spanEnd":I
    sub-int v127, v126, v128

    .line 283
    .restart local v127    # "spanLen":I
    const-class v5, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v129

    move/from16 v1, v128

    move/from16 v2, v126

    invoke-interface {v0, v1, v2, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v130

    check-cast v130, [Landroid/text/style/MetricAffectingSpan;

    .line 285
    .local v130, "spans":[Landroid/text/style/MetricAffectingSpan;
    const-class v5, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v130

    move-object/from16 v1, v129

    invoke-static {v0, v1, v5}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v130

    .end local v130    # "spans":[Landroid/text/style/MetricAffectingSpan;
    check-cast v130, [Landroid/text/style/MetricAffectingSpan;

    .line 286
    .restart local v130    # "spans":[Landroid/text/style/MetricAffectingSpan;
    move-object/from16 v0, v116

    move-object/from16 v1, p4

    move-object/from16 v2, v130

    move/from16 v3, v127

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;[Landroid/text/style/MetricAffectingSpan;ILandroid/graphics/Paint$FontMetricsInt;)F

    goto/16 :goto_17f

    .line 299
    .end local v130    # "spans":[Landroid/text/style/MetricAffectingSpan;
    .restart local v96    # "c":C
    .restart local v103    # "fmAscent":I
    .restart local v104    # "fmBottom":I
    .restart local v105    # "fmDescent":I
    .restart local v106    # "fmTop":I
    .restart local v111    # "j":I
    :cond_235
    const/16 v5, 0x9

    move/from16 v0, v96

    if-ne v0, v5, :cond_277

    .line 300
    if-nez v107, :cond_261

    .line 301
    const/16 v107, 0x1

    .line 302
    const/16 v19, 0x1

    .line 303
    if-eqz v129, :cond_261

    .line 305
    const-class v5, Landroid/text/style/TabStopSpan;

    move-object/from16 v0, v129

    move/from16 v1, v29

    move/from16 v2, v38

    invoke-static {v0, v1, v2, v5}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v130

    check-cast v130, [Landroid/text/style/TabStopSpan;

    .line 307
    .local v130, "spans":[Landroid/text/style/TabStopSpan;
    move-object/from16 v0, v130

    array-length v5, v0

    if-lez v5, :cond_261

    .line 308
    new-instance v131, Landroid/text/Layout$TabStops;

    .end local v131    # "tabStops":Landroid/text/Layout$TabStops;
    const/16 v5, 0x14

    move-object/from16 v0, v131

    move-object/from16 v1, v130

    invoke-direct {v0, v5, v1}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    .line 312
    .end local v130    # "spans":[Landroid/text/style/TabStopSpan;
    .restart local v131    # "tabStops":Landroid/text/Layout$TabStops;
    :cond_261
    if-eqz v131, :cond_26d

    .line 313
    move-object/from16 v0, v131

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/text/Layout$TabStops;->nextTab(F)F

    move-result v62

    goto/16 :goto_1a9

    .line 315
    :cond_26d
    const/16 v5, 0x14

    move/from16 v0, v62

    invoke-static {v0, v5}, Landroid/text/Layout$TabStops;->nextDefaultStop(FI)F

    move-result v62

    goto/16 :goto_1a9

    .line 317
    :cond_277
    const v5, 0xd800

    move/from16 v0, v96

    if-lt v0, v5, :cond_2de

    const v5, 0xdfff

    move/from16 v0, v96

    if-gt v0, v5, :cond_2de

    add-int/lit8 v5, v111, 0x1

    move/from16 v0, v126

    if-ge v5, v0, :cond_2de

    .line 319
    sub-int v5, v111, v29

    move-object/from16 v0, v27

    invoke-static {v0, v5}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v97

    .line 321
    .local v97, "emoji":I
    sget v5, Landroid/text/StaticLayout;->MIN_EMOJI:I

    move/from16 v0, v97

    if-lt v0, v5, :cond_2d6

    sget v5, Landroid/text/StaticLayout;->MAX_EMOJI:I

    move/from16 v0, v97

    if-gt v0, v5, :cond_2d6

    .line 322
    sget-object v5, Landroid/text/StaticLayout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    move/from16 v0, v97

    invoke-virtual {v5, v0}, Landroid/emoji/EmojiFactory;->getBitmapFromAndroidPua(I)Landroid/graphics/Bitmap;

    move-result-object v93

    .line 324
    .local v93, "bm":Landroid/graphics/Bitmap;
    if-eqz v93, :cond_2ce

    .line 327
    if-nez v129, :cond_2c7

    .line 328
    move-object/from16 v132, p4

    .line 333
    .local v132, "whichPaint":Landroid/graphics/Paint;
    :goto_2ad
    invoke-virtual/range {v93 .. v93}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {v132 .. v132}, Landroid/graphics/Paint;->ascent()F

    move-result v6

    neg-float v6, v6

    mul-float/2addr v5, v6

    invoke-virtual/range {v93 .. v93}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v133, v5, v6

    .line 335
    .local v133, "wid":F
    add-float v62, v62, v133

    .line 336
    const/16 v19, 0x1

    .line 337
    add-int/lit8 v111, v111, 0x1

    .line 338
    goto/16 :goto_1a9

    .line 330
    .end local v132    # "whichPaint":Landroid/graphics/Paint;
    .end local v133    # "wid":F
    :cond_2c7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mWorkPaint:Landroid/text/TextPaint;

    move-object/from16 v132, v0

    .restart local v132    # "whichPaint":Landroid/graphics/Paint;
    goto :goto_2ad

    .line 339
    .end local v132    # "whichPaint":Landroid/graphics/Paint;
    :cond_2ce
    sub-int v5, v111, v29

    aget v5, v28, v5

    add-float v62, v62, v5

    goto/16 :goto_1a9

    .line 342
    .end local v93    # "bm":Landroid/graphics/Bitmap;
    :cond_2d6
    sub-int v5, v111, v29

    aget v5, v28, v5

    add-float v62, v62, v5

    goto/16 :goto_1a9

    .line 345
    .end local v97    # "emoji":I
    :cond_2de
    sub-int v5, v111, v29

    aget v5, v28, v5

    add-float v62, v62, v5

    goto/16 :goto_1a9

    .line 348
    :cond_2e6
    const/16 v110, 0x0

    goto/16 :goto_1bd

    .line 371
    .restart local v110    # "isSpaceOrTab":Z
    :cond_2ea
    const/16 v109, 0x0

    .line 373
    .local v109, "isLineBreak":Z
    const-string v5, "ko_KR"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_36d

    .line 374
    if-nez v110, :cond_33e

    const/16 v5, 0x2f

    move/from16 v0, v96

    if-eq v0, v5, :cond_30a

    const/16 v5, 0x2d

    move/from16 v0, v96

    if-ne v0, v5, :cond_31c

    :cond_30a
    add-int/lit8 v5, v111, 0x1

    move/from16 v0, v126

    if-ge v5, v0, :cond_33e

    add-int/lit8 v5, v111, 0x1

    sub-int v5, v5, v29

    aget-char v5, v27, v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_33e

    :cond_31c
    const/16 v5, 0x2e80

    move/from16 v0, v96

    if-lt v0, v5, :cond_36a

    const/4 v5, 0x1

    move/from16 v0, v96

    invoke-static {v0, v5}, Landroid/text/StaticLayout;->isIdeographic(CZ)Z

    move-result v5

    if-eqz v5, :cond_36a

    add-int/lit8 v5, v111, 0x1

    move/from16 v0, v126

    if-ge v5, v0, :cond_36a

    add-int/lit8 v5, v111, 0x1

    sub-int v5, v5, v29

    aget-char v5, v27, v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/text/StaticLayout;->isIdeographic(CZ)Z

    move-result v5

    if-eqz v5, :cond_36a

    :cond_33e
    const/16 v109, 0x1

    .line 389
    :goto_340
    if-eqz v109, :cond_366

    .line 390
    move/from16 v123, v102

    .line 391
    add-int/lit8 v118, v111, 0x1

    .line 393
    move/from16 v0, v41

    move/from16 v1, v122

    if-ge v0, v1, :cond_34e

    .line 394
    move/from16 v122, v41

    .line 395
    :cond_34e
    move/from16 v0, v39

    move/from16 v1, v119

    if-ge v0, v1, :cond_356

    .line 396
    move/from16 v119, v39

    .line 397
    :cond_356
    move/from16 v0, v40

    move/from16 v1, v121

    if-le v0, v1, :cond_35e

    .line 398
    move/from16 v121, v40

    .line 399
    :cond_35e
    move/from16 v0, v42

    move/from16 v1, v120

    if-le v0, v1, :cond_366

    .line 400
    move/from16 v120, v42

    .line 294
    .end local v109    # "isLineBreak":Z
    :cond_366
    add-int/lit8 v111, v111, 0x1

    goto/16 :goto_199

    .line 374
    .restart local v109    # "isLineBreak":Z
    :cond_36a
    const/16 v109, 0x0

    goto :goto_340

    .line 384
    :cond_36d
    move-object/from16 v0, v94

    array-length v5, v0

    move/from16 v0, v95

    if-ge v0, v5, :cond_37f

    aget v5, v94, v95

    sub-int v6, v111, v29

    add-int/lit8 v6, v6, 0x1

    if-ne v5, v6, :cond_37f

    const/16 v109, 0x1

    :goto_37e
    goto :goto_340

    :cond_37f
    const/16 v109, 0x0

    goto :goto_37e

    .line 408
    .end local v109    # "isLineBreak":Z
    :cond_382
    move/from16 v0, v118

    if-eq v0, v7, :cond_3e5

    .line 409
    move/from16 v8, v118

    .line 410
    .local v8, "endPos":I
    move/from16 v9, v119

    .line 411
    .local v9, "above":I
    move/from16 v10, v121

    .line 412
    .local v10, "below":I
    move/from16 v11, v122

    .line 413
    .local v11, "top":I
    move/from16 v12, v120

    .line 414
    .local v12, "bottom":I
    move/from16 v32, v123

    .line 415
    .local v32, "currentTextWidth":F
    add-int/lit8 v5, v111, 0x1

    move/from16 v0, v126

    if-gt v5, v0, :cond_3e2

    const/16 v34, 0x1

    .local v34, "moreChars":Z
    :goto_39a
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v14, p7

    move/from16 v15, p8

    move/from16 v24, p3

    move/from16 v25, p9

    move/from16 v26, p10

    move-object/from16 v30, p12

    move/from16 v31, p11

    move-object/from16 v33, p4

    .line 440
    invoke-direct/range {v5 .. v34}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v13

    .line 447
    move v7, v8

    .line 448
    add-int/lit8 v111, v7, -0x1

    .line 449
    move/from16 v100, v7

    move/from16 v118, v7

    .line 450
    const/16 v62, 0x0

    .line 451
    move/from16 v102, v62

    .line 452
    const/16 v42, 0x0

    move/from16 v41, v42

    move/from16 v40, v42

    move/from16 v39, v42

    .line 453
    const/16 v120, 0x0

    move/from16 v122, v120

    move/from16 v121, v120

    move/from16 v119, v120

    .line 455
    add-int/lit8 v99, v99, -0x1

    if-gtz v99, :cond_3d3

    .line 456
    move/from16 v134, v124

    .line 459
    :cond_3d3
    move/from16 v0, v128

    if-ge v7, v0, :cond_42a

    .line 462
    move-object/from16 v0, v116

    invoke-virtual {v0, v7}, Landroid/text/MeasuredText;->setPos(I)V

    .line 463
    move/from16 v126, v7

    .line 273
    .end local v8    # "endPos":I
    .end local v9    # "above":I
    .end local v10    # "below":I
    .end local v11    # "top":I
    .end local v12    # "bottom":I
    .end local v32    # "currentTextWidth":F
    .end local v34    # "moreChars":Z
    .end local v96    # "c":C
    .end local v110    # "isSpaceOrTab":Z
    :cond_3de
    move/from16 v128, v126

    goto/16 :goto_168

    .line 415
    .restart local v8    # "endPos":I
    .restart local v9    # "above":I
    .restart local v10    # "below":I
    .restart local v11    # "top":I
    .restart local v12    # "bottom":I
    .restart local v32    # "currentTextWidth":F
    .restart local v96    # "c":C
    .restart local v110    # "isSpaceOrTab":Z
    :cond_3e2
    const/16 v34, 0x0

    goto :goto_39a

    .line 416
    .end local v8    # "endPos":I
    .end local v9    # "above":I
    .end local v10    # "below":I
    .end local v11    # "top":I
    .end local v12    # "bottom":I
    .end local v32    # "currentTextWidth":F
    :cond_3e5
    move/from16 v0, v100

    if-eq v0, v7, :cond_401

    .line 417
    move/from16 v8, v100

    .line 418
    .restart local v8    # "endPos":I
    move/from16 v9, v39

    .line 419
    .restart local v9    # "above":I
    move/from16 v10, v40

    .line 420
    .restart local v10    # "below":I
    move/from16 v11, v41

    .line 421
    .restart local v11    # "top":I
    move/from16 v12, v42

    .line 422
    .restart local v12    # "bottom":I
    move/from16 v32, v101

    .line 423
    .restart local v32    # "currentTextWidth":F
    add-int/lit8 v5, v111, 0x1

    move/from16 v0, v126

    if-gt v5, v0, :cond_3fe

    const/16 v34, 0x1

    .restart local v34    # "moreChars":Z
    :goto_3fd
    goto :goto_39a

    .end local v34    # "moreChars":Z
    :cond_3fe
    const/16 v34, 0x0

    goto :goto_3fd

    .line 426
    .end local v8    # "endPos":I
    .end local v9    # "above":I
    .end local v10    # "below":I
    .end local v11    # "top":I
    .end local v12    # "bottom":I
    .end local v32    # "currentTextWidth":F
    :cond_401
    add-int/lit8 v8, v7, 0x1

    .line 429
    .restart local v8    # "endPos":I
    :goto_403
    move/from16 v0, v126

    if-ge v8, v0, :cond_413

    sub-int v5, v8, v29

    aget v5, v28, v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_413

    .line 430
    add-int/lit8 v8, v8, 0x1

    goto :goto_403

    .line 432
    :cond_413
    move/from16 v9, v103

    .line 433
    .restart local v9    # "above":I
    move/from16 v10, v105

    .line 434
    .restart local v10    # "below":I
    move/from16 v11, v106

    .line 435
    .restart local v11    # "top":I
    move/from16 v12, v104

    .line 436
    .restart local v12    # "bottom":I
    sub-int v5, v7, v29

    aget v32, v28, v5

    .line 437
    .restart local v32    # "currentTextWidth":F
    move/from16 v0, v126

    if-ge v8, v0, :cond_427

    const/16 v34, 0x1

    .restart local v34    # "moreChars":Z
    :goto_425
    goto/16 :goto_39a

    .end local v34    # "moreChars":Z
    :cond_427
    const/16 v34, 0x0

    goto :goto_425

    .line 467
    .restart local v34    # "moreChars":Z
    :cond_42a
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt v5, v6, :cond_366

    .line 523
    .end local v7    # "here":I
    .end local v8    # "endPos":I
    .end local v9    # "above":I
    .end local v10    # "below":I
    .end local v11    # "top":I
    .end local v12    # "bottom":I
    .end local v16    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .end local v19    # "hasTabOrEmoji":Z
    .end local v21    # "chdirs":[B
    .end local v22    # "dir":I
    .end local v23    # "easy":Z
    .end local v27    # "chs":[C
    .end local v28    # "widths":[F
    .end local v32    # "currentTextWidth":F
    .end local v34    # "moreChars":Z
    .end local v38    # "paraEnd":I
    .end local v39    # "fitAscent":I
    .end local v40    # "fitDescent":I
    .end local v41    # "fitTop":I
    .end local v42    # "fitBottom":I
    .end local v62    # "w":F
    .end local v95    # "breakOppIndex":I
    .end local v96    # "c":C
    .end local v98    # "firstWidth":I
    .end local v99    # "firstWidthLineLimit":I
    .end local v100    # "fit":I
    .end local v101    # "fitWidth":F
    .end local v102    # "fitWidthGraphing":F
    .end local v103    # "fmAscent":I
    .end local v104    # "fmBottom":I
    .end local v105    # "fmDescent":I
    .end local v106    # "fmTop":I
    .end local v107    # "hasTab":Z
    .end local v110    # "isSpaceOrTab":Z
    .end local v111    # "j":I
    .end local v118    # "ok":I
    .end local v119    # "okAscent":I
    .end local v120    # "okBottom":I
    .end local v121    # "okDescent":I
    .end local v122    # "okTop":I
    .end local v123    # "okWidth":F
    .end local v124    # "restWidth":I
    .end local v126    # "spanEnd":I
    .end local v127    # "spanLen":I
    .end local v128    # "spanStart":I
    .end local v131    # "tabStops":Landroid/text/Layout$TabStops;
    .end local v134    # "width":I
    :cond_434
    :goto_434
    return-void

    .line 474
    .restart local v7    # "here":I
    .restart local v16    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .restart local v19    # "hasTabOrEmoji":Z
    .restart local v21    # "chdirs":[B
    .restart local v22    # "dir":I
    .restart local v23    # "easy":Z
    .restart local v27    # "chs":[C
    .restart local v28    # "widths":[F
    .restart local v38    # "paraEnd":I
    .restart local v39    # "fitAscent":I
    .restart local v40    # "fitDescent":I
    .restart local v41    # "fitTop":I
    .restart local v42    # "fitBottom":I
    .restart local v62    # "w":F
    .restart local v95    # "breakOppIndex":I
    .restart local v98    # "firstWidth":I
    .restart local v99    # "firstWidthLineLimit":I
    .restart local v100    # "fit":I
    .restart local v101    # "fitWidth":F
    .restart local v102    # "fitWidthGraphing":F
    .restart local v107    # "hasTab":Z
    .restart local v118    # "ok":I
    .restart local v119    # "okAscent":I
    .restart local v120    # "okBottom":I
    .restart local v121    # "okDescent":I
    .restart local v122    # "okTop":I
    .restart local v123    # "okWidth":F
    .restart local v124    # "restWidth":I
    .restart local v128    # "spanStart":I
    .restart local v131    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v134    # "width":I
    :cond_435
    move/from16 v0, v38

    if-eq v0, v7, :cond_4a4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ge v5, v6, :cond_4a4

    .line 475
    or-int v5, v41, v42

    or-int v5, v5, v40

    or-int v5, v5, v39

    if-nez v5, :cond_46a

    .line 476
    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 478
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v41, v0

    .line 479
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v42, v0

    .line 480
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v39, v0

    .line 481
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v40, v0

    .line 486
    :cond_46a
    move/from16 v0, v38

    move/from16 v1, p3

    if-eq v0, v1, :cond_544

    const/16 v64, 0x1

    :goto_472
    move-object/from16 v35, p0

    move-object/from16 v36, p1

    move/from16 v37, v7

    move/from16 v43, v13

    move/from16 v44, p7

    move/from16 v45, p8

    move-object/from16 v46, v16

    move-object/from16 v47, v17

    move-object/from16 v48, v18

    move/from16 v49, v19

    move/from16 v50, v20

    move-object/from16 v51, v21

    move/from16 v52, v22

    move/from16 v53, v23

    move/from16 v54, p3

    move/from16 v55, p9

    move/from16 v56, p10

    move-object/from16 v57, v27

    move-object/from16 v58, v28

    move/from16 v59, v29

    move-object/from16 v60, p12

    move/from16 v61, p11

    move-object/from16 v63, p4

    invoke-direct/range {v35 .. v64}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v13

    .line 498
    :cond_4a4
    move/from16 v29, v38

    .line 500
    move/from16 v0, v38

    move/from16 v1, p3

    if-eq v0, v1, :cond_4b6

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt v5, v6, :cond_548

    .line 504
    .end local v7    # "here":I
    .end local v16    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .end local v19    # "hasTabOrEmoji":Z
    .end local v21    # "chdirs":[B
    .end local v22    # "dir":I
    .end local v23    # "easy":Z
    .end local v27    # "chs":[C
    .end local v28    # "widths":[F
    .end local v38    # "paraEnd":I
    .end local v39    # "fitAscent":I
    .end local v40    # "fitDescent":I
    .end local v41    # "fitTop":I
    .end local v42    # "fitBottom":I
    .end local v62    # "w":F
    .end local v95    # "breakOppIndex":I
    .end local v98    # "firstWidth":I
    .end local v99    # "firstWidthLineLimit":I
    .end local v100    # "fit":I
    .end local v101    # "fitWidth":F
    .end local v102    # "fitWidthGraphing":F
    .end local v107    # "hasTab":Z
    .end local v118    # "ok":I
    .end local v119    # "okAscent":I
    .end local v120    # "okBottom":I
    .end local v121    # "okDescent":I
    .end local v122    # "okTop":I
    .end local v123    # "okWidth":F
    .end local v124    # "restWidth":I
    .end local v128    # "spanStart":I
    .end local v131    # "tabStops":Landroid/text/Layout$TabStops;
    .end local v134    # "width":I
    :cond_4b6
    move/from16 v0, p3

    move/from16 v1, p2

    if-eq v0, v1, :cond_4c8

    add-int/lit8 v5, p3, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_434

    :cond_4c8
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ge v5, v6, :cond_434

    .line 508
    move-object/from16 v0, v116

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V

    .line 510
    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 512
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v67, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v68, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v69, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v70, v0

    const/16 v74, 0x0

    const/16 v75, 0x0

    const/16 v77, 0x0

    move-object/from16 v0, v116

    iget-object v0, v0, Landroid/text/MeasuredText;->mLevels:[B

    move-object/from16 v79, v0

    move-object/from16 v0, v116

    iget v0, v0, Landroid/text/MeasuredText;->mDir:I

    move/from16 v80, v0

    move-object/from16 v0, v116

    iget-boolean v0, v0, Landroid/text/MeasuredText;->mEasy:Z

    move/from16 v81, v0

    const/16 v85, 0x0

    const/16 v86, 0x0

    const/16 v90, 0x0

    const/16 v92, 0x0

    move-object/from16 v63, p0

    move-object/from16 v64, p1

    move/from16 v65, p3

    move/from16 v66, p3

    move/from16 v71, v13

    move/from16 v72, p7

    move/from16 v73, p8

    move-object/from16 v76, v18

    move/from16 v78, v20

    move/from16 v82, p3

    move/from16 v83, p9

    move/from16 v84, p10

    move/from16 v87, p2

    move-object/from16 v88, p12

    move/from16 v89, p11

    move-object/from16 v91, p4

    invoke-direct/range {v63 .. v92}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v13

    goto/16 :goto_434

    .line 486
    .restart local v7    # "here":I
    .restart local v16    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .restart local v19    # "hasTabOrEmoji":Z
    .restart local v21    # "chdirs":[B
    .restart local v22    # "dir":I
    .restart local v23    # "easy":Z
    .restart local v27    # "chs":[C
    .restart local v28    # "widths":[F
    .restart local v38    # "paraEnd":I
    .restart local v39    # "fitAscent":I
    .restart local v40    # "fitDescent":I
    .restart local v41    # "fitTop":I
    .restart local v42    # "fitBottom":I
    .restart local v62    # "w":F
    .restart local v95    # "breakOppIndex":I
    .restart local v98    # "firstWidth":I
    .restart local v99    # "firstWidthLineLimit":I
    .restart local v100    # "fit":I
    .restart local v101    # "fitWidth":F
    .restart local v102    # "fitWidthGraphing":F
    .restart local v107    # "hasTab":Z
    .restart local v118    # "ok":I
    .restart local v119    # "okAscent":I
    .restart local v120    # "okBottom":I
    .restart local v121    # "okDescent":I
    .restart local v122    # "okTop":I
    .restart local v123    # "okWidth":F
    .restart local v124    # "restWidth":I
    .restart local v128    # "spanStart":I
    .restart local v131    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v134    # "width":I
    :cond_544
    const/16 v64, 0x0

    goto/16 :goto_472

    .line 183
    :cond_548
    move/from16 v29, v38

    goto/16 :goto_39
.end method

.method public getBottomPadding()I
    .registers 2

    .prologue
    .line 962
    iget v0, p0, Landroid/text/StaticLayout;->mBottomPadding:I

    return v0
.end method

.method public getEllipsisCount(I)I
    .registers 4
    .param p1, "line"    # I

    .prologue
    .line 967
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_7

    .line 968
    const/4 v0, 0x0

    .line 971
    :goto_6
    return v0

    :cond_7
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x4

    aget v0, v0, v1

    goto :goto_6
.end method

.method public getEllipsisStart(I)I
    .registers 4
    .param p1, "line"    # I

    .prologue
    .line 976
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_7

    .line 977
    const/4 v0, 0x0

    .line 980
    :goto_6
    return v0

    :cond_7
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x3

    aget v0, v0, v1

    goto :goto_6
.end method

.method public getEllipsizedWidth()I
    .registers 2

    .prologue
    .line 985
    iget v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    return v0
.end method

.method public getLineContainsTab(I)Z
    .registers 4
    .param p1, "line"    # I

    .prologue
    .line 947
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public getLineCount()I
    .registers 2

    .prologue
    .line 912
    iget v0, p0, Landroid/text/StaticLayout;->mLineCount:I

    return v0
.end method

.method public getLineDescent(I)I
    .registers 5
    .param p1, "line"    # I

    .prologue
    .line 927
    iget-object v1, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v2, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x2

    aget v0, v1, v2

    .line 928
    .local v0, "descent":I
    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lez v1, :cond_1c

    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    add-int/lit8 v1, v1, -0x1

    if-lt p1, v1, :cond_1c

    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    if-eq p1, v1, :cond_1c

    .line 930
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getBottomPadding()I

    move-result v1

    add-int/2addr v0, v1

    .line 932
    :cond_1c
    return v0
.end method

.method public final getLineDirections(I)Landroid/text/Layout$Directions;
    .registers 3
    .param p1, "line"    # I

    .prologue
    .line 952
    iget-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getLineForVertical(I)I
    .registers 8
    .param p1, "vertical"    # I

    .prologue
    .line 891
    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    .line 892
    .local v1, "high":I
    const/4 v3, -0x1

    .line 894
    .local v3, "low":I
    iget-object v2, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 895
    .local v2, "lines":[I
    :goto_5
    sub-int v4, v1, v3

    const/4 v5, 0x1

    if-le v4, v5, :cond_1b

    .line 896
    add-int v4, v1, v3

    shr-int/lit8 v0, v4, 0x1

    .line 897
    .local v0, "guess":I
    iget v4, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x1

    aget v4, v2, v4

    if-le v4, p1, :cond_19

    .line 898
    move v1, v0

    goto :goto_5

    .line 900
    :cond_19
    move v3, v0

    goto :goto_5

    .line 903
    .end local v0    # "guess":I
    :cond_1b
    if-gez v3, :cond_1e

    .line 904
    const/4 v3, 0x0

    .line 906
    .end local v3    # "low":I
    :cond_1e
    return v3
.end method

.method public getLineStart(I)I
    .registers 4
    .param p1, "line"    # I

    .prologue
    .line 937
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    const v1, 0x1fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getLineTop(I)I
    .registers 5
    .param p1, "line"    # I

    .prologue
    .line 917
    iget-object v1, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v2, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x1

    aget v0, v1, v2

    .line 918
    .local v0, "top":I
    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lez v1, :cond_1a

    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt p1, v1, :cond_1a

    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    if-eq p1, v1, :cond_1a

    .line 920
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getBottomPadding()I

    move-result v1

    add-int/2addr v0, v1

    .line 922
    :cond_1a
    return v0
.end method

.method public getParagraphDirection(I)I
    .registers 4
    .param p1, "line"    # I

    .prologue
    .line 942
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    shr-int/lit8 v0, v0, 0x1e

    return v0
.end method

.method public getTopPadding()I
    .registers 2

    .prologue
    .line 957
    iget v0, p0, Landroid/text/StaticLayout;->mTopPadding:I

    return v0
.end method

.method prepare()V
    .registers 2

    .prologue
    .line 989
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 990
    return-void
.end method
