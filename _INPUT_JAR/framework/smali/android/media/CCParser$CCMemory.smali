.class Landroid/media/CCParser$CCMemory;
.super Ljava/lang/Object;
.source "ClosedCaptionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/CCParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CCMemory"
.end annotation


# instance fields
.field private final mBlankLine:Ljava/lang/String;

.field private mCol:I

.field private final mLines:[Landroid/media/CCParser$CCLineBuilder;

.field private mRow:I


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    .line 583
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 579
    const/16 v1, 0x11

    new-array v1, v1, [Landroid/media/CCParser$CCLineBuilder;

    iput-object v1, p0, Landroid/media/CCParser$CCMemory;->mLines:[Landroid/media/CCParser$CCLineBuilder;

    .line 584
    const/16 v1, 0x22

    new-array v0, v1, [C

    .line 585
    .local v0, "blank":[C
    const/16 v1, 0xa0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 586
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    iput-object v1, p0, Landroid/media/CCParser$CCMemory;->mBlankLine:Ljava/lang/String;

    .line 587
    return-void
.end method

.method static synthetic access$100(Landroid/media/CCParser$CCMemory;II)V
    .registers 3
    .param p0, "x0"    # Landroid/media/CCParser$CCMemory;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 577
    invoke-direct {p0, p1, p2}, Landroid/media/CCParser$CCMemory;->moveBaselineTo(II)V

    return-void
.end method

.method private static clamp(III)I
    .registers 3
    .param p0, "x"    # I
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 685
    if-ge p0, p1, :cond_3

    .end local p1    # "min":I
    :goto_2
    return p1

    .restart local p1    # "min":I
    :cond_3
    if-le p0, p2, :cond_7

    move p1, p2

    goto :goto_2

    :cond_7
    move p1, p0

    goto :goto_2
.end method

.method private getLineBuffer(I)Landroid/media/CCParser$CCLineBuilder;
    .registers 5
    .param p1, "row"    # I

    .prologue
    .line 735
    iget-object v0, p0, Landroid/media/CCParser$CCMemory;->mLines:[Landroid/media/CCParser$CCLineBuilder;

    aget-object v0, v0, p1

    if-nez v0, :cond_11

    .line 736
    iget-object v0, p0, Landroid/media/CCParser$CCMemory;->mLines:[Landroid/media/CCParser$CCLineBuilder;

    new-instance v1, Landroid/media/CCParser$CCLineBuilder;

    iget-object v2, p0, Landroid/media/CCParser$CCMemory;->mBlankLine:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/media/CCParser$CCLineBuilder;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, p1

    .line 738
    :cond_11
    iget-object v0, p0, Landroid/media/CCParser$CCMemory;->mLines:[Landroid/media/CCParser$CCLineBuilder;

    aget-object v0, v0, p1

    return-object v0
.end method

.method private moveBaselineTo(II)V
    .registers 10
    .param p1, "baseRow"    # I
    .param p2, "windowSize"    # I

    .prologue
    const/4 v6, 0x0

    .line 702
    iget v2, p0, Landroid/media/CCParser$CCMemory;->mRow:I

    if-ne v2, p1, :cond_6

    .line 732
    :cond_5
    return-void

    .line 705
    :cond_6
    move v0, p2

    .line 706
    .local v0, "actualWindowSize":I
    if-ge p1, v0, :cond_a

    .line 707
    move v0, p1

    .line 709
    :cond_a
    iget v2, p0, Landroid/media/CCParser$CCMemory;->mRow:I

    if-ge v2, v0, :cond_10

    .line 710
    iget v0, p0, Landroid/media/CCParser$CCMemory;->mRow:I

    .line 714
    :cond_10
    iget v2, p0, Landroid/media/CCParser$CCMemory;->mRow:I

    if-ge p1, v2, :cond_28

    .line 716
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_16
    if-ltz v1, :cond_3b

    .line 717
    iget-object v2, p0, Landroid/media/CCParser$CCMemory;->mLines:[Landroid/media/CCParser$CCLineBuilder;

    sub-int v3, p1, v1

    iget-object v4, p0, Landroid/media/CCParser$CCMemory;->mLines:[Landroid/media/CCParser$CCLineBuilder;

    iget v5, p0, Landroid/media/CCParser$CCMemory;->mRow:I

    sub-int/2addr v5, v1

    aget-object v4, v4, v5

    aput-object v4, v2, v3

    .line 716
    add-int/lit8 v1, v1, -0x1

    goto :goto_16

    .line 721
    .end local v1    # "i":I
    :cond_28
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_29
    if-ge v1, v0, :cond_3b

    .line 722
    iget-object v2, p0, Landroid/media/CCParser$CCMemory;->mLines:[Landroid/media/CCParser$CCLineBuilder;

    sub-int v3, p1, v1

    iget-object v4, p0, Landroid/media/CCParser$CCMemory;->mLines:[Landroid/media/CCParser$CCLineBuilder;

    iget v5, p0, Landroid/media/CCParser$CCMemory;->mRow:I

    sub-int/2addr v5, v1

    aget-object v4, v4, v5

    aput-object v4, v2, v3

    .line 721
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 726
    :cond_3b
    const/4 v1, 0x0

    :goto_3c
    sub-int v2, p1, p2

    if-gt v1, v2, :cond_47

    .line 727
    iget-object v2, p0, Landroid/media/CCParser$CCMemory;->mLines:[Landroid/media/CCParser$CCLineBuilder;

    aput-object v6, v2, v1

    .line 726
    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    .line 729
    :cond_47
    add-int/lit8 v1, p1, 0x1

    :goto_49
    iget-object v2, p0, Landroid/media/CCParser$CCMemory;->mLines:[Landroid/media/CCParser$CCLineBuilder;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    .line 730
    iget-object v2, p0, Landroid/media/CCParser$CCMemory;->mLines:[Landroid/media/CCParser$CCLineBuilder;

    aput-object v6, v2, v1

    .line 729
    add-int/lit8 v1, v1, 0x1

    goto :goto_49
.end method

.method private moveCursorByCol(I)V
    .registers 5
    .param p1, "col"    # I

    .prologue
    .line 698
    iget v0, p0, Landroid/media/CCParser$CCMemory;->mCol:I

    add-int/2addr v0, p1

    const/4 v1, 0x1

    const/16 v2, 0x20

    invoke-static {v0, v1, v2}, Landroid/media/CCParser$CCMemory;->clamp(III)I

    move-result v0

    iput v0, p0, Landroid/media/CCParser$CCMemory;->mCol:I

    .line 699
    return-void
.end method

.method private moveCursorTo(II)V
    .registers 5
    .param p1, "row"    # I
    .param p2, "col"    # I

    .prologue
    const/4 v1, 0x1

    .line 689
    const/16 v0, 0xf

    invoke-static {p1, v1, v0}, Landroid/media/CCParser$CCMemory;->clamp(III)I

    move-result v0

    iput v0, p0, Landroid/media/CCParser$CCMemory;->mRow:I

    .line 690
    const/16 v0, 0x20

    invoke-static {p2, v1, v0}, Landroid/media/CCParser$CCMemory;->clamp(III)I

    move-result v0

    iput v0, p0, Landroid/media/CCParser$CCMemory;->mCol:I

    .line 691
    return-void
.end method

.method private moveCursorToRow(I)V
    .registers 4
    .param p1, "row"    # I

    .prologue
    .line 694
    const/4 v0, 0x1

    const/16 v1, 0xf

    invoke-static {p1, v0, v1}, Landroid/media/CCParser$CCMemory;->clamp(III)I

    move-result v0

    iput v0, p0, Landroid/media/CCParser$CCMemory;->mRow:I

    .line 695
    return-void
.end method


# virtual methods
.method bs()V
    .registers 4

    .prologue
    const/16 v2, 0xa0

    .line 617
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Landroid/media/CCParser$CCMemory;->moveCursorByCol(I)V

    .line 618
    iget-object v0, p0, Landroid/media/CCParser$CCMemory;->mLines:[Landroid/media/CCParser$CCLineBuilder;

    iget v1, p0, Landroid/media/CCParser$CCMemory;->mRow:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_2a

    .line 619
    iget-object v0, p0, Landroid/media/CCParser$CCMemory;->mLines:[Landroid/media/CCParser$CCLineBuilder;

    iget v1, p0, Landroid/media/CCParser$CCMemory;->mRow:I

    aget-object v0, v0, v1

    iget v1, p0, Landroid/media/CCParser$CCMemory;->mCol:I

    invoke-virtual {v0, v1, v2}, Landroid/media/CCParser$CCLineBuilder;->setCharAt(IC)V

    .line 620
    iget v0, p0, Landroid/media/CCParser$CCMemory;->mCol:I

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_2a

    .line 624
    iget-object v0, p0, Landroid/media/CCParser$CCMemory;->mLines:[Landroid/media/CCParser$CCLineBuilder;

    iget v1, p0, Landroid/media/CCParser$CCMemory;->mRow:I

    aget-object v0, v0, v1

    const/16 v1, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/media/CCParser$CCLineBuilder;->setCharAt(IC)V

    .line 627
    :cond_2a
    return-void
.end method

.method cr()V
    .registers 3

    .prologue
    .line 630
    iget v0, p0, Landroid/media/CCParser$CCMemory;->mRow:I

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/media/CCParser$CCMemory;->moveCursorTo(II)V

    .line 631
    return-void
.end method

.method der()V
    .registers 6

    .prologue
    const/16 v4, 0xa0

    .line 599
    iget-object v2, p0, Landroid/media/CCParser$CCMemory;->mLines:[Landroid/media/CCParser$CCLineBuilder;

    iget v3, p0, Landroid/media/CCParser$CCMemory;->mRow:I

    aget-object v2, v2, v3

    if-eqz v2, :cond_3d

    .line 600
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    iget v2, p0, Landroid/media/CCParser$CCMemory;->mCol:I

    if-ge v0, v2, :cond_36

    .line 601
    iget-object v2, p0, Landroid/media/CCParser$CCMemory;->mLines:[Landroid/media/CCParser$CCLineBuilder;

    iget v3, p0, Landroid/media/CCParser$CCMemory;->mRow:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Landroid/media/CCParser$CCLineBuilder;->charAt(I)C

    move-result v2

    if-eq v2, v4, :cond_33

    .line 602
    iget v1, p0, Landroid/media/CCParser$CCMemory;->mCol:I

    .local v1, "j":I
    :goto_1d
    iget-object v2, p0, Landroid/media/CCParser$CCMemory;->mLines:[Landroid/media/CCParser$CCLineBuilder;

    iget v3, p0, Landroid/media/CCParser$CCMemory;->mRow:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/media/CCParser$CCLineBuilder;->length()I

    move-result v2

    if-ge v1, v2, :cond_3d

    .line 603
    iget-object v2, p0, Landroid/media/CCParser$CCMemory;->mLines:[Landroid/media/CCParser$CCLineBuilder;

    aget-object v2, v2, v1

    invoke-virtual {v2, v1, v4}, Landroid/media/CCParser$CCLineBuilder;->setCharAt(IC)V

    .line 602
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 600
    .end local v1    # "j":I
    :cond_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 608
    :cond_36
    iget-object v2, p0, Landroid/media/CCParser$CCMemory;->mLines:[Landroid/media/CCParser$CCLineBuilder;

    iget v3, p0, Landroid/media/CCParser$CCMemory;->mRow:I

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 610
    .end local v0    # "i":I
    :cond_3d
    return-void
.end method

.method erase()V
    .registers 4

    .prologue
    .line 591
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/media/CCParser$CCMemory;->mLines:[Landroid/media/CCParser$CCLineBuilder;

    array-length v1, v1

    if-ge v0, v1, :cond_e

    .line 592
    iget-object v1, p0, Landroid/media/CCParser$CCMemory;->mLines:[Landroid/media/CCParser$CCLineBuilder;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 591
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 594
    :cond_e
    const/16 v1, 0xf

    iput v1, p0, Landroid/media/CCParser$CCMemory;->mRow:I

    .line 595
    const/4 v1, 0x1

    iput v1, p0, Landroid/media/CCParser$CCMemory;->mCol:I

    .line 596
    return-void
.end method

.method getStyledText(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)[Landroid/text/SpannableStringBuilder;
    .registers 6
    .param p1, "captionStyle"    # Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .prologue
    const/16 v3, 0xf

    .line 675
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 677
    .local v1, "rows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/SpannableStringBuilder;>;"
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_8
    if-gt v0, v3, :cond_20

    .line 678
    iget-object v2, p0, Landroid/media/CCParser$CCMemory;->mLines:[Landroid/media/CCParser$CCLineBuilder;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1e

    iget-object v2, p0, Landroid/media/CCParser$CCMemory;->mLines:[Landroid/media/CCParser$CCLineBuilder;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Landroid/media/CCParser$CCLineBuilder;->getStyledText(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    :goto_18
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 677
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 678
    :cond_1e
    const/4 v2, 0x0

    goto :goto_18

    .line 681
    :cond_20
    new-array v2, v3, [Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/SpannableStringBuilder;

    return-object v2
.end method

.method rollUp(I)V
    .registers 9
    .param p1, "windowSize"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 635
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    iget v2, p0, Landroid/media/CCParser$CCMemory;->mRow:I

    sub-int/2addr v2, p1

    if-gt v0, v2, :cond_f

    .line 636
    iget-object v2, p0, Landroid/media/CCParser$CCMemory;->mLines:[Landroid/media/CCParser$CCLineBuilder;

    aput-object v6, v2, v0

    .line 635
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 638
    :cond_f
    iget v2, p0, Landroid/media/CCParser$CCMemory;->mRow:I

    sub-int/2addr v2, p1

    add-int/lit8 v1, v2, 0x1

    .line 639
    .local v1, "startRow":I
    if-ge v1, v5, :cond_17

    .line 640
    const/4 v1, 0x1

    .line 642
    :cond_17
    move v0, v1

    :goto_18
    iget v2, p0, Landroid/media/CCParser$CCMemory;->mRow:I

    if-ge v0, v2, :cond_29

    .line 643
    iget-object v2, p0, Landroid/media/CCParser$CCMemory;->mLines:[Landroid/media/CCParser$CCLineBuilder;

    iget-object v3, p0, Landroid/media/CCParser$CCMemory;->mLines:[Landroid/media/CCParser$CCLineBuilder;

    add-int/lit8 v4, v0, 0x1

    aget-object v3, v3, v4

    aput-object v3, v2, v0

    .line 642
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 645
    :cond_29
    iget v0, p0, Landroid/media/CCParser$CCMemory;->mRow:I

    :goto_2b
    iget-object v2, p0, Landroid/media/CCParser$CCMemory;->mLines:[Landroid/media/CCParser$CCLineBuilder;

    array-length v2, v2

    if-ge v0, v2, :cond_37

    .line 647
    iget-object v2, p0, Landroid/media/CCParser$CCMemory;->mLines:[Landroid/media/CCParser$CCLineBuilder;

    aput-object v6, v2, v0

    .line 645
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 650
    :cond_37
    iput v5, p0, Landroid/media/CCParser$CCMemory;->mCol:I

    .line 651
    return-void
.end method

.method tab(I)V
    .registers 2
    .param p1, "tabs"    # I

    .prologue
    .line 613
    invoke-direct {p0, p1}, Landroid/media/CCParser$CCMemory;->moveCursorByCol(I)V

    .line 614
    return-void
.end method

.method writeMidRowCode(Landroid/media/CCParser$StyleCode;)V
    .registers 4
    .param p1, "m"    # Landroid/media/CCParser$StyleCode;

    .prologue
    .line 661
    iget v0, p0, Landroid/media/CCParser$CCMemory;->mRow:I

    invoke-direct {p0, v0}, Landroid/media/CCParser$CCMemory;->getLineBuffer(I)Landroid/media/CCParser$CCLineBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/CCParser$CCMemory;->mCol:I

    invoke-virtual {v0, v1, p1}, Landroid/media/CCParser$CCLineBuilder;->setMidRowAt(ILandroid/media/CCParser$StyleCode;)V

    .line 662
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/media/CCParser$CCMemory;->moveCursorByCol(I)V

    .line 663
    return-void
.end method

.method writePAC(Landroid/media/CCParser$PAC;)V
    .registers 4
    .param p1, "pac"    # Landroid/media/CCParser$PAC;

    .prologue
    .line 666
    invoke-virtual {p1}, Landroid/media/CCParser$PAC;->isIndentPAC()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 667
    invoke-virtual {p1}, Landroid/media/CCParser$PAC;->getRow()I

    move-result v0

    invoke-virtual {p1}, Landroid/media/CCParser$PAC;->getCol()I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/media/CCParser$CCMemory;->moveCursorTo(II)V

    .line 671
    :goto_11
    iget v0, p0, Landroid/media/CCParser$CCMemory;->mRow:I

    invoke-direct {p0, v0}, Landroid/media/CCParser$CCMemory;->getLineBuffer(I)Landroid/media/CCParser$CCLineBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/CCParser$CCMemory;->mCol:I

    invoke-virtual {v0, v1, p1}, Landroid/media/CCParser$CCLineBuilder;->setPACAt(ILandroid/media/CCParser$PAC;)V

    .line 672
    return-void

    .line 669
    :cond_1d
    invoke-virtual {p1}, Landroid/media/CCParser$PAC;->getRow()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/media/CCParser$CCMemory;->moveCursorToRow(I)V

    goto :goto_11
.end method

.method writeText(Ljava/lang/String;)V
    .registers 6
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 654
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 655
    iget v1, p0, Landroid/media/CCParser$CCMemory;->mRow:I

    invoke-direct {p0, v1}, Landroid/media/CCParser$CCMemory;->getLineBuffer(I)Landroid/media/CCParser$CCLineBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/CCParser$CCMemory;->mCol:I

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/media/CCParser$CCLineBuilder;->setCharAt(IC)V

    .line 656
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/media/CCParser$CCMemory;->moveCursorByCol(I)V

    .line 654
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 658
    :cond_1d
    return-void
.end method
