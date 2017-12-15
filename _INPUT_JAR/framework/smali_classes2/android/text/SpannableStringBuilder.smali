.class public Landroid/text/SpannableStringBuilder;
.super Ljava/lang/Object;
.source "SpannableStringBuilder.java"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Landroid/text/GetChars;
.implements Landroid/text/Spannable;
.implements Landroid/text/Editable;
.implements Ljava/lang/Appendable;
.implements Landroid/text/GraphicsOperations;


# static fields
.field private static final END_MASK:I = 0xf

.field private static final MARK:I = 0x1

.field private static final NO_FILTERS:[Landroid/text/InputFilter;

.field private static final PARAGRAPH:I = 0x3

.field private static final POINT:I = 0x2

.field private static final SPAN_END_AT_END:I = 0x8000

.field private static final SPAN_END_AT_START:I = 0x4000

.field private static final SPAN_START_AT_END:I = 0x2000

.field private static final SPAN_START_AT_START:I = 0x1000

.field private static final SPAN_START_END_MASK:I = 0xf000

.field private static final START_MASK:I = 0xf0

.field private static final START_SHIFT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "SpannableStringBuilder"


# instance fields
.field private mFilters:[Landroid/text/InputFilter;

.field private mGapLength:I

.field private mGapStart:I

.field private mSpanCount:I

.field private mSpanCountBeforeAdd:I

.field private mSpanEnds:[I

.field private mSpanFlags:[I

.field private mSpanStarts:[I

.field private mSpans:[Ljava/lang/Object;

.field private mText:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1346
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/text/InputFilter;

    sput-object v0, Landroid/text/SpannableStringBuilder;->NO_FILTERS:[Landroid/text/InputFilter;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 40
    const-string v0, ""

    invoke-direct {p0, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;II)V
    .registers 14
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1347
    sget-object v0, Landroid/text/SpannableStringBuilder;->NO_FILTERS:[Landroid/text/InputFilter;

    iput-object v0, p0, Landroid/text/SpannableStringBuilder;->mFilters:[Landroid/text/InputFilter;

    .line 56
    sub-int v9, p3, p2

    .line 58
    .local v9, "srclen":I
    if-gez v9, :cond_12

    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/StringIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 60
    :cond_12
    invoke-static {v9}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedCharArray(I)[C

    move-result-object v0

    iput-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    .line 61
    iput v9, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    .line 62
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    array-length v0, v0

    sub-int/2addr v0, v9

    iput v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    .line 64
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    invoke-static {p1, p2, p3, v0, v1}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 66
    iput v1, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 67
    sget-object v0, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    .line 68
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    .line 69
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    .line 70
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    .line 72
    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_84

    move-object v7, p1

    .line 73
    check-cast v7, Landroid/text/Spanned;

    .line 74
    .local v7, "sp":Landroid/text/Spanned;
    const-class v0, Ljava/lang/Object;

    invoke-interface {v7, p2, p3, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    .line 76
    .local v8, "spans":[Ljava/lang/Object;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_49
    array-length v0, v8

    if-ge v6, v0, :cond_84

    .line 77
    aget-object v0, v8, v6

    instance-of v0, v0, Landroid/text/NoCopySpan;

    if-eqz v0, :cond_55

    .line 76
    :goto_52
    add-int/lit8 v6, v6, 0x1

    goto :goto_49

    .line 81
    :cond_55
    aget-object v0, v8, v6

    invoke-interface {v7, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    sub-int v3, v0, p2

    .line 82
    .local v3, "st":I
    aget-object v0, v8, v6

    invoke-interface {v7, v0}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    sub-int v4, v0, p2

    .line 83
    .local v4, "en":I
    aget-object v0, v8, v6

    invoke-interface {v7, v0}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v5

    .line 85
    .local v5, "fl":I
    if-gez v3, :cond_6e

    .line 86
    const/4 v3, 0x0

    .line 87
    :cond_6e
    sub-int v0, p3, p2

    if-le v3, v0, :cond_74

    .line 88
    sub-int v3, p3, p2

    .line 90
    :cond_74
    if-gez v4, :cond_77

    .line 91
    const/4 v4, 0x0

    .line 92
    :cond_77
    sub-int v0, p3, p2

    if-le v4, v0, :cond_7d

    .line 93
    sub-int v4, p3, p2

    .line 95
    :cond_7d
    aget-object v2, v8, v6

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;III)V

    goto :goto_52

    .line 98
    .end local v3    # "st":I
    .end local v4    # "en":I
    .end local v5    # "fl":I
    .end local v6    # "i":I
    .end local v7    # "sp":Landroid/text/Spanned;
    .end local v8    # "spans":[Ljava/lang/Object;
    :cond_84
    return-void
.end method

.method private change(IILjava/lang/CharSequence;II)V
    .registers 44
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "cs"    # Ljava/lang/CharSequence;
    .param p4, "csStart"    # I
    .param p5, "csEnd"    # I

    .prologue
    .line 284
    sub-int v33, p2, p1

    .line 285
    .local v33, "replacedLength":I
    sub-int v34, p5, p4

    .line 286
    .local v34, "replacementLength":I
    sub-int v12, v34, v33

    .line 288
    .local v12, "nbNewChars":I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    add-int/lit8 v30, v4, -0x1

    .local v30, "i":I
    :goto_c
    if-ltz v30, :cond_d9

    .line 289
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v7, v4, v30

    .line 290
    .local v7, "spanStart":I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v7, v4, :cond_1f

    .line 291
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v7, v4

    .line 293
    :cond_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v8, v4, v30

    .line 294
    .local v8, "spanEnd":I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v8, v4, :cond_30

    .line 295
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v8, v4

    .line 297
    :cond_30
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v4, v4, v30

    and-int/lit8 v4, v4, 0x33

    const/16 v5, 0x33

    if-ne v4, v5, :cond_9a

    .line 298
    move/from16 v32, v7

    .line 299
    .local v32, "ost":I
    move/from16 v31, v8

    .line 300
    .local v31, "oen":I
    invoke-virtual/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v27

    .line 302
    .local v27, "clen":I
    move/from16 v0, p1

    if-le v7, v0, :cond_62

    move/from16 v0, p2

    if-gt v7, v0, :cond_62

    .line 303
    move/from16 v7, p2

    :goto_4e
    move/from16 v0, v27

    if-ge v7, v0, :cond_62

    .line 304
    move/from16 v0, p2

    if-le v7, v0, :cond_be

    add-int/lit8 v4, v7, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_be

    .line 308
    :cond_62
    move/from16 v0, p1

    if-le v8, v0, :cond_80

    move/from16 v0, p2

    if-gt v8, v0, :cond_80

    .line 309
    move/from16 v8, p2

    :goto_6c
    move/from16 v0, v27

    if-ge v8, v0, :cond_80

    .line 310
    move/from16 v0, p2

    if-le v8, v0, :cond_c1

    add-int/lit8 v4, v8, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_c1

    .line 314
    :cond_80
    move/from16 v0, v32

    if-ne v7, v0, :cond_88

    move/from16 v0, v31

    if-eq v8, v0, :cond_9a

    .line 315
    :cond_88
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v6, v4, v30

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v9, v4, v30

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;III)V

    .line 318
    .end local v27    # "clen":I
    .end local v31    # "oen":I
    .end local v32    # "ost":I
    :cond_9a
    const/16 v29, 0x0

    .line 319
    .local v29, "flags":I
    move/from16 v0, p1

    if-ne v7, v0, :cond_c4

    move/from16 v0, v29

    or-int/lit16 v0, v0, 0x1000

    move/from16 v29, v0

    .line 321
    :cond_a6
    :goto_a6
    move/from16 v0, p1

    if-ne v8, v0, :cond_cf

    move/from16 v0, v29

    or-int/lit16 v0, v0, 0x4000

    move/from16 v29, v0

    .line 323
    :cond_b0
    :goto_b0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v5, v4, v30

    or-int v5, v5, v29

    aput v5, v4, v30

    .line 288
    add-int/lit8 v30, v30, -0x1

    goto/16 :goto_c

    .line 303
    .end local v29    # "flags":I
    .restart local v27    # "clen":I
    .restart local v31    # "oen":I
    .restart local v32    # "ost":I
    :cond_be
    add-int/lit8 v7, v7, 0x1

    goto :goto_4e

    .line 309
    :cond_c1
    add-int/lit8 v8, v8, 0x1

    goto :goto_6c

    .line 320
    .end local v27    # "clen":I
    .end local v31    # "oen":I
    .end local v32    # "ost":I
    .restart local v29    # "flags":I
    :cond_c4
    add-int v4, p2, v12

    if-ne v7, v4, :cond_a6

    move/from16 v0, v29

    or-int/lit16 v0, v0, 0x2000

    move/from16 v29, v0

    goto :goto_a6

    .line 322
    :cond_cf
    add-int v4, p2, v12

    if-ne v8, v4, :cond_b0

    const v4, 0x8000

    or-int v29, v29, v4

    goto :goto_b0

    .line 326
    .end local v7    # "spanStart":I
    .end local v8    # "spanEnd":I
    .end local v29    # "flags":I
    :cond_d9
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;->moveGapTo(I)V

    .line 328
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    if-lt v12, v4, :cond_f6

    .line 329
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mText:[C

    array-length v4, v4

    add-int/2addr v4, v12

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/text/SpannableStringBuilder;->resizeFor(I)V

    .line 332
    :cond_f6
    if-nez v34, :cond_167

    const/4 v15, 0x1

    .line 335
    .local v15, "textIsRemoved":Z
    :goto_f9
    if-lez v33, :cond_16c

    .line 340
    const/16 v30, 0x0

    .line 341
    :goto_fd
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    move/from16 v0, v30

    if-ge v0, v4, :cond_16c

    .line 342
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v4, v4, v30

    and-int/lit8 v4, v4, 0x21

    const/16 v5, 0x21

    if-ne v4, v5, :cond_169

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v4, v4, v30

    move/from16 v0, p1

    if-lt v4, v0, :cond_169

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v4, v4, v30

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_169

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v4, v4, v30

    move/from16 v0, p1

    if-lt v4, v0, :cond_169

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v4, v4, v30

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_169

    if-nez v15, :cond_15f

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v4, v4, v30

    move/from16 v0, p1

    if-gt v4, v0, :cond_15f

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v4, v4, v30

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-ge v4, v5, :cond_169

    .line 348
    :cond_15f
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;->removeSpan(I)V

    goto :goto_fd

    .line 332
    .end local v15    # "textIsRemoved":Z
    :cond_167
    const/4 v15, 0x0

    goto :goto_f9

    .line 352
    .restart local v15    # "textIsRemoved":Z
    :cond_169
    add-int/lit8 v30, v30, 0x1

    goto :goto_fd

    .line 356
    :cond_16c
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    add-int/2addr v4, v12

    move-object/from16 v0, p0

    iput v4, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    .line 357
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v4, v12

    move-object/from16 v0, p0

    iput v4, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    .line 359
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    const/4 v5, 0x1

    if-ge v4, v5, :cond_18f

    .line 360
    new-instance v4, Ljava/lang/Exception;

    const-string v5, "mGapLength < 1"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 362
    :cond_18f
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mText:[C

    move-object/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p1

    invoke-static {v0, v1, v2, v4, v3}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 364
    if-lez v33, :cond_200

    .line 365
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/SpannableStringBuilder;->mText:[C

    array-length v5, v5

    if-ne v4, v5, :cond_1fe

    const/4 v14, 0x1

    .line 367
    .local v14, "atEnd":Z
    :goto_1b1
    const/16 v30, 0x0

    :goto_1b3
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    move/from16 v0, v30

    if-ge v0, v4, :cond_200

    .line 368
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v4, v4, v30

    and-int/lit16 v4, v4, 0xf0

    shr-int/lit8 v13, v4, 0x4

    .line 369
    .local v13, "startFlag":I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v10, v5, v30

    move-object/from16 v9, p0

    move/from16 v11, p1

    invoke-direct/range {v9 .. v15}, Landroid/text/SpannableStringBuilder;->updatedIntervalBound(IIIIZZ)I

    move-result v5

    aput v5, v4, v30

    .line 372
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v4, v4, v30

    and-int/lit8 v20, v4, 0xf

    .line 373
    .local v20, "endFlag":I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v17, v5, v30

    move-object/from16 v16, p0

    move/from16 v18, p1

    move/from16 v19, v12

    move/from16 v21, v14

    move/from16 v22, v15

    invoke-direct/range {v16 .. v22}, Landroid/text/SpannableStringBuilder;->updatedIntervalBound(IIIIZZ)I

    move-result v5

    aput v5, v4, v30

    .line 367
    add-int/lit8 v30, v30, 0x1

    goto :goto_1b3

    .line 365
    .end local v13    # "startFlag":I
    .end local v14    # "atEnd":Z
    .end local v20    # "endFlag":I
    :cond_1fe
    const/4 v14, 0x0

    goto :goto_1b1

    .line 378
    :cond_200
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    move-object/from16 v0, p0

    iput v4, v0, Landroid/text/SpannableStringBuilder;->mSpanCountBeforeAdd:I

    .line 380
    move-object/from16 v0, p3

    instance-of v4, v0, Landroid/text/Spanned;

    if-eqz v4, :cond_26d

    move-object/from16 v35, p3

    .line 381
    check-cast v35, Landroid/text/Spanned;

    .line 382
    .local v35, "sp":Landroid/text/Spanned;
    const-class v4, Ljava/lang/Object;

    move-object/from16 v0, v35

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-interface {v0, v1, v2, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v36

    .line 384
    .local v36, "spans":[Ljava/lang/Object;
    const/16 v30, 0x0

    :goto_220
    move-object/from16 v0, v36

    array-length v4, v0

    move/from16 v0, v30

    if-ge v0, v4, :cond_26d

    .line 385
    aget-object v4, v36, v30

    move-object/from16 v0, v35

    invoke-interface {v0, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v37

    .line 386
    .local v37, "st":I
    aget-object v4, v36, v30

    move-object/from16 v0, v35

    invoke-interface {v0, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v28

    .line 388
    .local v28, "en":I
    move/from16 v0, v37

    move/from16 v1, p4

    if-ge v0, v1, :cond_23f

    move/from16 v37, p4

    .line 389
    :cond_23f
    move/from16 v0, v28

    move/from16 v1, p5

    if-le v0, v1, :cond_247

    move/from16 v28, p5

    .line 392
    :cond_247
    aget-object v4, v36, v30

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_26a

    .line 393
    const/16 v22, 0x0

    aget-object v23, v36, v30

    sub-int v4, v37, p4

    add-int v24, v4, p1

    sub-int v4, v28, p4

    add-int v25, v4, p1

    aget-object v4, v36, v30

    move-object/from16 v0, v35

    invoke-interface {v0, v4}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v26

    move-object/from16 v21, p0

    invoke-direct/range {v21 .. v26}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;III)V

    .line 384
    :cond_26a
    add-int/lit8 v30, v30, 0x1

    goto :goto_220

    .line 398
    .end local v28    # "en":I
    .end local v35    # "sp":Landroid/text/Spanned;
    .end local v36    # "spans":[Ljava/lang/Object;
    .end local v37    # "st":I
    :cond_26d
    return-void
.end method

.method private checkRange(Ljava/lang/String;II)V
    .registers 8
    .param p1, "operation"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 1014
    if-ge p3, p2, :cond_29

    .line 1015
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2, p3}, Landroid/text/SpannableStringBuilder;->region(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has end before start"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1019
    :cond_29
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 1021
    .local v0, "len":I
    if-gt p2, v0, :cond_31

    if-le p3, v0, :cond_5c

    .line 1022
    :cond_31
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2, p3}, Landroid/text/SpannableStringBuilder;->region(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ends beyond length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1026
    :cond_5c
    if-ltz p2, :cond_60

    if-gez p3, :cond_87

    .line 1027
    :cond_60
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2, p3}, Landroid/text/SpannableStringBuilder;->region(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " starts before 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1030
    :cond_87
    return-void
.end method

.method private static hasNonExclusiveExclusiveSpanAt(Ljava/lang/CharSequence;I)Z
    .registers 9
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "offset"    # I

    .prologue
    .line 529
    instance-of v6, p0, Landroid/text/Spanned;

    if-eqz v6, :cond_20

    move-object v4, p0

    .line 530
    check-cast v4, Landroid/text/Spanned;

    .line 531
    .local v4, "spanned":Landroid/text/Spanned;
    const-class v6, Ljava/lang/Object;

    invoke-interface {v4, p1, p1, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    .line 532
    .local v5, "spans":[Ljava/lang/Object;
    array-length v2, v5

    .line 533
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v2, :cond_20

    .line 534
    aget-object v3, v5, v1

    .line 535
    .local v3, "span":Ljava/lang/Object;
    invoke-interface {v4, v3}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    .line 536
    .local v0, "flags":I
    const/16 v6, 0x21

    if-eq v0, v6, :cond_1d

    const/4 v6, 0x1

    .line 539
    .end local v0    # "flags":I
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "span":Ljava/lang/Object;
    .end local v4    # "spanned":Landroid/text/Spanned;
    .end local v5    # "spans":[Ljava/lang/Object;
    :goto_1c
    return v6

    .line 533
    .restart local v0    # "flags":I
    .restart local v1    # "i":I
    .restart local v2    # "length":I
    .restart local v3    # "span":Ljava/lang/Object;
    .restart local v4    # "spanned":Landroid/text/Spanned;
    .restart local v5    # "spans":[Ljava/lang/Object;
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 539
    .end local v0    # "flags":I
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "span":Ljava/lang/Object;
    .end local v4    # "spanned":Landroid/text/Spanned;
    .end local v5    # "spans":[Ljava/lang/Object;
    :cond_20
    const/4 v6, 0x0

    goto :goto_1c
.end method

.method private moveGapTo(I)V
    .registers 14
    .param p1, "where"    # I

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    .line 157
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-ne p1, v6, :cond_7

    .line 202
    :goto_6
    return-void

    .line 160
    :cond_7
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    if-ne p1, v6, :cond_53

    const/4 v0, 0x1

    .line 162
    .local v0, "atEnd":Z
    :goto_e
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-ge p1, v6, :cond_55

    .line 163
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    sub-int v4, v6, p1

    .line 164
    .local v4, "overlap":I
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v8, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v9, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v8, v9

    sub-int/2addr v8, v4

    invoke-static {v6, p1, v7, v8, v4}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 171
    :goto_23
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_24
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v3, v6, :cond_8d

    .line 172
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v5, v6, v3

    .line 173
    .local v5, "start":I
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v1, v6, v3

    .line 175
    .local v1, "end":I
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v5, v6, :cond_37

    .line 176
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v5, v6

    .line 177
    :cond_37
    if-le v5, p1, :cond_67

    .line 178
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v5, v6

    .line 186
    :cond_3c
    :goto_3c
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v1, v6, :cond_43

    .line 187
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v1, v6

    .line 188
    :cond_43
    if-le v1, p1, :cond_7b

    .line 189
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v1, v6

    .line 197
    :cond_48
    :goto_48
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aput v5, v6, v3

    .line 198
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aput v1, v6, v3

    .line 171
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 160
    .end local v0    # "atEnd":Z
    .end local v1    # "end":I
    .end local v3    # "i":I
    .end local v4    # "overlap":I
    .end local v5    # "start":I
    :cond_53
    const/4 v0, 0x0

    goto :goto_e

    .line 166
    .restart local v0    # "atEnd":Z
    :cond_55
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    sub-int v4, p1, v6

    .line 167
    .restart local v4    # "overlap":I
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v7, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v7, p1

    sub-int/2addr v7, v4

    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v9, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    invoke-static {v6, v7, v8, v9, v4}, Ljava/lang/System;->arraycopy([CI[CII)V

    goto :goto_23

    .line 179
    .restart local v1    # "end":I
    .restart local v3    # "i":I
    .restart local v5    # "start":I
    :cond_67
    if-ne v5, p1, :cond_3c

    .line 180
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v6, v6, v3

    and-int/lit16 v6, v6, 0xf0

    shr-int/lit8 v2, v6, 0x4

    .line 182
    .local v2, "flag":I
    if-eq v2, v10, :cond_77

    if-eqz v0, :cond_3c

    if-ne v2, v11, :cond_3c

    .line 183
    :cond_77
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v5, v6

    goto :goto_3c

    .line 190
    .end local v2    # "flag":I
    :cond_7b
    if-ne v1, p1, :cond_48

    .line 191
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v6, v6, v3

    and-int/lit8 v2, v6, 0xf

    .line 193
    .restart local v2    # "flag":I
    if-eq v2, v10, :cond_89

    if-eqz v0, :cond_48

    if-ne v2, v11, :cond_48

    .line 194
    :cond_89
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v1, v6

    goto :goto_48

    .line 201
    .end local v1    # "end":I
    .end local v2    # "flag":I
    .end local v5    # "start":I
    :cond_8d
    iput p1, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    goto/16 :goto_6
.end method

.method private static region(II)Ljava/lang/String;
    .registers 4
    .param p0, "start"    # I
    .param p1, "end"    # I

    .prologue
    .line 1010
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ... "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private removeSpan(I)V
    .registers 9
    .param p1, "i"    # I

    .prologue
    .line 433
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v2, v4, p1

    .line 435
    .local v2, "object":Ljava/lang/Object;
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v3, v4, p1

    .line 436
    .local v3, "start":I
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v1, v4, p1

    .line 438
    .local v1, "end":I
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v3, v4, :cond_13

    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v3, v4

    .line 439
    :cond_13
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v1, v4, :cond_1a

    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v1, v4

    .line 441
    :cond_1a
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    add-int/lit8 v5, p1, 0x1

    sub-int v0, v4, v5

    .line 442
    .local v0, "count":I
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    add-int/lit8 v5, p1, 0x1

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    invoke-static {v4, v5, v6, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 443
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    add-int/lit8 v5, p1, 0x1

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    invoke-static {v4, v5, v6, p1, v0}, Ljava/lang/System;->arraycopy([II[III)V

    .line 444
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    add-int/lit8 v5, p1, 0x1

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    invoke-static {v4, v5, v6, p1, v0}, Ljava/lang/System;->arraycopy([II[III)V

    .line 445
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    add-int/lit8 v5, p1, 0x1

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    invoke-static {v4, v5, v6, p1, v0}, Ljava/lang/System;->arraycopy([II[III)V

    .line 447
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 449
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    iget v5, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    const/4 v6, 0x0

    aput-object v6, v4, v5

    .line 451
    invoke-direct {p0, v2, v3, v1}, Landroid/text/SpannableStringBuilder;->sendSpanRemoved(Ljava/lang/Object;II)V

    .line 452
    return-void
.end method

.method private resizeFor(I)V
    .registers 11
    .param p1, "size"    # I

    .prologue
    const/4 v8, 0x0

    .line 133
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    array-length v5, v6

    .line 134
    .local v5, "oldLength":I
    add-int/lit8 v6, p1, 0x1

    if-gt v6, v5, :cond_9

    .line 154
    :cond_8
    return-void

    .line 138
    :cond_9
    invoke-static {p1}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v6

    invoke-static {v6}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedCharArray(I)[C

    move-result-object v4

    .line 139
    .local v4, "newText":[C
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v7, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    invoke-static {v6, v8, v4, v8, v7}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 140
    array-length v3, v4

    .line 141
    .local v3, "newLength":I
    sub-int v1, v3, v5

    .line 142
    .local v1, "delta":I
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v7, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v6, v7

    sub-int v0, v5, v6

    .line 143
    .local v0, "after":I
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    sub-int v7, v5, v0

    sub-int v8, v3, v0

    invoke-static {v6, v7, v4, v8, v0}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 144
    iput-object v4, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    .line 146
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v6, v1

    iput v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    .line 147
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    const/4 v7, 0x1

    if-ge v6, v7, :cond_41

    .line 148
    new-instance v6, Ljava/lang/Exception;

    const-string v7, "mGapLength < 1"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 150
    :cond_41
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_42
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v2, v6, :cond_8

    .line 151
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v6, v6, v2

    iget v7, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v6, v7, :cond_55

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v7, v6, v2

    add-int/2addr v7, v1

    aput v7, v6, v2

    .line 152
    :cond_55
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v6, v6, v2

    iget v7, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v6, v7, :cond_64

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v7, v6, v2

    add-int/2addr v7, v1

    aput v7, v6, v2

    .line 150
    :cond_64
    add-int/lit8 v2, v2, 0x1

    goto :goto_42
.end method

.method private sendAfterTextChanged([Landroid/text/TextWatcher;)V
    .registers 5
    .param p1, "watchers"    # [Landroid/text/TextWatcher;

    .prologue
    .line 973
    array-length v1, p1

    .line 975
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v1, :cond_c

    .line 976
    aget-object v2, p1, v0

    invoke-interface {v2, p0}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    .line 975
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 978
    :cond_c
    return-void
.end method

.method private sendBeforeTextChanged([Landroid/text/TextWatcher;III)V
    .registers 8
    .param p1, "watchers"    # [Landroid/text/TextWatcher;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    .line 957
    array-length v1, p1

    .line 959
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v1, :cond_c

    .line 960
    aget-object v2, p1, v0

    invoke-interface {v2, p0, p2, p3, p4}, Landroid/text/TextWatcher;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 959
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 962
    :cond_c
    return-void
.end method

.method private sendSpanAdded(Ljava/lang/Object;II)V
    .registers 8
    .param p1, "what"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 981
    const-class v3, Landroid/text/SpanWatcher;

    invoke-virtual {p0, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/SpanWatcher;

    .line 982
    .local v2, "recip":[Landroid/text/SpanWatcher;
    array-length v1, v2

    .line 984
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    if-ge v0, v1, :cond_14

    .line 985
    aget-object v3, v2, v0

    invoke-interface {v3, p0, p1, p2, p3}, Landroid/text/SpanWatcher;->onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 984
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 987
    :cond_14
    return-void
.end method

.method private sendSpanChanged(Ljava/lang/Object;IIII)V
    .registers 16
    .param p1, "what"    # Ljava/lang/Object;
    .param p2, "oldStart"    # I
    .param p3, "oldEnd"    # I
    .param p4, "start"    # I
    .param p5, "end"    # I

    .prologue
    .line 1001
    invoke-static {p2, p4}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p3, p5}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const-class v2, Landroid/text/SpanWatcher;

    invoke-virtual {p0, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/text/SpanWatcher;

    .line 1003
    .local v9, "spanWatchers":[Landroid/text/SpanWatcher;
    array-length v8, v9

    .line 1004
    .local v8, "n":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1a
    if-ge v7, v8, :cond_2a

    .line 1005
    aget-object v0, v9, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Landroid/text/SpanWatcher;->onSpanChanged(Landroid/text/Spannable;Ljava/lang/Object;IIII)V

    .line 1004
    add-int/lit8 v7, v7, 0x1

    goto :goto_1a

    .line 1007
    :cond_2a
    return-void
.end method

.method private sendSpanRemoved(Ljava/lang/Object;II)V
    .registers 8
    .param p1, "what"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 990
    const-class v3, Landroid/text/SpanWatcher;

    invoke-virtual {p0, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/SpanWatcher;

    .line 991
    .local v2, "recip":[Landroid/text/SpanWatcher;
    array-length v1, v2

    .line 993
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    if-ge v0, v1, :cond_14

    .line 994
    aget-object v3, v2, v0

    invoke-interface {v3, p0, p1, p2, p3}, Landroid/text/SpanWatcher;->onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 993
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 996
    :cond_14
    return-void
.end method

.method private sendTextChanged([Landroid/text/TextWatcher;III)V
    .registers 8
    .param p1, "watchers"    # [Landroid/text/TextWatcher;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    .line 965
    array-length v1, p1

    .line 967
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v1, :cond_c

    .line 968
    aget-object v2, p1, v0

    invoke-interface {v2, p0, p2, p3, p4}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 967
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 970
    :cond_c
    return-void
.end method

.method private sendToSpanWatchers(III)V
    .registers 16
    .param p1, "replaceStart"    # I
    .param p2, "replaceEnd"    # I
    .param p3, "nbNewChars"    # I

    .prologue
    const v11, 0x8000

    .line 543
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_4
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCountBeforeAdd:I

    if-ge v6, v0, :cond_70

    .line 544
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v4, v0, v6

    .line 545
    .local v4, "spanStart":I
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v5, v0, v6

    .line 546
    .local v5, "spanEnd":I
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v4, v0, :cond_17

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v4, v0

    .line 547
    :cond_17
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v5, v0, :cond_1e

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v5, v0

    .line 548
    :cond_1e
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v9, v0, v6

    .line 550
    .local v9, "spanFlags":I
    add-int v7, p2, p3

    .line 551
    .local v7, "newReplaceEnd":I
    const/4 v8, 0x0

    .line 553
    .local v8, "spanChanged":Z
    move v2, v4

    .line 554
    .local v2, "previousSpanStart":I
    if-le v4, v7, :cond_4a

    .line 555
    if-eqz p3, :cond_2c

    .line 556
    sub-int/2addr v2, p3

    .line 557
    const/4 v8, 0x1

    .line 572
    :cond_2c
    :goto_2c
    move v3, v5

    .line 573
    .local v3, "previousSpanEnd":I
    if-le v5, v7, :cond_5e

    .line 574
    if-eqz p3, :cond_33

    .line 575
    sub-int/2addr v3, p3

    .line 576
    const/4 v8, 0x1

    .line 589
    :cond_33
    :goto_33
    if-eqz v8, :cond_3d

    .line 590
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v1, v0, v6

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->sendSpanChanged(Ljava/lang/Object;IIII)V

    .line 592
    :cond_3d
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v1, v0, v6

    const v10, -0xf001

    and-int/2addr v1, v10

    aput v1, v0, v6

    .line 543
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 559
    .end local v3    # "previousSpanEnd":I
    :cond_4a
    if-lt v4, p1, :cond_2c

    .line 561
    if-ne v4, p1, :cond_54

    and-int/lit16 v0, v9, 0x1000

    const/16 v1, 0x1000

    if-eq v0, v1, :cond_2c

    :cond_54
    if-ne v4, v7, :cond_5c

    and-int/lit16 v0, v9, 0x2000

    const/16 v1, 0x2000

    if-eq v0, v1, :cond_2c

    .line 568
    :cond_5c
    const/4 v8, 0x1

    goto :goto_2c

    .line 578
    .restart local v3    # "previousSpanEnd":I
    :cond_5e
    if-lt v5, p1, :cond_33

    .line 580
    if-ne v5, p1, :cond_68

    and-int/lit16 v0, v9, 0x4000

    const/16 v1, 0x4000

    if-eq v0, v1, :cond_33

    :cond_68
    if-ne v5, v7, :cond_6e

    and-int v0, v9, v11

    if-eq v0, v11, :cond_33

    .line 585
    :cond_6e
    const/4 v8, 0x1

    goto :goto_33

    .line 596
    .end local v2    # "previousSpanStart":I
    .end local v3    # "previousSpanEnd":I
    .end local v4    # "spanStart":I
    .end local v5    # "spanEnd":I
    .end local v7    # "newReplaceEnd":I
    .end local v8    # "spanChanged":Z
    .end local v9    # "spanFlags":I
    :cond_70
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mSpanCountBeforeAdd:I

    :goto_72
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v6, v0, :cond_96

    .line 597
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v4, v0, v6

    .line 598
    .restart local v4    # "spanStart":I
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v5, v0, v6

    .line 599
    .restart local v5    # "spanEnd":I
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v4, v0, :cond_85

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v4, v0

    .line 600
    :cond_85
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v5, v0, :cond_8c

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v5, v0

    .line 601
    :cond_8c
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v0, v0, v6

    invoke-direct {p0, v0, v4, v5}, Landroid/text/SpannableStringBuilder;->sendSpanAdded(Ljava/lang/Object;II)V

    .line 596
    add-int/lit8 v6, v6, 0x1

    goto :goto_72

    .line 603
    .end local v4    # "spanStart":I
    .end local v5    # "spanEnd":I
    :cond_96
    return-void
.end method

.method private setSpan(ZLjava/lang/Object;III)V
    .registers 20
    .param p1, "send"    # Z
    .param p2, "what"    # Ljava/lang/Object;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "flags"    # I

    .prologue
    .line 615
    const-string/jumbo v2, "setSpan"

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-direct {p0, v2, v0, v1}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    .line 617
    move/from16 v0, p5

    and-int/lit16 v2, v0, 0xf0

    shr-int/lit8 v11, v2, 0x4

    .line 618
    .local v11, "flagsStart":I
    const/4 v2, 0x3

    if-ne v11, v2, :cond_2f

    .line 619
    if-eqz p3, :cond_2f

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    move/from16 v0, p3

    if-eq v0, v2, :cond_2f

    .line 620
    add-int/lit8 v2, p3, -0x1

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v8

    .line 622
    .local v8, "c":C
    const/16 v2, 0xa

    if-eq v8, v2, :cond_2f

    .line 623
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "PARAGRAPH span must start at paragraph boundary"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 627
    .end local v8    # "c":C
    :cond_2f
    and-int/lit8 v10, p5, 0xf

    .line 628
    .local v10, "flagsEnd":I
    const/4 v2, 0x3

    if-ne v10, v2, :cond_50

    .line 629
    if-eqz p4, :cond_50

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    move/from16 v0, p4

    if-eq v0, v2, :cond_50

    .line 630
    add-int/lit8 v2, p4, -0x1

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v8

    .line 632
    .restart local v8    # "c":C
    const/16 v2, 0xa

    if-eq v8, v2, :cond_50

    .line 633
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "PARAGRAPH span must end at paragraph boundary"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 638
    .end local v8    # "c":C
    :cond_50
    const/4 v2, 0x2

    if-ne v11, v2, :cond_66

    const/4 v2, 0x1

    if-ne v10, v2, :cond_66

    move/from16 v0, p3

    move/from16 v1, p4

    if-ne v0, v1, :cond_66

    .line 639
    if-eqz p1, :cond_65

    .line 640
    const-string v2, "SpannableStringBuilder"

    const-string v3, "SPAN_EXCLUSIVE_EXCLUSIVE spans cannot have a zero length"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    :cond_65
    :goto_65
    return-void

    .line 648
    :cond_66
    move/from16 v6, p3

    .line 649
    .local v6, "nstart":I
    move/from16 v7, p4

    .line 651
    .local v7, "nend":I
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move/from16 v0, p3

    if-le v0, v2, :cond_b6

    .line 652
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int p3, p3, v2

    .line 658
    :cond_74
    :goto_74
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move/from16 v0, p4

    if-le v0, v2, :cond_cf

    .line 659
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int p4, p4, v2

    .line 665
    :cond_7e
    :goto_7e
    iget v9, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 666
    .local v9, "count":I
    iget-object v13, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    .line 668
    .local v13, "spans":[Ljava/lang/Object;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_83
    if-ge v12, v9, :cond_eb

    .line 669
    aget-object v2, v13, v12

    move-object/from16 v0, p2

    if-ne v2, v0, :cond_e8

    .line 670
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v4, v2, v12

    .line 671
    .local v4, "ostart":I
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v5, v2, v12

    .line 673
    .local v5, "oend":I
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v4, v2, :cond_9a

    .line 674
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v4, v2

    .line 675
    :cond_9a
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v5, v2, :cond_a1

    .line 676
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v5, v2

    .line 678
    :cond_a1
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aput p3, v2, v12

    .line 679
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aput p4, v2, v12

    .line 680
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aput p5, v2, v12

    .line 682
    if-eqz p1, :cond_65

    move-object v2, p0

    move-object/from16 v3, p2

    invoke-direct/range {v2 .. v7}, Landroid/text/SpannableStringBuilder;->sendSpanChanged(Ljava/lang/Object;IIII)V

    goto :goto_65

    .line 653
    .end local v4    # "ostart":I
    .end local v5    # "oend":I
    .end local v9    # "count":I
    .end local v12    # "i":I
    .end local v13    # "spans":[Ljava/lang/Object;
    :cond_b6
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move/from16 v0, p3

    if-ne v0, v2, :cond_74

    .line 654
    const/4 v2, 0x2

    if-eq v11, v2, :cond_ca

    const/4 v2, 0x3

    if-ne v11, v2, :cond_74

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    move/from16 v0, p3

    if-ne v0, v2, :cond_74

    .line 655
    :cond_ca
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int p3, p3, v2

    goto :goto_74

    .line 660
    :cond_cf
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move/from16 v0, p4

    if-ne v0, v2, :cond_7e

    .line 661
    const/4 v2, 0x2

    if-eq v10, v2, :cond_e3

    const/4 v2, 0x3

    if-ne v10, v2, :cond_7e

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    move/from16 v0, p4

    if-ne v0, v2, :cond_7e

    .line 662
    :cond_e3
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int p4, p4, v2

    goto :goto_7e

    .line 668
    .restart local v9    # "count":I
    .restart local v12    # "i":I
    .restart local v13    # "spans":[Ljava/lang/Object;
    :cond_e8
    add-int/lit8 v12, v12, 0x1

    goto :goto_83

    .line 688
    :cond_eb
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    iget v3, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    move-object/from16 v0, p2

    invoke-static {v2, v3, v0}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    .line 689
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    iget v3, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    move/from16 v0, p3

    invoke-static {v2, v3, v0}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v2

    iput-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    .line 690
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    iget v3, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    move/from16 v0, p4

    invoke-static {v2, v3, v0}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v2

    iput-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    .line 691
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    iget v3, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    move/from16 v0, p5

    invoke-static {v2, v3, v0}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v2

    iput-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    .line 692
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 694
    if-eqz p1, :cond_65

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v6, v7}, Landroid/text/SpannableStringBuilder;->sendSpanAdded(Ljava/lang/Object;II)V

    goto/16 :goto_65
.end method

.method private updatedIntervalBound(IIIIZZ)I
    .registers 9
    .param p1, "offset"    # I
    .param p2, "start"    # I
    .param p3, "nbNewChars"    # I
    .param p4, "flag"    # I
    .param p5, "atEnd"    # Z
    .param p6, "textIsRemoved"    # Z

    .prologue
    .line 402
    if-lt p1, p2, :cond_2d

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_2d

    .line 403
    const/4 v0, 0x2

    if-ne p4, v0, :cond_17

    .line 408
    if-nez p6, :cond_10

    if-le p1, p2, :cond_2d

    .line 409
    :cond_10
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int p2, v0, v1

    .line 429
    .end local p2    # "start":I
    :cond_16
    :goto_16
    return p2

    .line 412
    .restart local p2    # "start":I
    :cond_17
    const/4 v0, 0x3

    if-ne p4, v0, :cond_23

    .line 413
    if-eqz p5, :cond_2d

    .line 414
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int p2, v0, v1

    goto :goto_16

    .line 420
    :cond_23
    if-nez p6, :cond_16

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    sub-int/2addr v0, p3

    if-lt p1, v0, :cond_16

    .line 424
    iget p2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    goto :goto_16

    :cond_2d
    move p2, p1

    .line 429
    goto :goto_16
.end method

.method public static valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .registers 2
    .param p0, "source"    # Ljava/lang/CharSequence;

    .prologue
    .line 101
    instance-of v0, p0, Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_7

    .line 102
    check-cast p0, Landroid/text/SpannableStringBuilder;

    .line 104
    .end local p0    # "source":Ljava/lang/CharSequence;
    :goto_6
    return-object p0

    .restart local p0    # "source":Ljava/lang/CharSequence;
    :cond_7
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move-object p0, v0

    goto :goto_6
.end method


# virtual methods
.method public bridge synthetic append(C)Landroid/text/Editable;
    .registers 3
    .param p1, "x0"    # C

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Landroid/text/Editable;
    .registers 3
    .param p1, "x0"    # Ljava/lang/CharSequence;

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Landroid/text/Editable;
    .registers 5
    .param p1, "x0"    # Ljava/lang/CharSequence;
    .param p2, "x1"    # I
    .param p3, "x2"    # I

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(C)Landroid/text/SpannableStringBuilder;
    .registers 3
    .param p1, "text"    # C

    .prologue
    .line 279
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .registers 8
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 252
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 253
    .local v1, "length":I
    const/4 v4, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v0, p0

    move v2, v1

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    .registers 10
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 273
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .local v1, "length":I
    move-object v0, p0

    move v2, v1

    move-object v3, p1

    move v4, p2

    move v5, p3

    .line 274
    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;
    .registers 6
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "what"    # Ljava/lang/Object;
    .param p3, "flags"    # I

    .prologue
    .line 265
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 266
    .local v0, "start":I
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 267
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-virtual {p0, p2, v0, v1, p3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 268
    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .registers 3
    .param p1, "x0"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .registers 3
    .param p1, "x0"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .registers 5
    .param p1, "x0"    # Ljava/lang/CharSequence;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public charAt(I)C
    .registers 6
    .param p1, "where"    # I

    .prologue
    .line 112
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 113
    .local v0, "len":I
    if-gez p1, :cond_25

    .line 114
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "charAt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " < 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 115
    :cond_25
    if-lt p1, v0, :cond_4a

    .line 116
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "charAt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " >= length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 119
    :cond_4a
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p1, v1, :cond_56

    .line 120
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v2, p1

    aget-char v1, v1, v2

    .line 122
    :goto_55
    return v1

    :cond_56
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    aget-char v1, v1, p1

    goto :goto_55
.end method

.method public clear()V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 226
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    array-length v0, v0

    if-ge v6, v0, :cond_e

    .line 227
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    aput-char v1, v0, v6

    .line 226
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 228
    :cond_e
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const-string v3, ""

    move-object v0, p0

    move v4, v1

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    .line 229
    return-void
.end method

.method public clearSpans()V
    .registers 7

    .prologue
    .line 233
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_4
    if-ltz v0, :cond_2d

    .line 234
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v3, v4, v0

    .line 235
    .local v3, "what":Ljava/lang/Object;
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v2, v4, v0

    .line 236
    .local v2, "ostart":I
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v1, v4, v0

    .line 238
    .local v1, "oend":I
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v2, v4, :cond_19

    .line 239
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v2, v4

    .line 240
    :cond_19
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v1, v4, :cond_20

    .line 241
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v1, v4

    .line 243
    :cond_20
    iput v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 244
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v5, v4, v0

    .line 246
    invoke-direct {p0, v3, v2, v1}, Landroid/text/SpannableStringBuilder;->sendSpanRemoved(Ljava/lang/Object;II)V

    .line 233
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 248
    .end local v1    # "oend":I
    .end local v2    # "ostart":I
    .end local v3    # "what":Ljava/lang/Object;
    :cond_2d
    return-void
.end method

.method public bridge synthetic delete(II)Landroid/text/Editable;
    .registers 4
    .param p1, "x0"    # I
    .param p2, "x1"    # I

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public delete(II)Landroid/text/SpannableStringBuilder;
    .registers 10
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/4 v4, 0x0

    .line 216
    const-string v3, ""

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    .line 218
    .local v6, "ret":Landroid/text/SpannableStringBuilder;
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_1c

    .line 219
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/text/SpannableStringBuilder;->resizeFor(I)V

    .line 221
    :cond_1c
    return-object v6
.end method

.method public drawText(Landroid/graphics/Canvas;IIFFLandroid/graphics/Paint;)V
    .registers 14
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "p"    # Landroid/graphics/Paint;

    .prologue
    const/4 v2, 0x0

    .line 1118
    const-string v0, "drawText"

    invoke-direct {p0, v0, p2, p3}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    .line 1120
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt p3, v0, :cond_17

    .line 1121
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    sub-int v3, p3, p2

    move-object v0, p1

    move v2, p2

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 1131
    :goto_16
    return-void

    .line 1122
    :cond_17
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p2, v0, :cond_2b

    .line 1123
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int v2, p2, v0

    sub-int v3, p3, p2

    move-object v0, p1

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    goto :goto_16

    .line 1125
    :cond_2b
    sub-int v0, p3, p2

    invoke-static {v0}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v1

    .line 1127
    .local v1, "buf":[C
    invoke-virtual {p0, p2, p3, v1, v2}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    .line 1128
    sub-int v3, p3, p2

    move-object v0, p1

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 1129
    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    goto :goto_16
.end method

.method public drawTextRun(Landroid/graphics/Canvas;IIIIFFZLandroid/graphics/Paint;)V
    .registers 20
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "x"    # F
    .param p7, "y"    # F
    .param p8, "isRtl"    # Z
    .param p9, "p"    # Landroid/graphics/Paint;

    .prologue
    .line 1140
    const-string v0, "drawTextRun"

    invoke-direct {p0, v0, p2, p3}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    .line 1142
    sub-int v5, p5, p4

    .line 1143
    .local v5, "contextLen":I
    sub-int v3, p3, p2

    .line 1144
    .local v3, "len":I
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt p5, v0, :cond_1e

    .line 1145
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    move-object v0, p1

    move v2, p2

    move v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Canvas;->drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V

    .line 1155
    :goto_1d
    return-void

    .line 1146
    :cond_1e
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p4, v0, :cond_39

    .line 1147
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int v2, p2, v0

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int v4, p4, v0

    move-object v0, p1

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Canvas;->drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V

    goto :goto_1d

    .line 1150
    :cond_39
    invoke-static {v5}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v1

    .line 1151
    .local v1, "buf":[C
    const/4 v0, 0x0

    invoke-virtual {p0, p4, p5, v1, v0}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    .line 1152
    sub-int v2, p2, p4

    const/4 v4, 0x0

    move-object v0, p1

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Canvas;->drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V

    .line 1153
    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    goto :goto_1d
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 1300
    instance-of v6, p1, Landroid/text/Spanned;

    if-eqz v6, :cond_52

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_52

    move-object v1, p1

    .line 1302
    check-cast v1, Landroid/text/Spanned;

    .line 1304
    .local v1, "other":Landroid/text/Spanned;
    invoke-interface {v1}, Landroid/text/Spanned;->length()I

    move-result v6

    const-class v7, Ljava/lang/Object;

    invoke-interface {v1, v5, v6, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    .line 1305
    .local v3, "otherSpans":[Ljava/lang/Object;
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    array-length v7, v3

    if-ne v6, v7, :cond_52

    .line 1306
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_26
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v0, v6, :cond_7a

    .line 1307
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v4, v6, v0

    .line 1308
    .local v4, "thisSpan":Ljava/lang/Object;
    aget-object v2, v3, v0

    .line 1309
    .local v2, "otherSpan":Ljava/lang/Object;
    if-ne v4, p0, :cond_53

    .line 1310
    if-ne v1, v2, :cond_52

    invoke-virtual {p0, v4}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {v1, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    if-ne v6, v7, :cond_52

    invoke-virtual {p0, v4}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {v1, v2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    if-ne v6, v7, :cond_52

    invoke-virtual {p0, v4}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {v1, v2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v7

    if-eq v6, v7, :cond_77

    .line 1326
    .end local v0    # "i":I
    .end local v1    # "other":Landroid/text/Spanned;
    .end local v2    # "otherSpan":Ljava/lang/Object;
    .end local v3    # "otherSpans":[Ljava/lang/Object;
    .end local v4    # "thisSpan":Ljava/lang/Object;
    :cond_52
    :goto_52
    return v5

    .line 1316
    .restart local v0    # "i":I
    .restart local v1    # "other":Landroid/text/Spanned;
    .restart local v2    # "otherSpan":Ljava/lang/Object;
    .restart local v3    # "otherSpans":[Ljava/lang/Object;
    .restart local v4    # "thisSpan":Ljava/lang/Object;
    :cond_53
    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_52

    invoke-virtual {p0, v4}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {v1, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    if-ne v6, v7, :cond_52

    invoke-virtual {p0, v4}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {v1, v2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    if-ne v6, v7, :cond_52

    invoke-virtual {p0, v4}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {v1, v2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v7

    if-ne v6, v7, :cond_52

    .line 1306
    :cond_77
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 1323
    .end local v2    # "otherSpan":Ljava/lang/Object;
    .end local v4    # "thisSpan":Ljava/lang/Object;
    :cond_7a
    const/4 v5, 0x1

    goto :goto_52
.end method

.method public getChars(II[CI)V
    .registers 9
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "dest"    # [C
    .param p4, "destoff"    # I

    .prologue
    .line 919
    const-string v0, "getChars"

    invoke-direct {p0, v0, p1, p2}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    .line 921
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt p2, v0, :cond_11

    .line 922
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    sub-int v1, p2, p1

    invoke-static {v0, p1, p3, p4, v1}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 931
    :goto_10
    return-void

    .line 923
    :cond_11
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p1, v0, :cond_20

    .line 924
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v1, p1

    sub-int v2, p2, p1

    invoke-static {v0, v1, p3, p4, v2}, Ljava/lang/System;->arraycopy([CI[CII)V

    goto :goto_10

    .line 926
    :cond_20
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    sub-int/2addr v1, p1

    invoke-static {v0, p1, p3, p4, v1}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 927
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    sub-int/2addr v2, p1

    add-int/2addr v2, p4

    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    sub-int v3, p2, v3

    invoke-static {v0, v1, p3, v2, v3}, Ljava/lang/System;->arraycopy([CI[CII)V

    goto :goto_10
.end method

.method public getFilters()[Landroid/text/InputFilter;
    .registers 2

    .prologue
    .line 1294
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mFilters:[Landroid/text/InputFilter;

    return-object v0
.end method

.method public getSpanEnd(Ljava/lang/Object;)I
    .registers 7
    .param p1, "what"    # Ljava/lang/Object;

    .prologue
    .line 736
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 737
    .local v0, "count":I
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    .line 739
    .local v2, "spans":[Ljava/lang/Object;
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_6
    if-ltz v1, :cond_1b

    .line 740
    aget-object v4, v2, v1

    if-ne v4, p1, :cond_18

    .line 741
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v3, v4, v1

    .line 743
    .local v3, "where":I
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v3, v4, :cond_17

    .line 744
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v3, v4

    .line 750
    .end local v3    # "where":I
    :cond_17
    :goto_17
    return v3

    .line 739
    :cond_18
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 750
    :cond_1b
    const/4 v3, -0x1

    goto :goto_17
.end method

.method public getSpanFlags(Ljava/lang/Object;)I
    .registers 6
    .param p1, "what"    # Ljava/lang/Object;

    .prologue
    .line 758
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 759
    .local v0, "count":I
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    .line 761
    .local v2, "spans":[Ljava/lang/Object;
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_6
    if-ltz v1, :cond_14

    .line 762
    aget-object v3, v2, v1

    if-ne v3, p1, :cond_11

    .line 763
    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v3, v3, v1

    .line 767
    :goto_10
    return v3

    .line 761
    :cond_11
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 767
    :cond_14
    const/4 v3, 0x0

    goto :goto_10
.end method

.method public getSpanStart(Ljava/lang/Object;)I
    .registers 7
    .param p1, "what"    # Ljava/lang/Object;

    .prologue
    .line 714
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 715
    .local v0, "count":I
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    .line 717
    .local v2, "spans":[Ljava/lang/Object;
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_6
    if-ltz v1, :cond_1b

    .line 718
    aget-object v4, v2, v1

    if-ne v4, p1, :cond_18

    .line 719
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v3, v4, v1

    .line 721
    .local v3, "where":I
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v3, v4, :cond_17

    .line 722
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v3, v4

    .line 728
    .end local v3    # "where":I
    :cond_17
    :goto_17
    return v3

    .line 717
    :cond_18
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 728
    :cond_1b
    const/4 v3, -0x1

    goto :goto_17
.end method

.method public getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    .registers 26
    .param p1, "queryStart"    # I
    .param p2, "queryEnd"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 777
    .local p3, "kind":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p3, :cond_7

    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v13

    .line 868
    :cond_6
    :goto_6
    return-object v13

    .line 779
    :cond_7
    move-object/from16 v0, p0

    iget v15, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 780
    .local v15, "spanCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    move-object/from16 v18, v0

    .line 781
    .local v18, "spans":[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    move-object/from16 v19, v0

    .line 782
    .local v19, "starts":[I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    .line 783
    .local v4, "ends":[I
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    .line 784
    .local v5, "flags":[I
    move-object/from16 v0, p0

    iget v7, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    .line 785
    .local v7, "gapstart":I
    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    .line 787
    .local v6, "gaplen":I
    const/4 v2, 0x0

    .line 788
    .local v2, "count":I
    const/4 v13, 0x0

    .line 789
    .local v13, "ret":[Ljava/lang/Object;, "[TT;"
    const/4 v14, 0x0

    .line 791
    .local v14, "ret1":Ljava/lang/Object;, "TT;"
    const/4 v8, 0x0

    .local v8, "i":I
    move v3, v2

    .end local v2    # "count":I
    .end local v14    # "ret1":Ljava/lang/Object;, "TT;"
    .local v3, "count":I
    :goto_2c
    if-ge v8, v15, :cond_d7

    .line 792
    aget v17, v19, v8

    .line 793
    .local v17, "spanStart":I
    move/from16 v0, v17

    if-le v0, v7, :cond_36

    .line 794
    sub-int v17, v17, v6

    .line 796
    :cond_36
    move/from16 v0, v17

    move/from16 v1, p2

    if-le v0, v1, :cond_41

    move v2, v3

    .line 791
    .end local v3    # "count":I
    .restart local v2    # "count":I
    :goto_3d
    add-int/lit8 v8, v8, 0x1

    move v3, v2

    .end local v2    # "count":I
    .restart local v3    # "count":I
    goto :goto_2c

    .line 800
    :cond_41
    aget v16, v4, v8

    .line 801
    .local v16, "spanEnd":I
    move/from16 v0, v16

    if-le v0, v7, :cond_49

    .line 802
    sub-int v16, v16, v6

    .line 804
    :cond_49
    move/from16 v0, v16

    move/from16 v1, p1

    if-ge v0, v1, :cond_51

    move v2, v3

    .line 805
    .end local v3    # "count":I
    .restart local v2    # "count":I
    goto :goto_3d

    .line 808
    .end local v2    # "count":I
    .restart local v3    # "count":I
    :cond_51
    move/from16 v0, v17

    move/from16 v1, v16

    if-eq v0, v1, :cond_6d

    move/from16 v0, p1

    move/from16 v1, p2

    if-eq v0, v1, :cond_6d

    .line 809
    move/from16 v0, v17

    move/from16 v1, p2

    if-ne v0, v1, :cond_65

    move v2, v3

    .line 810
    .end local v3    # "count":I
    .restart local v2    # "count":I
    goto :goto_3d

    .line 811
    .end local v2    # "count":I
    .restart local v3    # "count":I
    :cond_65
    move/from16 v0, v16

    move/from16 v1, p1

    if-ne v0, v1, :cond_6d

    move v2, v3

    .line 812
    .end local v3    # "count":I
    .restart local v2    # "count":I
    goto :goto_3d

    .line 816
    .end local v2    # "count":I
    .restart local v3    # "count":I
    :cond_6d
    aget-object v20, v18, v8

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_7b

    move v2, v3

    .end local v3    # "count":I
    .restart local v2    # "count":I
    goto :goto_3d

    .line 818
    .end local v2    # "count":I
    .restart local v3    # "count":I
    :cond_7b
    if-nez v3, :cond_82

    .line 820
    aget-object v14, v18, v8

    .line 821
    .restart local v14    # "ret1":Ljava/lang/Object;, "TT;"
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "count":I
    .restart local v2    # "count":I
    goto :goto_3d

    .line 823
    .end local v2    # "count":I
    .end local v14    # "ret1":Ljava/lang/Object;, "TT;"
    .restart local v3    # "count":I
    :cond_82
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v3, v0, :cond_9e

    .line 825
    sub-int v20, v15, v8

    add-int/lit8 v20, v20, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Ljava/lang/Object;

    move-object/from16 v13, v20

    check-cast v13, [Ljava/lang/Object;

    .line 826
    const/16 v20, 0x0

    aput-object v14, v13, v20

    .line 829
    :cond_9e
    aget v20, v5, v8

    const/high16 v21, 0xff0000

    and-int v12, v20, v21

    .line 830
    .local v12, "prio":I
    if-eqz v12, :cond_cf

    .line 833
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_a7
    if-ge v9, v3, :cond_b9

    .line 834
    aget-object v20, v13, v9

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v20

    const/high16 v21, 0xff0000

    and-int v11, v20, v21

    .line 836
    .local v11, "p":I
    if-le v12, v11, :cond_cc

    .line 841
    .end local v11    # "p":I
    :cond_b9
    add-int/lit8 v20, v9, 0x1

    sub-int v21, v3, v9

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v13, v9, v13, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 843
    aget-object v20, v18, v8

    aput-object v20, v13, v9

    .line 844
    add-int/lit8 v2, v3, 0x1

    .line 845
    .end local v3    # "count":I
    .restart local v2    # "count":I
    goto/16 :goto_3d

    .line 833
    .end local v2    # "count":I
    .restart local v3    # "count":I
    .restart local v11    # "p":I
    :cond_cc
    add-int/lit8 v9, v9, 0x1

    goto :goto_a7

    .line 847
    .end local v9    # "j":I
    .end local v11    # "p":I
    :cond_cf
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "count":I
    .restart local v2    # "count":I
    aget-object v20, v18, v8

    aput-object v20, v13, v3

    goto/16 :goto_3d

    .line 852
    .end local v2    # "count":I
    .end local v12    # "prio":I
    .end local v16    # "spanEnd":I
    .end local v17    # "spanStart":I
    .restart local v3    # "count":I
    :cond_d7
    if-nez v3, :cond_df

    .line 853
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v13

    goto/16 :goto_6

    .line 855
    :cond_df
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v3, v0, :cond_fb

    .line 857
    const/16 v20, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Ljava/lang/Object;

    move-object/from16 v13, v20

    check-cast v13, [Ljava/lang/Object;

    .line 858
    const/16 v20, 0x0

    aput-object v14, v13, v20

    goto/16 :goto_6

    .line 861
    :cond_fb
    array-length v0, v13

    move/from16 v20, v0

    move/from16 v0, v20

    if-eq v3, v0, :cond_6

    .line 866
    move-object/from16 v0, p3

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Ljava/lang/Object;

    move-object/from16 v10, v20

    check-cast v10, [Ljava/lang/Object;

    .line 867
    .local v10, "nret":[Ljava/lang/Object;, "[TT;"
    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v13, v0, v10, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v13, v10

    .line 868
    goto/16 :goto_6
.end method

.method public getTextRunAdvances(IIIIZ[FILandroid/graphics/Paint;)F
    .registers 19
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "contextStart"    # I
    .param p4, "contextEnd"    # I
    .param p5, "isRtl"    # Z
    .param p6, "advances"    # [F
    .param p7, "advancesPos"    # I
    .param p8, "p"    # Landroid/graphics/Paint;

    .prologue
    .line 1214
    sub-int v5, p4, p3

    .line 1215
    .local v5, "contextLen":I
    sub-int v3, p2, p1

    .line 1217
    .local v3, "len":I
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt p2, v0, :cond_18

    .line 1218
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    move-object/from16 v0, p8

    move v2, p1

    move v4, p3

    move v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result v9

    .line 1231
    .local v9, "ret":F
    :goto_17
    return v9

    .line 1220
    .end local v9    # "ret":F
    :cond_18
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p1, v0, :cond_32

    .line 1221
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int v2, p1, v0

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int v4, p3, v0

    move-object/from16 v0, p8

    move v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result v9

    .restart local v9    # "ret":F
    goto :goto_17

    .line 1224
    .end local v9    # "ret":F
    :cond_32
    invoke-static {v5}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v1

    .line 1225
    .local v1, "buf":[C
    const/4 v0, 0x0

    invoke-virtual {p0, p3, p4, v1, v0}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    .line 1226
    sub-int v2, p1, p3

    const/4 v4, 0x0

    move-object/from16 v0, p8

    move v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result v9

    .line 1228
    .restart local v9    # "ret":F
    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    goto :goto_17
.end method

.method public getTextRunCursor(IIIIILandroid/graphics/Paint;)I
    .registers 15
    .param p1, "contextStart"    # I
    .param p2, "contextEnd"    # I
    .param p3, "dir"    # I
    .param p4, "offset"    # I
    .param p5, "cursorOpt"    # I
    .param p6, "p"    # Landroid/graphics/Paint;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1265
    sub-int v3, p2, p1

    .line 1266
    .local v3, "contextLen":I
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt p2, v0, :cond_13

    .line 1267
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    move-object v0, p6

    move v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor([CIIIII)I

    move-result v7

    .line 1280
    .local v7, "ret":I
    :goto_12
    return v7

    .line 1269
    .end local v7    # "ret":I
    :cond_13
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p1, v0, :cond_2d

    .line 1270
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int v2, p1, v0

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int v5, p4, v0

    move-object v0, p6

    move v4, p3

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor([CIIIII)I

    move-result v0

    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int v7, v0, v2

    .restart local v7    # "ret":I
    goto :goto_12

    .line 1273
    .end local v7    # "ret":I
    :cond_2d
    invoke-static {v3}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v1

    .line 1274
    .local v1, "buf":[C
    invoke-virtual {p0, p1, p2, v1, v2}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    .line 1275
    sub-int v5, p4, p1

    move-object v0, p6

    move v4, p3

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor([CIIIII)I

    move-result v0

    add-int v7, v0, p1

    .line 1277
    .restart local v7    # "ret":I
    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    goto :goto_12
.end method

.method public getTextWidths(II[FLandroid/graphics/Paint;)I
    .registers 10
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "widths"    # [F
    .param p4, "p"    # Landroid/graphics/Paint;

    .prologue
    const/4 v3, 0x0

    .line 1186
    const-string v2, "getTextWidths"

    invoke-direct {p0, v2, p1, p2}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    .line 1190
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt p2, v2, :cond_13

    .line 1191
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    sub-int v3, p2, p1

    invoke-virtual {p4, v2, p1, v3, p3}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    move-result v1

    .line 1202
    .local v1, "ret":I
    :goto_12
    return v1

    .line 1192
    .end local v1    # "ret":I
    :cond_13
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p1, v2, :cond_23

    .line 1193
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v3, p1

    sub-int v4, p2, p1

    invoke-virtual {p4, v2, v3, v4, p3}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    move-result v1

    .restart local v1    # "ret":I
    goto :goto_12

    .line 1195
    .end local v1    # "ret":I
    :cond_23
    sub-int v2, p2, p1

    invoke-static {v2}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v0

    .line 1197
    .local v0, "buf":[C
    invoke-virtual {p0, p1, p2, v0, v3}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    .line 1198
    sub-int v2, p2, p1

    invoke-virtual {p4, v0, v3, v2, p3}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    move-result v1

    .line 1199
    .restart local v1    # "ret":I
    invoke-static {v0}, Landroid/text/TextUtils;->recycle([C)V

    goto :goto_12
.end method

.method public hashCode()I
    .registers 6

    .prologue
    .line 1332
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 1333
    .local v0, "hash":I
    mul-int/lit8 v3, v0, 0x1f

    iget v4, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    add-int v0, v3, v4

    .line 1334
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    iget v3, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v1, v3, :cond_3c

    .line 1335
    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v2, v3, v1

    .line 1336
    .local v2, "span":Ljava/lang/Object;
    if-eq v2, p0, :cond_21

    .line 1337
    mul-int/lit8 v3, v0, 0x1f

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    add-int v0, v3, v4

    .line 1339
    :cond_21
    mul-int/lit8 v3, v0, 0x1f

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    add-int v0, v3, v4

    .line 1340
    mul-int/lit8 v3, v0, 0x1f

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    add-int v0, v3, v4

    .line 1341
    mul-int/lit8 v3, v0, 0x1f

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v4

    add-int v0, v3, v4

    .line 1334
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1343
    .end local v2    # "span":Ljava/lang/Object;
    :cond_3c
    return v0
.end method

.method public bridge synthetic insert(ILjava/lang/CharSequence;)Landroid/text/Editable;
    .registers 4
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic insert(ILjava/lang/CharSequence;II)Landroid/text/Editable;
    .registers 6
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/CharSequence;
    .param p3, "x2"    # I
    .param p4, "x3"    # I

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .registers 9
    .param p1, "where"    # I
    .param p2, "tb"    # Ljava/lang/CharSequence;

    .prologue
    .line 211
    const/4 v4, 0x0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public insert(ILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    .registers 11
    .param p1, "where"    # I
    .param p2, "tb"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I

    .prologue
    .line 206
    move-object v0, p0

    move v1, p1

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .registers 3

    .prologue
    .line 129
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    array-length v0, v0

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public measureText(IILandroid/graphics/Paint;)F
    .registers 9
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "p"    # Landroid/graphics/Paint;

    .prologue
    const/4 v3, 0x0

    .line 1162
    const-string v2, "measureText"

    invoke-direct {p0, v2, p1, p2}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    .line 1166
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt p2, v2, :cond_13

    .line 1167
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    sub-int v3, p2, p1

    invoke-virtual {p3, v2, p1, v3}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v1

    .line 1178
    .local v1, "ret":F
    :goto_12
    return v1

    .line 1168
    .end local v1    # "ret":F
    :cond_13
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p1, v2, :cond_23

    .line 1169
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v3, p1

    sub-int v4, p2, p1

    invoke-virtual {p3, v2, v3, v4}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v1

    .restart local v1    # "ret":F
    goto :goto_12

    .line 1171
    .end local v1    # "ret":F
    :cond_23
    sub-int v2, p2, p1

    invoke-static {v2}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v0

    .line 1173
    .local v0, "buf":[C
    invoke-virtual {p0, p1, p2, v0, v3}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    .line 1174
    sub-int v2, p2, p1

    invoke-virtual {p3, v0, v3, v2}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v1

    .line 1175
    .restart local v1    # "ret":F
    invoke-static {v0}, Landroid/text/TextUtils;->recycle([C)V

    goto :goto_12
.end method

.method public nextSpanTransition(IILjava/lang/Class;)I
    .registers 14
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "kind"    # Ljava/lang/Class;

    .prologue
    .line 877
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 878
    .local v0, "count":I
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    .line 879
    .local v6, "spans":[Ljava/lang/Object;
    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    .line 880
    .local v8, "starts":[I
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    .line 881
    .local v2, "ends":[I
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    .line 882
    .local v4, "gapstart":I
    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    .line 884
    .local v3, "gaplen":I
    if-nez p3, :cond_10

    .line 885
    const-class p3, Ljava/lang/Object;

    .line 888
    :cond_10
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_11
    if-ge v5, v0, :cond_3a

    .line 889
    aget v7, v8, v5

    .line 890
    .local v7, "st":I
    aget v1, v2, v5

    .line 892
    .local v1, "en":I
    if-le v7, v4, :cond_1a

    .line 893
    sub-int/2addr v7, v3

    .line 894
    :cond_1a
    if-le v1, v4, :cond_1d

    .line 895
    sub-int/2addr v1, v3

    .line 897
    :cond_1d
    if-le v7, p1, :cond_2a

    if-ge v7, p2, :cond_2a

    aget-object v9, v6, v5

    invoke-virtual {p3, v9}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2a

    .line 898
    move p2, v7

    .line 899
    :cond_2a
    if-le v1, p1, :cond_37

    if-ge v1, p2, :cond_37

    aget-object v9, v6, v5

    invoke-virtual {p3, v9}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_37

    .line 900
    move p2, v1

    .line 888
    :cond_37
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    .line 903
    .end local v1    # "en":I
    .end local v7    # "st":I
    :cond_3a
    return p2
.end method

.method public removeSpan(Ljava/lang/Object;)V
    .registers 4
    .param p1, "what"    # Ljava/lang/Object;

    .prologue
    .line 701
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_4
    if-ltz v0, :cond_f

    .line 702
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_10

    .line 703
    invoke-direct {p0, v0}, Landroid/text/SpannableStringBuilder;->removeSpan(I)V

    .line 707
    :cond_f
    return-void

    .line 701
    :cond_10
    add-int/lit8 v0, v0, -0x1

    goto :goto_4
.end method

.method public bridge synthetic replace(IILjava/lang/CharSequence;)Landroid/text/Editable;
    .registers 5
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/CharSequence;

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2, p3}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;
    .registers 7
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/CharSequence;
    .param p4, "x3"    # I
    .param p5, "x4"    # I

    .prologue
    .line 33
    invoke-virtual/range {p0 .. p5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .registers 10
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "tb"    # Ljava/lang/CharSequence;

    .prologue
    .line 456
    const/4 v4, 0x0

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    .registers 30
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "tb"    # Ljava/lang/CharSequence;
    .param p4, "tbstart"    # I
    .param p5, "tbend"    # I

    .prologue
    .line 462
    const-string/jumbo v6, "replace"

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v6, v1, v2}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    .line 464
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/text/SpannableStringBuilder;->mFilters:[Landroid/text/InputFilter;

    array-length v0, v6

    move/from16 v17, v0

    .line 465
    .local v17, "filtercount":I
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_15
    move/from16 v0, v18

    move/from16 v1, v17

    if-ge v0, v1, :cond_3e

    .line 466
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/text/SpannableStringBuilder;->mFilters:[Landroid/text/InputFilter;

    aget-object v6, v6, v18

    move-object/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p0

    move/from16 v11, p1

    move/from16 v12, p2

    invoke-interface/range {v6 .. v12}, Landroid/text/InputFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v22

    .line 468
    .local v22, "repl":Ljava/lang/CharSequence;
    if-eqz v22, :cond_3b

    .line 469
    move-object/from16 p3, v22

    .line 470
    const/16 p4, 0x0

    .line 471
    invoke-interface/range {v22 .. v22}, Ljava/lang/CharSequence;->length()I

    move-result p5

    .line 465
    :cond_3b
    add-int/lit8 v18, v18, 0x1

    goto :goto_15

    .line 475
    .end local v22    # "repl":Ljava/lang/CharSequence;
    :cond_3e
    sub-int v21, p2, p1

    .line 476
    .local v21, "origLen":I
    sub-int v19, p5, p4

    .line 478
    .local v19, "newLen":I
    if-nez v21, :cond_4d

    if-nez v19, :cond_4d

    invoke-static/range {p3 .. p4}, Landroid/text/SpannableStringBuilder;->hasNonExclusiveExclusiveSpanAt(Ljava/lang/CharSequence;I)Z

    move-result v6

    if-nez v6, :cond_4d

    .line 525
    :goto_4c
    return-object p0

    .line 484
    :cond_4d
    add-int v6, p1, v21

    const-class v7, Landroid/text/TextWatcher;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v6, v7}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [Landroid/text/TextWatcher;

    .line 485
    .local v23, "textWatchers":[Landroid/text/TextWatcher;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, p1

    move/from16 v3, v21

    move/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->sendBeforeTextChanged([Landroid/text/TextWatcher;III)V

    .line 490
    if-eqz v21, :cond_e6

    if-eqz v19, :cond_e6

    const/16 v16, 0x1

    .line 491
    .local v16, "adjustSelection":Z
    :goto_6e
    const/4 v9, 0x0

    .line 492
    .local v9, "selectionStart":I
    const/4 v13, 0x0

    .line 493
    .local v13, "selectionEnd":I
    if-eqz v16, :cond_7a

    .line 494
    invoke-static/range {p0 .. p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v9

    .line 495
    invoke-static/range {p0 .. p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v13

    .line 498
    :cond_7a
    invoke-direct/range {p0 .. p5}, Landroid/text/SpannableStringBuilder;->change(IILjava/lang/CharSequence;II)V

    .line 500
    if-eqz v16, :cond_c5

    .line 501
    move/from16 v0, p1

    if-le v9, v0, :cond_a2

    move/from16 v0, p2

    if-ge v9, v0, :cond_a2

    .line 503
    sub-int v6, v9, p1

    int-to-long v6, v6

    move/from16 v0, v19

    int-to-long v10, v0

    mul-long/2addr v6, v10

    move/from16 v0, v21

    int-to-long v10, v0

    div-long/2addr v6, v10

    long-to-int v0, v6

    move/from16 v20, v0

    .line 504
    .local v20, "offset":I
    add-int v9, p1, v20

    .line 506
    const/4 v7, 0x0

    sget-object v8, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    const/16 v11, 0x22

    move-object/from16 v6, p0

    move v10, v9

    invoke-direct/range {v6 .. v11}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;III)V

    .line 509
    .end local v20    # "offset":I
    :cond_a2
    move/from16 v0, p1

    if-le v13, v0, :cond_c5

    move/from16 v0, p2

    if-ge v13, v0, :cond_c5

    .line 511
    sub-int v6, v13, p1

    int-to-long v6, v6

    move/from16 v0, v19

    int-to-long v10, v0

    mul-long/2addr v6, v10

    move/from16 v0, v21

    int-to-long v10, v0

    div-long/2addr v6, v10

    long-to-int v0, v6

    move/from16 v20, v0

    .line 512
    .restart local v20    # "offset":I
    add-int v13, p1, v20

    .line 514
    const/4 v11, 0x0

    sget-object v12, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    const/16 v15, 0x22

    move-object/from16 v10, p0

    move v14, v13

    invoke-direct/range {v10 .. v15}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;III)V

    .line 519
    .end local v20    # "offset":I
    :cond_c5
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, p1

    move/from16 v3, v21

    move/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->sendTextChanged([Landroid/text/TextWatcher;III)V

    .line 520
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;->sendAfterTextChanged([Landroid/text/TextWatcher;)V

    .line 523
    sub-int v6, v19, v21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v6}, Landroid/text/SpannableStringBuilder;->sendToSpanWatchers(III)V

    goto/16 :goto_4c

    .line 490
    .end local v9    # "selectionStart":I
    .end local v13    # "selectionEnd":I
    .end local v16    # "adjustSelection":Z
    :cond_e6
    const/16 v16, 0x0

    goto :goto_6e
.end method

.method public setFilters([Landroid/text/InputFilter;)V
    .registers 3
    .param p1, "filters"    # [Landroid/text/InputFilter;

    .prologue
    .line 1285
    if-nez p1, :cond_8

    .line 1286
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1289
    :cond_8
    iput-object p1, p0, Landroid/text/SpannableStringBuilder;->mFilters:[Landroid/text/InputFilter;

    .line 1290
    return-void
.end method

.method public setSpan(Ljava/lang/Object;III)V
    .registers 11
    .param p1, "what"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "flags"    # I

    .prologue
    .line 611
    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;III)V

    .line 612
    return-void
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 911
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0, p1, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    return-object v0
.end method

.method public substring(II)Ljava/lang/String;
    .registers 5
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 951
    sub-int v1, p2, p1

    new-array v0, v1, [C

    .line 952
    .local v0, "buf":[C
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    .line 953
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 938
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 939
    .local v1, "len":I
    new-array v0, v1, [C

    .line 941
    .local v0, "buf":[C
    invoke-virtual {p0, v2, v1, v0, v2}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    .line 942
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method
