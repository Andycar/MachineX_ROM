.class Landroid/media/CCParser$CCLineBuilder;
.super Ljava/lang/Object;
.source "ClosedCaptionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/CCParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CCLineBuilder"
.end annotation


# instance fields
.field private final mDisplayChars:Ljava/lang/StringBuilder;

.field private final mMidRowStyles:[Landroid/media/CCParser$StyleCode;

.field private final mPACStyles:[Landroid/media/CCParser$StyleCode;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 483
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/media/CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    .line 485
    iget-object v0, p0, Landroid/media/CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    new-array v0, v0, [Landroid/media/CCParser$StyleCode;

    iput-object v0, p0, Landroid/media/CCParser$CCLineBuilder;->mMidRowStyles:[Landroid/media/CCParser$StyleCode;

    .line 486
    iget-object v0, p0, Landroid/media/CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    new-array v0, v0, [Landroid/media/CCParser$StyleCode;

    iput-object v0, p0, Landroid/media/CCParser$CCLineBuilder;->mPACStyles:[Landroid/media/CCParser$StyleCode;

    .line 487
    return-void
.end method


# virtual methods
.method applyStyleSpan(Landroid/text/SpannableStringBuilder;Landroid/media/CCParser$StyleCode;II)V
    .registers 8
    .param p1, "styledText"    # Landroid/text/SpannableStringBuilder;
    .param p2, "s"    # Landroid/media/CCParser$StyleCode;
    .param p3, "start"    # I
    .param p4, "end"    # I

    .prologue
    const/16 v2, 0x21

    .line 514
    invoke-virtual {p2}, Landroid/media/CCParser$StyleCode;->isItalics()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 515
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p1, v0, p3, p4, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 519
    :cond_11
    invoke-virtual {p2}, Landroid/media/CCParser$StyleCode;->isUnderline()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 520
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p1, v0, p3, p4, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 524
    :cond_1f
    return-void
.end method

.method charAt(I)C
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 504
    iget-object v0, p0, Landroid/media/CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    return v0
.end method

.method getStyledText(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Landroid/text/SpannableStringBuilder;
    .registers 13
    .param p1, "captionStyle"    # Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .prologue
    const/16 v10, 0x20

    .line 527
    new-instance v7, Landroid/text/SpannableStringBuilder;

    iget-object v8, p0, Landroid/media/CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    invoke-direct {v7, v8}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 528
    .local v7, "styledText":Landroid/text/SpannableStringBuilder;
    const/4 v5, -0x1

    .local v5, "start":I
    const/4 v4, 0x0

    .line 529
    .local v4, "next":I
    const/4 v6, -0x1

    .line 530
    .local v6, "styleStart":I
    const/4 v0, 0x0

    .line 531
    .local v0, "curStyle":Landroid/media/CCParser$StyleCode;
    :goto_d
    iget-object v8, p0, Landroid/media/CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-ge v4, v8, :cond_79

    .line 532
    const/4 v3, 0x0

    .line 533
    .local v3, "newStyle":Landroid/media/CCParser$StyleCode;
    iget-object v8, p0, Landroid/media/CCParser$CCLineBuilder;->mMidRowStyles:[Landroid/media/CCParser$StyleCode;

    aget-object v8, v8, v4

    if-eqz v8, :cond_3b

    .line 535
    iget-object v8, p0, Landroid/media/CCParser$CCLineBuilder;->mMidRowStyles:[Landroid/media/CCParser$StyleCode;

    aget-object v3, v8, v4

    .line 543
    :cond_20
    :goto_20
    if-eqz v3, :cond_2b

    .line 544
    move-object v0, v3

    .line 545
    if-ltz v6, :cond_2a

    if-ltz v5, :cond_2a

    .line 546
    invoke-virtual {p0, v7, v3, v6, v4}, Landroid/media/CCParser$CCLineBuilder;->applyStyleSpan(Landroid/text/SpannableStringBuilder;Landroid/media/CCParser$StyleCode;II)V

    .line 548
    :cond_2a
    move v6, v4

    .line 551
    :cond_2b
    iget-object v8, p0, Landroid/media/CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    const/16 v9, 0xa0

    if-eq v8, v9, :cond_4a

    .line 552
    if-gez v5, :cond_38

    .line 553
    move v5, v4

    .line 567
    :cond_38
    :goto_38
    add-int/lit8 v4, v4, 0x1

    .line 568
    goto :goto_d

    .line 536
    :cond_3b
    iget-object v8, p0, Landroid/media/CCParser$CCLineBuilder;->mPACStyles:[Landroid/media/CCParser$StyleCode;

    aget-object v8, v8, v4

    if-eqz v8, :cond_20

    if-ltz v6, :cond_45

    if-gez v5, :cond_20

    .line 541
    :cond_45
    iget-object v8, p0, Landroid/media/CCParser$CCLineBuilder;->mPACStyles:[Landroid/media/CCParser$StyleCode;

    aget-object v3, v8, v4

    goto :goto_20

    .line 555
    :cond_4a
    if-ltz v5, :cond_38

    .line 556
    iget-object v8, p0, Landroid/media/CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    if-ne v8, v10, :cond_73

    move v2, v5

    .line 557
    .local v2, "expandedStart":I
    :goto_55
    iget-object v8, p0, Landroid/media/CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    add-int/lit8 v9, v4, -0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    if-ne v8, v10, :cond_76

    move v1, v4

    .line 558
    .local v1, "expandedEnd":I
    :goto_60
    new-instance v8, Landroid/media/MutableBackgroundColorSpan;

    iget v9, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    invoke-direct {v8, v9}, Landroid/media/MutableBackgroundColorSpan;-><init>(I)V

    const/16 v9, 0x21

    invoke-virtual {v7, v8, v2, v1, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 562
    if-ltz v6, :cond_71

    .line 563
    invoke-virtual {p0, v7, v0, v6, v1}, Landroid/media/CCParser$CCLineBuilder;->applyStyleSpan(Landroid/text/SpannableStringBuilder;Landroid/media/CCParser$StyleCode;II)V

    .line 565
    :cond_71
    const/4 v5, -0x1

    goto :goto_38

    .line 556
    .end local v1    # "expandedEnd":I
    .end local v2    # "expandedStart":I
    :cond_73
    add-int/lit8 v2, v5, -0x1

    goto :goto_55

    .line 557
    .restart local v2    # "expandedStart":I
    :cond_76
    add-int/lit8 v1, v4, 0x1

    goto :goto_60

    .line 570
    .end local v2    # "expandedStart":I
    .end local v3    # "newStyle":Landroid/media/CCParser$StyleCode;
    :cond_79
    return-object v7
.end method

.method length()I
    .registers 2

    .prologue
    .line 508
    iget-object v0, p0, Landroid/media/CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    return v0
.end method

.method setCharAt(IC)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "ch"    # C

    .prologue
    .line 490
    iget-object v0, p0, Landroid/media/CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 491
    iget-object v0, p0, Landroid/media/CCParser$CCLineBuilder;->mMidRowStyles:[Landroid/media/CCParser$StyleCode;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    .line 492
    return-void
.end method

.method setMidRowAt(ILandroid/media/CCParser$StyleCode;)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "m"    # Landroid/media/CCParser$StyleCode;

    .prologue
    .line 495
    iget-object v0, p0, Landroid/media/CCParser$CCLineBuilder;->mDisplayChars:Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, p1, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 496
    iget-object v0, p0, Landroid/media/CCParser$CCLineBuilder;->mMidRowStyles:[Landroid/media/CCParser$StyleCode;

    aput-object p2, v0, p1

    .line 497
    return-void
.end method

.method setPACAt(ILandroid/media/CCParser$PAC;)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "pac"    # Landroid/media/CCParser$PAC;

    .prologue
    .line 500
    iget-object v0, p0, Landroid/media/CCParser$CCLineBuilder;->mPACStyles:[Landroid/media/CCParser$StyleCode;

    aput-object p2, v0, p1

    .line 501
    return-void
.end method
