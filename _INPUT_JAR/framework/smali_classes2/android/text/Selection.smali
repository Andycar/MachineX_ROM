.class public Landroid/text/Selection;
.super Ljava/lang/Object;
.source "Selection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/Selection$1;,
        Landroid/text/Selection$END;,
        Landroid/text/Selection$START;,
        Landroid/text/Selection$PositionIterator;
    }
.end annotation


# static fields
.field public static final SELECTION_END:Ljava/lang/Object;

.field public static final SELECTION_START:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 521
    new-instance v0, Landroid/text/Selection$START;

    invoke-direct {v0, v1}, Landroid/text/Selection$START;-><init>(Landroid/text/Selection$1;)V

    sput-object v0, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    .line 522
    new-instance v0, Landroid/text/Selection$END;

    invoke-direct {v0, v1}, Landroid/text/Selection$END;-><init>(Landroid/text/Selection$1;)V

    sput-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static chooseHorizontal(Landroid/text/Layout;III)I
    .registers 11
    .param p0, "layout"    # Landroid/text/Layout;
    .param p1, "direction"    # I
    .param p2, "off1"    # I
    .param p3, "off2"    # I

    .prologue
    .line 473
    invoke-virtual {p0, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .line 474
    .local v3, "line1":I
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    .line 476
    .local v4, "line2":I
    if-ne v3, v4, :cond_21

    .line 479
    invoke-virtual {p0, p2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    .line 480
    .local v0, "h1":F
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    .line 482
    .local v1, "h2":F
    if-gez p1, :cond_1b

    .line 485
    cmpg-float v6, v0, v1

    if-gez v6, :cond_19

    .line 510
    .end local v0    # "h1":F
    .end local v1    # "h2":F
    .end local p2    # "off1":I
    :cond_18
    :goto_18
    return p2

    .restart local v0    # "h1":F
    .restart local v1    # "h2":F
    .restart local p2    # "off1":I
    :cond_19
    move p2, p3

    .line 488
    goto :goto_18

    .line 492
    :cond_1b
    cmpl-float v6, v0, v1

    if-gtz v6, :cond_18

    move p2, p3

    .line 495
    goto :goto_18

    .line 504
    .end local v0    # "h1":F
    .end local v1    # "h2":F
    :cond_21
    invoke-virtual {p0, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 505
    .local v2, "line":I
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    .line 507
    .local v5, "textdir":I
    if-ne v5, p1, :cond_30

    .line 508
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    goto :goto_18

    .line 510
    :cond_30
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_18
.end method

.method public static extendDown(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .registers 9
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "layout"    # Landroid/text/Layout;

    .prologue
    const/4 v6, 0x1

    .line 338
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 339
    .local v0, "end":I
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 341
    .local v2, "line":I
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_32

    .line 344
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v4

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p1, v5}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    if-ne v4, v5, :cond_2b

    .line 346
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    .line 347
    .local v1, "h":F
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v3

    .line 352
    .end local v1    # "h":F
    .local v3, "move":I
    :goto_27
    invoke-static {p0, v3}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 359
    .end local v3    # "move":I
    :cond_2a
    :goto_2a
    return v6

    .line 349
    :cond_2b
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .restart local v3    # "move":I
    goto :goto_27

    .line 354
    .end local v3    # "move":I
    :cond_32
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v4

    if-eq v0, v4, :cond_2a

    .line 355
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v4

    invoke-static {p0, v4}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    goto :goto_2a
.end method

.method public static extendLeft(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .registers 5
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "layout"    # Landroid/text/Layout;

    .prologue
    const/4 v2, 0x1

    .line 367
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 368
    .local v0, "end":I
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getOffsetToLeftOf(I)I

    move-result v1

    .line 370
    .local v1, "to":I
    if-eq v1, v0, :cond_e

    .line 371
    invoke-static {p0, v1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 375
    :cond_e
    return v2
.end method

.method public static extendRight(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .registers 5
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "layout"    # Landroid/text/Layout;

    .prologue
    const/4 v2, 0x1

    .line 383
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 384
    .local v0, "end":I
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getOffsetToRightOf(I)I

    move-result v1

    .line 386
    .local v1, "to":I
    if-eq v1, v0, :cond_e

    .line 387
    invoke-static {p0, v1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 391
    :cond_e
    return v2
.end method

.method public static final extendSelection(Landroid/text/Spannable;I)V
    .registers 4
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "index"    # I

    .prologue
    .line 148
    sget-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    if-eq v0, p1, :cond_f

    .line 149
    sget-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    const/16 v1, 0x22

    invoke-interface {p0, v0, p1, p1, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 150
    :cond_f
    return-void
.end method

.method public static extendToLeftEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .registers 4
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "layout"    # Landroid/text/Layout;

    .prologue
    .line 395
    const/4 v1, -0x1

    invoke-static {p0, p1, v1}, Landroid/text/Selection;->findEdge(Landroid/text/Spannable;Landroid/text/Layout;I)I

    move-result v0

    .line 396
    .local v0, "where":I
    invoke-static {p0, v0}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 397
    const/4 v1, 0x1

    return v1
.end method

.method public static extendToRightEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .registers 4
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "layout"    # Landroid/text/Layout;

    .prologue
    const/4 v1, 0x1

    .line 401
    invoke-static {p0, p1, v1}, Landroid/text/Selection;->findEdge(Landroid/text/Spannable;Landroid/text/Layout;I)I

    move-result v0

    .line 402
    .local v0, "where":I
    invoke-static {p0, v0}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 403
    return v1
.end method

.method public static extendUp(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .registers 9
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "layout"    # Landroid/text/Layout;

    .prologue
    const/4 v6, 0x1

    .line 309
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 310
    .local v0, "end":I
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 312
    .local v2, "line":I
    if-lez v2, :cond_2c

    .line 315
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v4

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {p1, v5}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    if-ne v4, v5, :cond_25

    .line 317
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    .line 318
    .local v1, "h":F
    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p1, v4, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v3

    .line 323
    .end local v1    # "h":F
    .local v3, "move":I
    :goto_21
    invoke-static {p0, v3}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 330
    .end local v3    # "move":I
    :cond_24
    :goto_24
    return v6

    .line 320
    :cond_25
    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p1, v4}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .restart local v3    # "move":I
    goto :goto_21

    .line 325
    .end local v3    # "move":I
    :cond_2c
    if-eqz v0, :cond_24

    .line 326
    const/4 v4, 0x0

    invoke-static {p0, v4}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    goto :goto_24
.end method

.method private static findEdge(Landroid/text/Spannable;Landroid/text/Layout;I)I
    .registers 8
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "dir"    # I

    .prologue
    .line 455
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    .line 456
    .local v3, "pt":I
    invoke-virtual {p1, v3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 457
    .local v1, "line":I
    invoke-virtual {p1, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    .line 459
    .local v2, "pdir":I
    mul-int v4, p2, v2

    if-gez v4, :cond_15

    .line 460
    invoke-virtual {p1, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    .line 467
    :cond_14
    :goto_14
    return v0

    .line 462
    :cond_15
    invoke-virtual {p1, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v0

    .line 464
    .local v0, "end":I
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v1, v4, :cond_14

    .line 467
    add-int/lit8 v0, v0, -0x1

    goto :goto_14
.end method

.method public static final getSelectionEnd(Ljava/lang/CharSequence;)I
    .registers 2
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 50
    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_d

    .line 51
    check-cast p0, Landroid/text/Spanned;

    .end local p0    # "text":Ljava/lang/CharSequence;
    sget-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 53
    :goto_c
    return v0

    .restart local p0    # "text":Ljava/lang/CharSequence;
    :cond_d
    const/4 v0, -0x1

    goto :goto_c
.end method

.method public static final getSelectionStart(Ljava/lang/CharSequence;)I
    .registers 2
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 39
    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_d

    .line 40
    check-cast p0, Landroid/text/Spanned;

    .end local p0    # "text":Ljava/lang/CharSequence;
    sget-object v0, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 42
    :goto_c
    return v0

    .restart local p0    # "text":Ljava/lang/CharSequence;
    :cond_d
    const/4 v0, -0x1

    goto :goto_c
.end method

.method public static moveDown(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .registers 12
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "layout"    # Landroid/text/Layout;

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 216
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v6

    .line 217
    .local v6, "start":I
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 219
    .local v0, "end":I
    if-eq v6, v0, :cond_22

    .line 220
    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 221
    .local v4, "min":I
    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 223
    .local v3, "max":I
    invoke-static {p0, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 225
    if-nez v4, :cond_20

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v9

    if-ne v3, v9, :cond_20

    .line 252
    .end local v3    # "max":I
    .end local v4    # "min":I
    :cond_1f
    :goto_1f
    return v7

    .restart local v3    # "max":I
    .restart local v4    # "min":I
    :cond_20
    move v7, v8

    .line 229
    goto :goto_1f

    .line 231
    .end local v3    # "max":I
    .end local v4    # "min":I
    :cond_22
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 233
    .local v2, "line":I
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ge v2, v9, :cond_50

    .line 236
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v7

    add-int/lit8 v9, v2, 0x1

    invoke-virtual {p1, v9}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v9

    if-ne v7, v9, :cond_49

    .line 238
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    .line 239
    .local v1, "h":F
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p1, v7, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v5

    .line 244
    .end local v1    # "h":F
    .local v5, "move":I
    :goto_44
    invoke-static {p0, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    move v7, v8

    .line 245
    goto :goto_1f

    .line 241
    .end local v5    # "move":I
    :cond_49
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p1, v7}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .restart local v5    # "move":I
    goto :goto_44

    .line 246
    .end local v5    # "move":I
    :cond_50
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v9

    if-eq v0, v9, :cond_1f

    .line 247
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v7

    invoke-static {p0, v7}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    move v7, v8

    .line 248
    goto :goto_1f
.end method

.method public static moveLeft(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .registers 7
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "layout"    # Landroid/text/Layout;

    .prologue
    const/4 v3, 0x1

    .line 261
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 262
    .local v1, "start":I
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 264
    .local v0, "end":I
    if-eq v1, v0, :cond_14

    .line 265
    const/4 v4, -0x1

    invoke-static {p1, v4, v1, v0}, Landroid/text/Selection;->chooseHorizontal(Landroid/text/Layout;III)I

    move-result v4

    invoke-static {p0, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 276
    :goto_13
    return v3

    .line 268
    :cond_14
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getOffsetToLeftOf(I)I

    move-result v2

    .line 270
    .local v2, "to":I
    if-eq v2, v0, :cond_1e

    .line 271
    invoke-static {p0, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_13

    .line 276
    :cond_1e
    const/4 v3, 0x0

    goto :goto_13
.end method

.method public static moveRight(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .registers 7
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "layout"    # Landroid/text/Layout;

    .prologue
    const/4 v3, 0x1

    .line 286
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 287
    .local v1, "start":I
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 289
    .local v0, "end":I
    if-eq v1, v0, :cond_13

    .line 290
    invoke-static {p1, v3, v1, v0}, Landroid/text/Selection;->chooseHorizontal(Landroid/text/Layout;III)I

    move-result v4

    invoke-static {p0, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 301
    :goto_12
    return v3

    .line 293
    :cond_13
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getOffsetToRightOf(I)I

    move-result v2

    .line 295
    .local v2, "to":I
    if-eq v2, v0, :cond_1d

    .line 296
    invoke-static {p0, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_12

    .line 301
    :cond_1d
    const/4 v3, 0x0

    goto :goto_12
.end method

.method public static moveToFollowing(Landroid/text/Spannable;Landroid/text/Selection$PositionIterator;Z)Z
    .registers 5
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "iter"    # Landroid/text/Selection$PositionIterator;
    .param p2, "extendSelection"    # Z

    .prologue
    .line 443
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/text/Selection$PositionIterator;->following(I)I

    move-result v0

    .line 444
    .local v0, "offset":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    .line 445
    if-eqz p2, :cond_12

    .line 446
    invoke-static {p0, v0}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 451
    :cond_10
    :goto_10
    const/4 v1, 0x1

    return v1

    .line 448
    :cond_12
    invoke-static {p0, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_10
.end method

.method public static moveToLeftEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .registers 4
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "layout"    # Landroid/text/Layout;

    .prologue
    .line 407
    const/4 v1, -0x1

    invoke-static {p0, p1, v1}, Landroid/text/Selection;->findEdge(Landroid/text/Spannable;Landroid/text/Layout;I)I

    move-result v0

    .line 408
    .local v0, "where":I
    invoke-static {p0, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 409
    const/4 v1, 0x1

    return v1
.end method

.method public static moveToPreceding(Landroid/text/Spannable;Landroid/text/Selection$PositionIterator;Z)Z
    .registers 5
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "iter"    # Landroid/text/Selection$PositionIterator;
    .param p2, "extendSelection"    # Z

    .prologue
    .line 429
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/text/Selection$PositionIterator;->preceding(I)I

    move-result v0

    .line 430
    .local v0, "offset":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    .line 431
    if-eqz p2, :cond_12

    .line 432
    invoke-static {p0, v0}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 437
    :cond_10
    :goto_10
    const/4 v1, 0x1

    return v1

    .line 434
    :cond_12
    invoke-static {p0, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_10
.end method

.method public static moveToRightEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .registers 4
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "layout"    # Landroid/text/Layout;

    .prologue
    const/4 v1, 0x1

    .line 413
    invoke-static {p0, p1, v1}, Landroid/text/Selection;->findEdge(Landroid/text/Spannable;Landroid/text/Layout;I)I

    move-result v0

    .line 414
    .local v0, "where":I
    invoke-static {p0, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 415
    return v1
.end method

.method public static moveUp(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .registers 12
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "layout"    # Landroid/text/Layout;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 170
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v6

    .line 171
    .local v6, "start":I
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 173
    .local v0, "end":I
    if-eq v6, v0, :cond_22

    .line 174
    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 175
    .local v4, "min":I
    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 177
    .local v3, "max":I
    invoke-static {p0, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 179
    if-nez v4, :cond_20

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v9

    if-ne v3, v9, :cond_20

    .line 206
    .end local v3    # "max":I
    .end local v4    # "min":I
    :cond_1f
    :goto_1f
    return v7

    .restart local v3    # "max":I
    .restart local v4    # "min":I
    :cond_20
    move v7, v8

    .line 183
    goto :goto_1f

    .line 185
    .end local v3    # "max":I
    .end local v4    # "min":I
    :cond_22
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 187
    .local v2, "line":I
    if-lez v2, :cond_4a

    .line 190
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v7

    add-int/lit8 v9, v2, -0x1

    invoke-virtual {p1, v9}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v9

    if-ne v7, v9, :cond_43

    .line 192
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    .line 193
    .local v1, "h":F
    add-int/lit8 v7, v2, -0x1

    invoke-virtual {p1, v7, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v5

    .line 198
    .end local v1    # "h":F
    .local v5, "move":I
    :goto_3e
    invoke-static {p0, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    move v7, v8

    .line 199
    goto :goto_1f

    .line 195
    .end local v5    # "move":I
    :cond_43
    add-int/lit8 v7, v2, -0x1

    invoke-virtual {p1, v7}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .restart local v5    # "move":I
    goto :goto_3e

    .line 200
    .end local v5    # "move":I
    :cond_4a
    if-eqz v0, :cond_1f

    .line 201
    invoke-static {p0, v7}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    move v7, v8

    .line 202
    goto :goto_1f
.end method

.method public static final removeSelection(Landroid/text/Spannable;)V
    .registers 2
    .param p0, "text"    # Landroid/text/Spannable;

    .prologue
    .line 156
    sget-object v0, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 157
    sget-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 158
    return-void
.end method

.method public static final selectAll(Landroid/text/Spannable;)V
    .registers 3
    .param p0, "text"    # Landroid/text/Spannable;

    .prologue
    .line 141
    const/4 v0, 0x0

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v1

    invoke-static {p0, v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 142
    return-void
.end method

.method public static final setSelection(Landroid/text/Spannable;I)V
    .registers 2
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "index"    # I

    .prologue
    .line 134
    invoke-static {p0, p1, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 135
    return-void
.end method

.method public static setSelection(Landroid/text/Spannable;II)V
    .registers 20
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "start"    # I
    .param p2, "stop"    # I

    .prologue
    .line 73
    invoke-static/range {p0 .. p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v14

    .line 74
    .local v14, "ostart":I
    invoke-static/range {p0 .. p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v13

    .line 79
    .local v13, "oend":I
    invoke-interface/range {p0 .. p0}, Landroid/text/Spannable;->length()I

    move-result v6

    .line 80
    .local v6, "len":I
    if-lez p1, :cond_12

    move/from16 v0, p1

    if-lt v0, v6, :cond_18

    :cond_12
    if-lez p2, :cond_c6

    move/from16 v0, p2

    if-ge v0, v6, :cond_c6

    .line 81
    :cond_18
    const/4 v12, 0x0

    .line 83
    .local v12, "needCheckPosition":Z
    if-lez p1, :cond_2b

    move/from16 v0, p1

    if-ge v0, v6, :cond_2b

    .line 84
    invoke-interface/range {p0 .. p1}, Landroid/text/Spannable;->charAt(I)C

    move-result v15

    .line 85
    .local v15, "startChar":C
    invoke-static {v15}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_70

    .line 86
    add-int/lit8 p1, p1, 0x1

    .line 93
    .end local v15    # "startChar":C
    :cond_2b
    :goto_2b
    if-lez p2, :cond_41

    move/from16 v0, p2

    if-ge v0, v6, :cond_41

    .line 94
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/text/Spannable;->charAt(I)C

    move-result v16

    .line 95
    .local v16, "stopChar":C
    invoke-static/range {v16 .. v16}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_90

    .line 96
    add-int/lit8 p2, p2, 0x1

    .line 105
    .end local v16    # "stopChar":C
    :cond_41
    :goto_41
    if-eqz v12, :cond_c6

    .line 106
    new-array v10, v6, [F

    .line 107
    .local v10, "widths":[F
    new-array v4, v6, [C

    .line 108
    .local v4, "chars":[C
    new-instance v3, Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-direct {v3, v5}, Landroid/graphics/Paint;-><init>(I)V

    .line 110
    .local v3, "p":Landroid/graphics/Paint;
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v5, v6, v4, v7}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 111
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move v8, v6

    invoke-virtual/range {v3 .. v11}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIIZ[FI)F

    .line 113
    :goto_5c
    move/from16 v0, p1

    if-ge v0, v6, :cond_b2

    aget v5, v10, p1

    const/4 v7, 0x0

    cmpl-float v5, v5, v7

    if-nez v5, :cond_b2

    aget-char v5, v4, p1

    const/16 v7, 0xa

    if-eq v5, v7, :cond_b2

    .line 114
    add-int/lit8 p1, p1, 0x1

    goto :goto_5c

    .line 88
    .end local v3    # "p":Landroid/graphics/Paint;
    .end local v4    # "chars":[C
    .end local v10    # "widths":[F
    .restart local v15    # "startChar":C
    :cond_70
    invoke-static {v15}, Landroid/text/TextUtils;->isIndianChar(C)Z

    move-result v5

    if-nez v5, :cond_8e

    invoke-static {v15}, Landroid/text/TextUtils;->isThaiChar(C)Z

    move-result v5

    if-nez v5, :cond_8e

    invoke-static {v15}, Landroid/text/TextUtils;->isKhmerChar(C)Z

    move-result v5

    if-nez v5, :cond_8e

    invoke-static {v15}, Landroid/text/TextUtils;->isMyanmarChar(C)Z

    move-result v5

    if-nez v5, :cond_8e

    invoke-static {v15}, Landroid/text/TextUtils;->isLaoChar(C)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 90
    :cond_8e
    const/4 v12, 0x1

    goto :goto_2b

    .line 98
    .end local v15    # "startChar":C
    .restart local v16    # "stopChar":C
    :cond_90
    if-nez v12, :cond_41

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isIndianChar(C)Z

    move-result v5

    if-nez v5, :cond_b0

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isThaiChar(C)Z

    move-result v5

    if-nez v5, :cond_b0

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isKhmerChar(C)Z

    move-result v5

    if-nez v5, :cond_b0

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isMyanmarChar(C)Z

    move-result v5

    if-nez v5, :cond_b0

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isLaoChar(C)Z

    move-result v5

    if-eqz v5, :cond_41

    .line 101
    :cond_b0
    const/4 v12, 0x1

    goto :goto_41

    .line 116
    .end local v16    # "stopChar":C
    .restart local v3    # "p":Landroid/graphics/Paint;
    .restart local v4    # "chars":[C
    .restart local v10    # "widths":[F
    :cond_b2
    :goto_b2
    move/from16 v0, p2

    if-ge v0, v6, :cond_c6

    aget v5, v10, p2

    const/4 v7, 0x0

    cmpl-float v5, v5, v7

    if-nez v5, :cond_c6

    aget-char v5, v4, p2

    const/16 v7, 0xa

    if-eq v5, v7, :cond_c6

    .line 117
    add-int/lit8 p2, p2, 0x1

    goto :goto_b2

    .line 122
    .end local v3    # "p":Landroid/graphics/Paint;
    .end local v4    # "chars":[C
    .end local v10    # "widths":[F
    .end local v12    # "needCheckPosition":Z
    :cond_c6
    move/from16 v0, p1

    if-ne v14, v0, :cond_ce

    move/from16 v0, p2

    if-eq v13, v0, :cond_e8

    .line 123
    :cond_ce
    sget-object v5, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    const/16 v7, 0x222

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p1

    invoke-interface {v0, v5, v1, v2, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 125
    sget-object v5, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    const/16 v7, 0x22

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p2

    invoke-interface {v0, v5, v1, v2, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 128
    :cond_e8
    return-void
.end method
