.class public Landroid/text/DynamicLayout;
.super Landroid/text/Layout;
.source "DynamicLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/DynamicLayout$ChangeWatcher;
    }
.end annotation


# static fields
.field private static final BLOCK_MINIMUM_CHARACTER_LENGTH:I = 0x190

.field private static final COLUMNS_ELLIPSIZE:I = 0x5

.field private static final COLUMNS_NORMAL:I = 0x3

.field private static final DESCENT:I = 0x2

.field private static final DIR:I = 0x0

.field private static final DIR_SHIFT:I = 0x1e

.field private static final ELLIPSIS_COUNT:I = 0x4

.field private static final ELLIPSIS_START:I = 0x3

.field private static final ELLIPSIS_UNDEFINED:I = -0x80000000

.field public static final INVALID_BLOCK_INDEX:I = -0x1

.field private static final PRIORITY:I = 0x80

.field private static final START:I = 0x0

.field private static final START_MASK:I = 0x1fffffff

.field private static final TAB:I = 0x0

.field private static final TAB_MASK:I = 0x20000000

.field private static final TOP:I = 0x1

.field private static final sLock:[Ljava/lang/Object;

.field private static sStaticLayout:Landroid/text/StaticLayout;


# instance fields
.field private mBase:Ljava/lang/CharSequence;

.field private mBlockEndLines:[I

.field private mBlockIndices:[I

.field private mBottomPadding:I

.field private mDisplay:Ljava/lang/CharSequence;

.field private mEllipsize:Z

.field private mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

.field private mEllipsizedWidth:I

.field private mIncludePad:Z

.field private mIndexFirstChangedBlock:I

.field private mInts:Landroid/text/PackedIntVector;

.field private mNumberOfBlocks:I

.field private mObjects:Landroid/text/PackedObjectVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/PackedObjectVector",
            "<",
            "Landroid/text/Layout$Directions;",
            ">;"
        }
    .end annotation
.end field

.field private mTopPadding:I

.field private mWatcher:Landroid/text/DynamicLayout$ChangeWatcher;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 723
    new-instance v0, Landroid/text/StaticLayout;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;)V

    sput-object v0, Landroid/text/DynamicLayout;->sStaticLayout:Landroid/text/StaticLayout;

    .line 725
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Landroid/text/DynamicLayout;->sLock:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .registers 17
    .param p1, "base"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "width"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "spacingmult"    # F
    .param p6, "spacingadd"    # F
    .param p7, "includepad"    # Z

    .prologue
    .line 50
    move-object v0, p0

    move-object v1, p1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .registers 20
    .param p1, "base"    # Ljava/lang/CharSequence;
    .param p2, "display"    # Ljava/lang/CharSequence;
    .param p3, "paint"    # Landroid/text/TextPaint;
    .param p4, "width"    # I
    .param p5, "align"    # Landroid/text/Layout$Alignment;
    .param p6, "spacingmult"    # F
    .param p7, "spacingadd"    # F
    .param p8, "includepad"    # Z

    .prologue
    .line 64
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v10}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V
    .registers 23
    .param p1, "base"    # Ljava/lang/CharSequence;
    .param p2, "display"    # Ljava/lang/CharSequence;
    .param p3, "paint"    # Landroid/text/TextPaint;
    .param p4, "width"    # I
    .param p5, "align"    # Landroid/text/Layout$Alignment;
    .param p6, "spacingmult"    # F
    .param p7, "spacingadd"    # F
    .param p8, "includepad"    # Z
    .param p9, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p10, "ellipsizedWidth"    # I

    .prologue
    .line 81
    sget-object v6, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;I)V

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;I)V
    .registers 31
    .param p1, "base"    # Ljava/lang/CharSequence;
    .param p2, "display"    # Ljava/lang/CharSequence;
    .param p3, "paint"    # Landroid/text/TextPaint;
    .param p4, "width"    # I
    .param p5, "align"    # Landroid/text/Layout$Alignment;
    .param p6, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p7, "spacingmult"    # F
    .param p8, "spacingadd"    # F
    .param p9, "includepad"    # Z
    .param p10, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p11, "ellipsizedWidth"    # I

    .prologue
    .line 100
    if-nez p10, :cond_f2

    move-object/from16 v3, p2

    :goto_4
    move-object/from16 v2, p0

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v2 .. v9}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V

    .line 107
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/DynamicLayout;->mBase:Ljava/lang/CharSequence;

    .line 108
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/DynamicLayout;->mDisplay:Ljava/lang/CharSequence;

    .line 110
    if-eqz p10, :cond_10a

    .line 111
    new-instance v2, Landroid/text/PackedIntVector;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Landroid/text/PackedIntVector;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    .line 112
    move/from16 v0, p11

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/DynamicLayout;->mEllipsizedWidth:I

    .line 113
    move-object/from16 v0, p10

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    .line 120
    :goto_39
    new-instance v2, Landroid/text/PackedObjectVector;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/text/PackedObjectVector;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/text/DynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    .line 122
    move/from16 v0, p9

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/text/DynamicLayout;->mIncludePad:Z

    .line 132
    if-eqz p10, :cond_62

    .line 133
    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    check-cast v13, Landroid/text/Layout$Ellipsizer;

    .line 135
    .local v13, "e":Landroid/text/Layout$Ellipsizer;
    move-object/from16 v0, p0

    iput-object v0, v13, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    .line 136
    move/from16 v0, p11

    iput v0, v13, Landroid/text/Layout$Ellipsizer;->mWidth:I

    .line 137
    move-object/from16 v0, p10

    iput-object v0, v13, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    .line 138
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/text/DynamicLayout;->mEllipsize:Z

    .line 147
    .end local v13    # "e":Landroid/text/Layout$Ellipsizer;
    :cond_62
    if-eqz p10, :cond_121

    .line 148
    const/4 v2, 0x5

    new-array v0, v2, [I

    move-object/from16 v18, v0

    .line 149
    .local v18, "start":[I
    const/4 v2, 0x3

    const/high16 v3, -0x80000000

    aput v3, v18, v2

    .line 154
    :goto_6e
    const/4 v2, 0x1

    new-array v12, v2, [Landroid/text/Layout$Directions;

    const/4 v2, 0x0

    sget-object v3, Landroid/text/DynamicLayout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    aput-object v3, v12, v2

    .line 156
    .local v12, "dirs":[Landroid/text/Layout$Directions;
    invoke-virtual/range {p3 .. p3}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v14

    .line 157
    .local v14, "fm":Landroid/graphics/Paint$FontMetricsInt;
    iget v10, v14, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 158
    .local v10, "asc":I
    iget v11, v14, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 160
    .local v11, "desc":I
    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    aput v3, v18, v2

    .line 161
    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v18, v2

    .line 162
    const/4 v2, 0x2

    aput v11, v18, v2

    .line 163
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Landroid/text/PackedIntVector;->insertAt(I[I)V

    .line 165
    const/4 v2, 0x1

    sub-int v3, v11, v10

    aput v3, v18, v2

    .line 166
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v3, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Landroid/text/PackedIntVector;->insertAt(I[I)V

    .line 168
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/DynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v12}, Landroid/text/PackedObjectVector;->insertAt(I[Ljava/lang/Object;)V

    .line 171
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/text/DynamicLayout;->reflow(Ljava/lang/CharSequence;III)V

    .line 173
    move-object/from16 v0, p1

    instance-of v2, v0, Landroid/text/Spannable;

    if-eqz v2, :cond_139

    .line 174
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/DynamicLayout;->mWatcher:Landroid/text/DynamicLayout$ChangeWatcher;

    if-nez v2, :cond_cf

    .line 175
    new-instance v2, Landroid/text/DynamicLayout$ChangeWatcher;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/text/DynamicLayout$ChangeWatcher;-><init>(Landroid/text/DynamicLayout;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/text/DynamicLayout;->mWatcher:Landroid/text/DynamicLayout$ChangeWatcher;

    :cond_cf
    move-object/from16 v16, p1

    .line 178
    check-cast v16, Landroid/text/Spannable;

    .line 179
    .local v16, "sp":Landroid/text/Spannable;
    const/4 v2, 0x0

    invoke-interface/range {v16 .. v16}, Landroid/text/Spannable;->length()I

    move-result v3

    const-class v4, Landroid/text/DynamicLayout$ChangeWatcher;

    move-object/from16 v0, v16

    invoke-interface {v0, v2, v3, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Landroid/text/DynamicLayout$ChangeWatcher;

    .line 180
    .local v17, "spans":[Landroid/text/DynamicLayout$ChangeWatcher;
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_e3
    move-object/from16 v0, v17

    array-length v2, v0

    if-ge v15, v2, :cond_128

    .line 181
    aget-object v2, v17, v15

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 180
    add-int/lit8 v15, v15, 0x1

    goto :goto_e3

    .line 100
    .end local v10    # "asc":I
    .end local v11    # "desc":I
    .end local v12    # "dirs":[Landroid/text/Layout$Directions;
    .end local v14    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .end local v15    # "i":I
    .end local v16    # "sp":Landroid/text/Spannable;
    .end local v17    # "spans":[Landroid/text/DynamicLayout$ChangeWatcher;
    .end local v18    # "start":[I
    :cond_f2
    move-object/from16 v0, p2

    instance-of v2, v0, Landroid/text/Spanned;

    if-eqz v2, :cond_101

    new-instance v3, Landroid/text/Layout$SpannedEllipsizer;

    move-object/from16 v0, p2

    invoke-direct {v3, v0}, Landroid/text/Layout$SpannedEllipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_101
    new-instance v3, Landroid/text/Layout$Ellipsizer;

    move-object/from16 v0, p2

    invoke-direct {v3, v0}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 115
    :cond_10a
    new-instance v2, Landroid/text/PackedIntVector;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Landroid/text/PackedIntVector;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    .line 116
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/DynamicLayout;->mEllipsizedWidth:I

    .line 117
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    goto/16 :goto_39

    .line 151
    :cond_121
    const/4 v2, 0x3

    new-array v0, v2, [I

    move-object/from16 v18, v0

    .restart local v18    # "start":[I
    goto/16 :goto_6e

    .line 183
    .restart local v10    # "asc":I
    .restart local v11    # "desc":I
    .restart local v12    # "dirs":[Landroid/text/Layout$Directions;
    .restart local v14    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .restart local v15    # "i":I
    .restart local v16    # "sp":Landroid/text/Spannable;
    .restart local v17    # "spans":[Landroid/text/DynamicLayout$ChangeWatcher;
    :cond_128
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/DynamicLayout;->mWatcher:Landroid/text/DynamicLayout$ChangeWatcher;

    const/4 v3, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const v5, 0x800012

    move-object/from16 v0, v16

    invoke-interface {v0, v2, v3, v4, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 187
    .end local v15    # "i":I
    .end local v16    # "sp":Landroid/text/Spannable;
    .end local v17    # "spans":[Landroid/text/DynamicLayout$ChangeWatcher;
    :cond_139
    return-void
.end method

.method static synthetic access$000(Landroid/text/DynamicLayout;Ljava/lang/CharSequence;III)V
    .registers 5
    .param p0, "x0"    # Landroid/text/DynamicLayout;
    .param p1, "x1"    # Ljava/lang/CharSequence;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/text/DynamicLayout;->reflow(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method private addBlockAtOffset(I)V
    .registers 6
    .param p1, "offset"    # I

    .prologue
    .line 401
    invoke-virtual {p0, p1}, Landroid/text/DynamicLayout;->getLineForOffset(I)I

    move-result v0

    .line 403
    .local v0, "line":I
    iget-object v2, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    if-nez v2, :cond_1c

    .line 405
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v2

    iput-object v2, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    .line 406
    iget-object v2, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    iget v3, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    aput v0, v2, v3

    .line 407
    iget v2, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    .line 416
    :cond_1b
    :goto_1b
    return-void

    .line 411
    :cond_1c
    iget-object v2, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    iget v3, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    add-int/lit8 v3, v3, -0x1

    aget v1, v2, v3

    .line 412
    .local v1, "previousBlockEndLine":I
    if-le v0, v1, :cond_1b

    .line 413
    iget-object v2, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    iget v3, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    invoke-static {v2, v3, v0}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v2

    iput-object v2, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    .line 414
    iget v2, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    goto :goto_1b
.end method

.method private createBlocks()V
    .registers 6

    .prologue
    .line 373
    const/16 v1, 0x190

    .line 374
    .local v1, "offset":I
    const/4 v3, 0x0

    iput v3, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    .line 375
    iget-object v2, p0, Landroid/text/DynamicLayout;->mDisplay:Ljava/lang/CharSequence;

    .line 378
    .local v2, "text":Ljava/lang/CharSequence;
    :goto_7
    const/16 v3, 0xa

    invoke-static {v2, v3, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v1

    .line 379
    if-gez v1, :cond_2b

    .line 380
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/text/DynamicLayout;->addBlockAtOffset(I)V

    .line 389
    iget-object v3, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    array-length v3, v3

    new-array v3, v3, [I

    iput-object v3, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    .line 390
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1e
    iget-object v3, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    array-length v3, v3

    if-ge v0, v3, :cond_31

    .line 391
    iget-object v3, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    const/4 v4, -0x1

    aput v4, v3, v0

    .line 390
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 383
    .end local v0    # "i":I
    :cond_2b
    invoke-direct {p0, v1}, Landroid/text/DynamicLayout;->addBlockAtOffset(I)V

    .line 384
    add-int/lit16 v1, v1, 0x190

    goto :goto_7

    .line 393
    .restart local v0    # "i":I
    :cond_31
    return-void
.end method

.method private reflow(Ljava/lang/CharSequence;III)V
    .registers 45
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "where"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    .line 190
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/DynamicLayout;->mBase:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    if-eq v0, v5, :cond_9

    .line 366
    :goto_8
    return-void

    .line 193
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/DynamicLayout;->mDisplay:Ljava/lang/CharSequence;

    .line 194
    .local v4, "text":Ljava/lang/CharSequence;
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v30

    .line 198
    .local v30, "len":I
    const/16 v5, 0xa

    add-int/lit8 v6, p2, -0x1

    invoke-static {v4, v5, v6}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v24

    .line 199
    .local v24, "find":I
    if-gez v24, :cond_8b

    .line 200
    const/16 v24, 0x0

    .line 205
    :goto_1d
    sub-int v20, p2, v24

    .line 206
    .local v20, "diff":I
    add-int p3, p3, v20

    .line 207
    add-int p4, p4, v20

    .line 208
    sub-int p2, p2, v20

    .line 213
    const/16 v5, 0xa

    add-int v6, p2, p4

    invoke-static {v4, v5, v6}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v31

    .line 214
    .local v31, "look":I
    if-gez v31, :cond_8e

    .line 215
    move/from16 v31, v30

    .line 219
    :goto_31
    add-int v5, p2, p4

    sub-int v18, v31, v5

    .line 220
    .local v18, "change":I
    add-int p3, p3, v18

    .line 221
    add-int p4, p4, v18

    .line 225
    instance-of v5, v4, Landroid/text/Spanned;

    if-eqz v5, :cond_93

    move-object/from16 v34, v4

    .line 226
    check-cast v34, Landroid/text/Spanned;

    .line 230
    .local v34, "sp":Landroid/text/Spanned;
    :cond_41
    const/16 v16, 0x0

    .line 232
    .local v16, "again":Z
    add-int v5, p2, p4

    const-class v6, Landroid/text/style/WrapTogetherSpan;

    move-object/from16 v0, v34

    move/from16 v1, p2

    invoke-interface {v0, v1, v5, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v25

    .line 235
    .local v25, "force":[Ljava/lang/Object;
    const/16 v27, 0x0

    .local v27, "i":I
    :goto_51
    move-object/from16 v0, v25

    array-length v5, v0

    move/from16 v0, v27

    if-ge v0, v5, :cond_91

    .line 236
    aget-object v5, v25, v27

    move-object/from16 v0, v34

    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v35

    .line 237
    .local v35, "st":I
    aget-object v5, v25, v27

    move-object/from16 v0, v34

    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v21

    .line 239
    .local v21, "en":I
    move/from16 v0, v35

    move/from16 v1, p2

    if-ge v0, v1, :cond_78

    .line 240
    const/16 v16, 0x1

    .line 242
    sub-int v20, p2, v35

    .line 243
    add-int p3, p3, v20

    .line 244
    add-int p4, p4, v20

    .line 245
    sub-int p2, p2, v20

    .line 248
    :cond_78
    add-int v5, p2, p4

    move/from16 v0, v21

    if-le v0, v5, :cond_88

    .line 249
    const/16 v16, 0x1

    .line 251
    add-int v5, p2, p4

    sub-int v20, v21, v5

    .line 252
    add-int p3, p3, v20

    .line 253
    add-int p4, p4, v20

    .line 235
    :cond_88
    add-int/lit8 v27, v27, 0x1

    goto :goto_51

    .line 202
    .end local v16    # "again":Z
    .end local v18    # "change":I
    .end local v20    # "diff":I
    .end local v21    # "en":I
    .end local v25    # "force":[Ljava/lang/Object;
    .end local v27    # "i":I
    .end local v31    # "look":I
    .end local v34    # "sp":Landroid/text/Spanned;
    .end local v35    # "st":I
    :cond_8b
    add-int/lit8 v24, v24, 0x1

    goto :goto_1d

    .line 217
    .restart local v20    # "diff":I
    .restart local v31    # "look":I
    :cond_8e
    add-int/lit8 v31, v31, 0x1

    goto :goto_31

    .line 256
    .restart local v16    # "again":Z
    .restart local v18    # "change":I
    .restart local v25    # "force":[Ljava/lang/Object;
    .restart local v27    # "i":I
    .restart local v34    # "sp":Landroid/text/Spanned;
    :cond_91
    if-nez v16, :cond_41

    .line 261
    .end local v16    # "again":Z
    .end local v25    # "force":[Ljava/lang/Object;
    .end local v27    # "i":I
    .end local v34    # "sp":Landroid/text/Spanned;
    :cond_93
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/DynamicLayout;->getLineForOffset(I)I

    move-result v36

    .line 262
    .local v36, "startline":I
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/text/DynamicLayout;->getLineTop(I)I

    move-result v37

    .line 264
    .local v37, "startv":I
    add-int v5, p2, p3

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/text/DynamicLayout;->getLineForOffset(I)I

    move-result v22

    .line 265
    .local v22, "endline":I
    add-int v5, p2, p4

    move/from16 v0, v30

    if-ne v5, v0, :cond_b5

    .line 266
    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getLineCount()I

    move-result v22

    .line 267
    :cond_b5
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/DynamicLayout;->getLineTop(I)I

    move-result v23

    .line 268
    .local v23, "endv":I
    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getLineCount()I

    move-result v5

    move/from16 v0, v22

    if-ne v0, v5, :cond_20a

    const/16 v29, 0x1

    .line 274
    .local v29, "islast":Z
    :goto_c7
    sget-object v6, Landroid/text/DynamicLayout;->sLock:[Ljava/lang/Object;

    monitor-enter v6

    .line 275
    :try_start_ca
    sget-object v3, Landroid/text/DynamicLayout;->sStaticLayout:Landroid/text/StaticLayout;

    .line 276
    .local v3, "reflowed":Landroid/text/StaticLayout;
    const/4 v5, 0x0

    sput-object v5, Landroid/text/DynamicLayout;->sStaticLayout:Landroid/text/StaticLayout;

    .line 277
    monitor-exit v6
    :try_end_d0
    .catchall {:try_start_ca .. :try_end_d0} :catchall_20e

    .line 279
    if-nez v3, :cond_211

    .line 280
    new-instance v3, Landroid/text/StaticLayout;

    .end local v3    # "reflowed":Landroid/text/StaticLayout;
    const/4 v5, 0x0

    invoke-direct {v3, v5}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;)V

    .line 285
    .restart local v3    # "reflowed":Landroid/text/StaticLayout;
    :goto_d8
    add-int v6, p2, p4

    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getWidth()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getSpacingMultiplier()F

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getSpacingAdd()F

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/DynamicLayout;->mEllipsizedWidth:I

    int-to-float v14, v5

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    move/from16 v5, p2

    invoke-virtual/range {v3 .. v15}, Landroid/text/StaticLayout;->generate(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/TextDirectionHeuristic;FFZZFLandroid/text/TextUtils$TruncateAt;)V

    .line 289
    invoke-virtual {v3}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v32

    .line 295
    .local v32, "n":I
    add-int v5, p2, p4

    move/from16 v0, v30

    if-eq v5, v0, :cond_114

    add-int/lit8 v5, v32, -0x1

    invoke-virtual {v3, v5}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v5

    add-int v6, p2, p4

    if-ne v5, v6, :cond_114

    .line 296
    add-int/lit8 v32, v32, -0x1

    .line 299
    :cond_114
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    sub-int v6, v22, v36

    move/from16 v0, v36

    invoke-virtual {v5, v0, v6}, Landroid/text/PackedIntVector;->deleteAt(II)V

    .line 300
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/DynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    sub-int v6, v22, v36

    move/from16 v0, v36

    invoke-virtual {v5, v0, v6}, Landroid/text/PackedObjectVector;->deleteAt(II)V

    .line 304
    move/from16 v0, v32

    invoke-virtual {v3, v0}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v26

    .line 305
    .local v26, "ht":I
    const/16 v39, 0x0

    .local v39, "toppad":I
    const/16 v17, 0x0

    .line 307
    .local v17, "botpad":I
    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/text/DynamicLayout;->mIncludePad:Z

    if-eqz v5, :cond_148

    if-nez v36, :cond_148

    .line 308
    invoke-virtual {v3}, Landroid/text/StaticLayout;->getTopPadding()I

    move-result v39

    .line 309
    move/from16 v0, v39

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/DynamicLayout;->mTopPadding:I

    .line 310
    sub-int v26, v26, v39

    .line 312
    :cond_148
    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/text/DynamicLayout;->mIncludePad:Z

    if-eqz v5, :cond_15c

    if-eqz v29, :cond_15c

    .line 313
    invoke-virtual {v3}, Landroid/text/StaticLayout;->getBottomPadding()I

    move-result v17

    .line 314
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/DynamicLayout;->mBottomPadding:I

    .line 315
    add-int v26, v26, v17

    .line 318
    :cond_15c
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v6, 0x0

    sub-int v7, p4, p3

    move/from16 v0, v36

    invoke-virtual {v5, v0, v6, v7}, Landroid/text/PackedIntVector;->adjustValuesBelow(III)V

    .line 319
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v6, 0x1

    sub-int v7, v37, v23

    add-int v7, v7, v26

    move/from16 v0, v36

    invoke-virtual {v5, v0, v6, v7}, Landroid/text/PackedIntVector;->adjustValuesBelow(III)V

    .line 325
    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/text/DynamicLayout;->mEllipsize:Z

    if-eqz v5, :cond_216

    .line 326
    const/4 v5, 0x5

    new-array v0, v5, [I

    move-object/from16 v28, v0

    .line 327
    .local v28, "ints":[I
    const/4 v5, 0x3

    const/high16 v6, -0x80000000

    aput v6, v28, v5

    .line 332
    :goto_186
    const/4 v5, 0x1

    new-array v0, v5, [Landroid/text/Layout$Directions;

    move-object/from16 v33, v0

    .line 334
    .local v33, "objects":[Landroid/text/Layout$Directions;
    const/16 v27, 0x0

    .restart local v27    # "i":I
    :goto_18d
    move/from16 v0, v27

    move/from16 v1, v32

    if-ge v0, v1, :cond_21f

    .line 335
    const/4 v6, 0x0

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v5

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Landroid/text/StaticLayout;->getParagraphDirection(I)I

    move-result v7

    shl-int/lit8 v7, v7, 0x1e

    or-int/2addr v7, v5

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Landroid/text/StaticLayout;->getLineContainsTab(I)Z

    move-result v5

    if-eqz v5, :cond_21d

    const/high16 v5, 0x20000000

    :goto_1ad
    or-int/2addr v5, v7

    aput v5, v28, v6

    .line 339
    move/from16 v0, v27

    invoke-virtual {v3, v0}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v5

    add-int v38, v5, v37

    .line 340
    .local v38, "top":I
    if-lez v27, :cond_1bc

    .line 341
    sub-int v38, v38, v39

    .line 342
    :cond_1bc
    const/4 v5, 0x1

    aput v38, v28, v5

    .line 344
    move/from16 v0, v27

    invoke-virtual {v3, v0}, Landroid/text/StaticLayout;->getLineDescent(I)I

    move-result v19

    .line 345
    .local v19, "desc":I
    add-int/lit8 v5, v32, -0x1

    move/from16 v0, v27

    if-ne v0, v5, :cond_1cd

    .line 346
    add-int v19, v19, v17

    .line 348
    :cond_1cd
    const/4 v5, 0x2

    aput v19, v28, v5

    .line 349
    const/4 v5, 0x0

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Landroid/text/StaticLayout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v6

    aput-object v6, v33, v5

    .line 351
    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/text/DynamicLayout;->mEllipsize:Z

    if-eqz v5, :cond_1f1

    .line 352
    const/4 v5, 0x3

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Landroid/text/StaticLayout;->getEllipsisStart(I)I

    move-result v6

    aput v6, v28, v5

    .line 353
    const/4 v5, 0x4

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Landroid/text/StaticLayout;->getEllipsisCount(I)I

    move-result v6

    aput v6, v28, v5

    .line 356
    :cond_1f1
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    add-int v6, v36, v27

    move-object/from16 v0, v28

    invoke-virtual {v5, v6, v0}, Landroid/text/PackedIntVector;->insertAt(I[I)V

    .line 357
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/DynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    add-int v6, v36, v27

    move-object/from16 v0, v33

    invoke-virtual {v5, v6, v0}, Landroid/text/PackedObjectVector;->insertAt(I[Ljava/lang/Object;)V

    .line 334
    add-int/lit8 v27, v27, 0x1

    goto :goto_18d

    .line 268
    .end local v3    # "reflowed":Landroid/text/StaticLayout;
    .end local v17    # "botpad":I
    .end local v19    # "desc":I
    .end local v26    # "ht":I
    .end local v27    # "i":I
    .end local v28    # "ints":[I
    .end local v29    # "islast":Z
    .end local v32    # "n":I
    .end local v33    # "objects":[Landroid/text/Layout$Directions;
    .end local v38    # "top":I
    .end local v39    # "toppad":I
    :cond_20a
    const/16 v29, 0x0

    goto/16 :goto_c7

    .line 277
    .restart local v29    # "islast":Z
    :catchall_20e
    move-exception v5

    :try_start_20f
    monitor-exit v6
    :try_end_210
    .catchall {:try_start_20f .. :try_end_210} :catchall_20e

    throw v5

    .line 282
    .restart local v3    # "reflowed":Landroid/text/StaticLayout;
    :cond_211
    invoke-virtual {v3}, Landroid/text/StaticLayout;->prepare()V

    goto/16 :goto_d8

    .line 329
    .restart local v17    # "botpad":I
    .restart local v26    # "ht":I
    .restart local v32    # "n":I
    .restart local v39    # "toppad":I
    :cond_216
    const/4 v5, 0x3

    new-array v0, v5, [I

    move-object/from16 v28, v0

    .restart local v28    # "ints":[I
    goto/16 :goto_186

    .line 335
    .restart local v27    # "i":I
    .restart local v33    # "objects":[Landroid/text/Layout$Directions;
    :cond_21d
    const/4 v5, 0x0

    goto :goto_1ad

    .line 360
    :cond_21f
    add-int/lit8 v5, v22, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v36

    move/from16 v2, v32

    invoke-virtual {v0, v1, v5, v2}, Landroid/text/DynamicLayout;->updateBlocks(III)V

    .line 362
    sget-object v6, Landroid/text/DynamicLayout;->sLock:[Ljava/lang/Object;

    monitor-enter v6

    .line 363
    :try_start_22d
    sput-object v3, Landroid/text/DynamicLayout;->sStaticLayout:Landroid/text/StaticLayout;

    .line 364
    invoke-virtual {v3}, Landroid/text/StaticLayout;->finish()V

    .line 365
    monitor-exit v6

    goto/16 :goto_8

    :catchall_235
    move-exception v5

    monitor-exit v6
    :try_end_237
    .catchall {:try_start_22d .. :try_end_237} :catchall_235

    throw v5
.end method


# virtual methods
.method public getBlockEndLines()[I
    .registers 2

    .prologue
    .line 549
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    return-object v0
.end method

.method public getBlockIndices()[I
    .registers 2

    .prologue
    .line 556
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    return-object v0
.end method

.method public getBottomPadding()I
    .registers 2

    .prologue
    .line 622
    iget v0, p0, Landroid/text/DynamicLayout;->mBottomPadding:I

    return v0
.end method

.method public getEllipsisCount(I)I
    .registers 4
    .param p1, "line"    # I

    .prologue
    .line 687
    iget-object v0, p0, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    if-nez v0, :cond_6

    .line 688
    const/4 v0, 0x0

    .line 691
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    goto :goto_5
.end method

.method public getEllipsisStart(I)I
    .registers 4
    .param p1, "line"    # I

    .prologue
    .line 678
    iget-object v0, p0, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    if-nez v0, :cond_6

    .line 679
    const/4 v0, 0x0

    .line 682
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    goto :goto_5
.end method

.method public getEllipsizedWidth()I
    .registers 2

    .prologue
    .line 627
    iget v0, p0, Landroid/text/DynamicLayout;->mEllipsizedWidth:I

    return v0
.end method

.method public getIndexFirstChangedBlock()I
    .registers 2

    .prologue
    .line 570
    iget v0, p0, Landroid/text/DynamicLayout;->mIndexFirstChangedBlock:I

    return v0
.end method

.method public getLineContainsTab(I)Z
    .registers 5
    .param p1, "line"    # I

    .prologue
    const/4 v0, 0x0

    .line 602
    iget-object v1, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    invoke-virtual {v1, p1, v0}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v1

    const/high16 v2, 0x20000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_d

    const/4 v0, 0x1

    :cond_d
    return v0
.end method

.method public getLineCount()I
    .registers 2

    .prologue
    .line 582
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    invoke-virtual {v0}, Landroid/text/PackedIntVector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getLineDescent(I)I
    .registers 4
    .param p1, "line"    # I

    .prologue
    .line 592
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    return v0
.end method

.method public final getLineDirections(I)Landroid/text/Layout$Directions;
    .registers 4
    .param p1, "line"    # I

    .prologue
    .line 612
    iget-object v0, p0, Landroid/text/DynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedObjectVector;->getValue(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/Layout$Directions;

    return-object v0
.end method

.method public getLineStart(I)I
    .registers 4
    .param p1, "line"    # I

    .prologue
    .line 597
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    const v1, 0x1fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getLineTop(I)I
    .registers 4
    .param p1, "line"    # I

    .prologue
    .line 587
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getNumberOfBlocks()I
    .registers 2

    .prologue
    .line 563
    iget v0, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    return v0
.end method

.method public getParagraphDirection(I)I
    .registers 4
    .param p1, "line"    # I

    .prologue
    .line 607
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    shr-int/lit8 v0, v0, 0x1e

    return v0
.end method

.method public getTopPadding()I
    .registers 2

    .prologue
    .line 617
    iget v0, p0, Landroid/text/DynamicLayout;->mTopPadding:I

    return v0
.end method

.method setBlocksDataForTest([I[II)V
    .registers 7
    .param p1, "blockEndLines"    # [I
    .param p2, "blockIndices"    # [I
    .param p3, "numberOfBlocks"    # I

    .prologue
    const/4 v2, 0x0

    .line 538
    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    .line 539
    array-length v0, p2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    .line 540
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([II[III)V

    .line 541
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([II[III)V

    .line 542
    iput p3, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    .line 543
    return-void
.end method

.method public setIndexFirstChangedBlock(I)V
    .registers 2
    .param p1, "i"    # I

    .prologue
    .line 577
    iput p1, p0, Landroid/text/DynamicLayout;->mIndexFirstChangedBlock:I

    .line 578
    return-void
.end method

.method updateBlocks(III)V
    .registers 28
    .param p1, "startLine"    # I
    .param p2, "endLine"    # I
    .param p3, "newLineCount"    # I

    .prologue
    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v19, v0

    if-nez v19, :cond_c

    .line 439
    invoke-direct/range {p0 .. p0}, Landroid/text/DynamicLayout;->createBlocks()V

    .line 531
    :cond_b
    :goto_b
    return-void

    .line 443
    :cond_c
    const/4 v11, -0x1

    .line 444
    .local v11, "firstBlock":I
    const/4 v13, -0x1

    .line 445
    .local v13, "lastBlock":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v12, v0, :cond_28

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v19, v0

    aget v19, v19, v12

    move/from16 v0, v19

    move/from16 v1, p1

    if-lt v0, v1, :cond_a7

    .line 447
    move v11, v12

    .line 451
    :cond_28
    move v12, v11

    :goto_29
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v12, v0, :cond_42

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v19, v0

    aget v19, v19, v12

    move/from16 v0, v19

    move/from16 v1, p2

    if-lt v0, v1, :cond_ab

    .line 453
    move v13, v12

    .line 457
    :cond_42
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v19, v0

    aget v14, v19, v13

    .line 459
    .local v14, "lastBlockEndLine":I
    if-nez v11, :cond_af

    const/16 v19, 0x0

    :goto_4e
    move/from16 v0, p1

    move/from16 v1, v19

    if-le v0, v1, :cond_bc

    const/4 v9, 0x1

    .line 461
    .local v9, "createBlockBefore":Z
    :goto_55
    if-lez p3, :cond_be

    const/4 v7, 0x1

    .line 462
    .local v7, "createBlock":Z
    :goto_58
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v19, v0

    aget v19, v19, v13

    move/from16 v0, p2

    move/from16 v1, v19

    if-ge v0, v1, :cond_c0

    const/4 v8, 0x1

    .line 464
    .local v8, "createBlockAfter":Z
    :goto_67
    const/16 v17, 0x0

    .line 465
    .local v17, "numAddedBlocks":I
    if-eqz v9, :cond_6d

    add-int/lit8 v17, v17, 0x1

    .line 466
    :cond_6d
    if-eqz v7, :cond_71

    add-int/lit8 v17, v17, 0x1

    .line 467
    :cond_71
    if-eqz v8, :cond_75

    add-int/lit8 v17, v17, 0x1

    .line 469
    :cond_75
    sub-int v19, v13, v11

    add-int/lit8 v18, v19, 0x1

    .line 470
    .local v18, "numRemovedBlocks":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    move/from16 v19, v0

    add-int v19, v19, v17

    sub-int v16, v19, v18

    .line 472
    .local v16, "newNumberOfBlocks":I
    if-nez v16, :cond_c2

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    aput v21, v19, v20

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, -0x1

    aput v21, v19, v20

    .line 476
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    goto/16 :goto_b

    .line 445
    .end local v7    # "createBlock":Z
    .end local v8    # "createBlockAfter":Z
    .end local v9    # "createBlockBefore":Z
    .end local v14    # "lastBlockEndLine":I
    .end local v16    # "newNumberOfBlocks":I
    .end local v17    # "numAddedBlocks":I
    .end local v18    # "numRemovedBlocks":I
    :cond_a7
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_f

    .line 451
    :cond_ab
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_29

    .line 459
    .restart local v14    # "lastBlockEndLine":I
    :cond_af
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v19, v0

    add-int/lit8 v20, v11, -0x1

    aget v19, v19, v20

    add-int/lit8 v19, v19, 0x1

    goto :goto_4e

    :cond_bc
    const/4 v9, 0x0

    goto :goto_55

    .line 461
    .restart local v9    # "createBlockBefore":Z
    :cond_be
    const/4 v7, 0x0

    goto :goto_58

    .line 462
    .restart local v7    # "createBlock":Z
    :cond_c0
    const/4 v8, 0x0

    goto :goto_67

    .line 480
    .restart local v8    # "createBlockAfter":Z
    .restart local v16    # "newNumberOfBlocks":I
    .restart local v17    # "numAddedBlocks":I
    .restart local v18    # "numRemovedBlocks":I
    :cond_c2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v16

    move/from16 v1, v19

    if-le v0, v1, :cond_189

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v19

    invoke-static/range {v19 .. v19}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v4

    .line 483
    .local v4, "blockEndLines":[I
    array-length v0, v4

    move/from16 v19, v0

    move/from16 v0, v19

    new-array v6, v0, [I

    .line 484
    .local v6, "blockIndices":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v4, v2, v11}, Ljava/lang/System;->arraycopy([II[III)V

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v6, v2, v11}, Ljava/lang/System;->arraycopy([II[III)V

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v19, v0

    add-int/lit8 v20, v13, 0x1

    add-int v21, v11, v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    move/from16 v22, v0

    sub-int v22, v22, v13

    add-int/lit8 v22, v22, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-static {v0, v1, v4, v2, v3}, Ljava/lang/System;->arraycopy([II[III)V

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    move-object/from16 v19, v0

    add-int/lit8 v20, v13, 0x1

    add-int v21, v11, v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    move/from16 v22, v0

    sub-int v22, v22, v13

    add-int/lit8 v22, v22, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-static {v0, v1, v6, v2, v3}, Ljava/lang/System;->arraycopy([II[III)V

    .line 490
    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    .line 491
    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    .line 499
    .end local v4    # "blockEndLines":[I
    .end local v6    # "blockIndices":[I
    :goto_15f
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    .line 501
    sub-int v19, p2, p1

    add-int/lit8 v19, v19, 0x1

    sub-int v10, p3, v19

    .line 502
    .local v10, "deltaLines":I
    if-eqz v10, :cond_1c4

    .line 505
    add-int v15, v11, v17

    .line 506
    .local v15, "newFirstChangedBlock":I
    move v12, v15

    :goto_170
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v12, v0, :cond_1c8

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v19, v0

    aget v20, v19, v12

    add-int v20, v20, v10

    aput v20, v19, v12

    .line 506
    add-int/lit8 v12, v12, 0x1

    goto :goto_170

    .line 493
    .end local v10    # "deltaLines":I
    .end local v15    # "newFirstChangedBlock":I
    :cond_189
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v19, v0

    add-int/lit8 v20, v13, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v21, v0

    add-int v22, v11, v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    move/from16 v23, v0

    sub-int v23, v23, v13

    add-int/lit8 v23, v23, -0x1

    invoke-static/range {v19 .. v23}, Ljava/lang/System;->arraycopy([II[III)V

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    move-object/from16 v19, v0

    add-int/lit8 v20, v13, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    move-object/from16 v21, v0

    add-int v22, v11, v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    move/from16 v23, v0

    sub-int v23, v23, v13

    add-int/lit8 v23, v23, -0x1

    invoke-static/range {v19 .. v23}, Ljava/lang/System;->arraycopy([II[III)V

    goto :goto_15f

    .line 510
    .restart local v10    # "deltaLines":I
    :cond_1c4
    move-object/from16 v0, p0

    iget v15, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    .line 512
    .restart local v15    # "newFirstChangedBlock":I
    :cond_1c8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/DynamicLayout;->mIndexFirstChangedBlock:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/DynamicLayout;->mIndexFirstChangedBlock:I

    .line 514
    move v5, v11

    .line 515
    .local v5, "blockIndex":I
    if-eqz v9, :cond_1f3

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v19, v0

    add-int/lit8 v20, p1, -0x1

    aput v20, v19, v5

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    move-object/from16 v19, v0

    const/16 v20, -0x1

    aput v20, v19, v5

    .line 518
    add-int/lit8 v5, v5, 0x1

    .line 521
    :cond_1f3
    if-eqz v7, :cond_20d

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v19, v0

    add-int v20, p1, p3

    add-int/lit8 v20, v20, -0x1

    aput v20, v19, v5

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    move-object/from16 v19, v0

    const/16 v20, -0x1

    aput v20, v19, v5

    .line 524
    add-int/lit8 v5, v5, 0x1

    .line 527
    :cond_20d
    if-eqz v8, :cond_b

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v19, v0

    add-int v20, v14, v10

    aput v20, v19, v5

    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    move-object/from16 v19, v0

    const/16 v20, -0x1

    aput v20, v19, v5

    goto/16 :goto_b
.end method
