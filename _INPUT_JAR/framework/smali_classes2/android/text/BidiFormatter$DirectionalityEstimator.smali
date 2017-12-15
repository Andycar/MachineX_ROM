.class Landroid/text/BidiFormatter$DirectionalityEstimator;
.super Ljava/lang/Object;
.source "BidiFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/BidiFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DirectionalityEstimator"
.end annotation


# static fields
.field private static final DIR_TYPE_CACHE:[B

.field private static final DIR_TYPE_CACHE_SIZE:I = 0x700


# instance fields
.field private charIndex:I

.field private final isHtml:Z

.field private lastChar:C

.field private final length:I

.field private final text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/16 v3, 0x700

    .line 515
    new-array v1, v3, [B

    sput-object v1, Landroid/text/BidiFormatter$DirectionalityEstimator;->DIR_TYPE_CACHE:[B

    .line 516
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v3, :cond_14

    .line 517
    sget-object v1, Landroid/text/BidiFormatter$DirectionalityEstimator;->DIR_TYPE_CACHE:[B

    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v2

    aput-byte v2, v1, v0

    .line 516
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 519
    :cond_14
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "isHtml"    # Z

    .prologue
    .line 559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 560
    iput-object p1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    .line 561
    iput-boolean p2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->isHtml:Z

    .line 562
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->length:I

    .line 563
    return-void
.end method

.method private static getCachedDirectionality(C)B
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 734
    const/16 v0, 0x700

    if-ge p0, v0, :cond_9

    sget-object v0, Landroid/text/BidiFormatter$DirectionalityEstimator;->DIR_TYPE_CACHE:[B

    aget-byte v0, v0, p0

    :goto_8
    return v0

    :cond_9
    invoke-static {p0}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v0

    goto :goto_8
.end method

.method private skipEntityBackward()B
    .registers 5

    .prologue
    const/16 v3, 0x3b

    .line 875
    iget v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 876
    .local v0, "initialCharIndex":I
    :cond_4
    iget v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v1, :cond_23

    .line 877
    iget-object v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    iget v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iput-char v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 878
    iget-char v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v2, 0x26

    if-ne v1, v2, :cond_1f

    .line 879
    const/16 v1, 0xc

    .line 887
    :goto_1e
    return v1

    .line 881
    :cond_1f
    iget-char v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    if-ne v1, v3, :cond_4

    .line 885
    :cond_23
    iput v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 886
    iput-char v3, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 887
    const/16 v1, 0xd

    goto :goto_1e
.end method

.method private skipEntityForward()B
    .registers 4

    .prologue
    .line 860
    :cond_0
    iget v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->length:I

    if-ge v0, v1, :cond_18

    iget-object v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    iget v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_0

    .line 861
    :cond_18
    const/16 v0, 0xc

    return v0
.end method

.method private skipTagBackward()B
    .registers 6

    .prologue
    const/16 v4, 0x3e

    .line 832
    iget v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 833
    .local v0, "initialCharIndex":I
    :cond_4
    iget v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v2, :cond_23

    .line 834
    iget-object v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    iget v3, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iput-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 835
    iget-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_1f

    .line 837
    const/16 v2, 0xc

    .line 851
    :goto_1e
    return v2

    .line 839
    :cond_1f
    iget-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    if-ne v2, v4, :cond_2a

    .line 849
    :cond_23
    iput v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 850
    iput-char v4, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 851
    const/16 v2, 0xd

    goto :goto_1e

    .line 842
    :cond_2a
    iget-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x22

    if-eq v2, v3, :cond_36

    iget-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x27

    if-ne v2, v3, :cond_4

    .line 844
    :cond_36
    iget-char v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 845
    .local v1, "quote":C
    :goto_38
    iget v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v2, :cond_4

    iget-object v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    iget v3, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iput-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    if-eq v2, v1, :cond_4

    goto :goto_38
.end method

.method private skipTagForward()B
    .registers 6

    .prologue
    .line 803
    iget v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 804
    .local v0, "initialCharIndex":I
    :cond_2
    iget v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget v3, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->length:I

    if-ge v2, v3, :cond_44

    .line 805
    iget-object v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    iget v3, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iput-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 806
    iget-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x3e

    if-ne v2, v3, :cond_1f

    .line 808
    const/16 v2, 0xc

    .line 819
    :goto_1e
    return v2

    .line 810
    :cond_1f
    iget-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x22

    if-eq v2, v3, :cond_2b

    iget-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x27

    if-ne v2, v3, :cond_2

    .line 812
    :cond_2b
    iget-char v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 813
    .local v1, "quote":C
    :goto_2d
    iget v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget v3, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->length:I

    if-ge v2, v3, :cond_2

    iget-object v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    iget v3, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iput-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    if-eq v2, v1, :cond_2

    goto :goto_2d

    .line 817
    .end local v1    # "quote":C
    :cond_44
    iput v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 818
    const/16 v2, 0x3c

    iput-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 819
    const/16 v2, 0xd

    goto :goto_1e
.end method


# virtual methods
.method dirTypeBackward()B
    .registers 5

    .prologue
    .line 777
    iget-object v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    iget v3, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iput-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 778
    iget-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    invoke-static {v2}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 779
    iget-object v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    iget v3, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v2, v3}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 780
    .local v0, "codePoint":I
    iget v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 781
    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v1

    .line 793
    .end local v0    # "codePoint":I
    :cond_29
    :goto_29
    return v1

    .line 783
    :cond_2a
    iget v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 784
    iget-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    invoke-static {v2}, Landroid/text/BidiFormatter$DirectionalityEstimator;->getCachedDirectionality(C)B

    move-result v1

    .line 785
    .local v1, "dirType":B
    iget-boolean v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->isHtml:Z

    if-eqz v2, :cond_29

    .line 787
    iget-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x3e

    if-ne v2, v3, :cond_45

    .line 788
    invoke-direct {p0}, Landroid/text/BidiFormatter$DirectionalityEstimator;->skipTagBackward()B

    move-result v1

    goto :goto_29

    .line 789
    :cond_45
    iget-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_29

    .line 790
    invoke-direct {p0}, Landroid/text/BidiFormatter$DirectionalityEstimator;->skipEntityBackward()B

    move-result v1

    goto :goto_29
.end method

.method dirTypeForward()B
    .registers 5

    .prologue
    .line 747
    iget-object v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    iget v3, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iput-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 748
    iget-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 749
    iget-object v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    iget v3, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v2, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 750
    .local v0, "codePoint":I
    iget v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 751
    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v1

    .line 763
    .end local v0    # "codePoint":I
    :cond_27
    :goto_27
    return v1

    .line 753
    :cond_28
    iget v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 754
    iget-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    invoke-static {v2}, Landroid/text/BidiFormatter$DirectionalityEstimator;->getCachedDirectionality(C)B

    move-result v1

    .line 755
    .local v1, "dirType":B
    iget-boolean v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->isHtml:Z

    if-eqz v2, :cond_27

    .line 757
    iget-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_43

    .line 758
    invoke-direct {p0}, Landroid/text/BidiFormatter$DirectionalityEstimator;->skipTagForward()B

    move-result v1

    goto :goto_27

    .line 759
    :cond_43
    iget-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x26

    if-ne v2, v3, :cond_27

    .line 760
    invoke-direct {p0}, Landroid/text/BidiFormatter$DirectionalityEstimator;->skipEntityForward()B

    move-result v1

    goto :goto_27
.end method

.method getEntryDir()I
    .registers 9

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v5, 0x0

    .line 577
    iput v5, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 578
    const/4 v0, 0x0

    .line 579
    .local v0, "embeddingLevel":I
    const/4 v1, 0x0

    .line 580
    .local v1, "embeddingLevelDir":I
    const/4 v2, 0x0

    .line 581
    .local v2, "firstNonEmptyEmbeddingLevel":I
    :goto_8
    :pswitch_8
    iget v6, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget v7, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->length:I

    if-ge v6, v7, :cond_31

    if-nez v2, :cond_31

    .line 582
    invoke-virtual {p0}, Landroid/text/BidiFormatter$DirectionalityEstimator;->dirTypeForward()B

    move-result v6

    packed-switch v6, :pswitch_data_56

    .line 616
    :pswitch_17
    move v2, v0

    .line 617
    goto :goto_8

    .line 585
    :pswitch_19
    add-int/lit8 v0, v0, 0x1

    .line 586
    const/4 v1, -0x1

    .line 587
    goto :goto_8

    .line 590
    :pswitch_1d
    add-int/lit8 v0, v0, 0x1

    .line 591
    const/4 v1, 0x1

    .line 592
    goto :goto_8

    .line 594
    :pswitch_21
    add-int/lit8 v0, v0, -0x1

    .line 598
    const/4 v1, 0x0

    .line 599
    goto :goto_8

    .line 603
    :pswitch_25
    if-nez v0, :cond_29

    move v1, v3

    .line 659
    .end local v1    # "embeddingLevelDir":I
    :cond_28
    :goto_28
    return v1

    .line 606
    .restart local v1    # "embeddingLevelDir":I
    :cond_29
    move v2, v0

    .line 607
    goto :goto_8

    .line 610
    :pswitch_2b
    if-nez v0, :cond_2f

    move v1, v4

    .line 611
    goto :goto_28

    .line 613
    :cond_2f
    move v2, v0

    .line 614
    goto :goto_8

    .line 623
    :cond_31
    if-nez v2, :cond_35

    move v1, v5

    .line 626
    goto :goto_28

    .line 630
    :cond_35
    if-nez v1, :cond_28

    .line 637
    :goto_37
    iget v6, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v6, :cond_54

    .line 638
    invoke-virtual {p0}, Landroid/text/BidiFormatter$DirectionalityEstimator;->dirTypeBackward()B

    move-result v6

    packed-switch v6, :pswitch_data_80

    goto :goto_37

    .line 641
    :pswitch_43
    if-ne v2, v0, :cond_47

    move v1, v3

    .line 642
    goto :goto_28

    .line 644
    :cond_47
    add-int/lit8 v0, v0, -0x1

    .line 645
    goto :goto_37

    .line 648
    :pswitch_4a
    if-ne v2, v0, :cond_4e

    move v1, v4

    .line 649
    goto :goto_28

    .line 651
    :cond_4e
    add-int/lit8 v0, v0, -0x1

    .line 652
    goto :goto_37

    .line 654
    :pswitch_51
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    :cond_54
    move v1, v5

    .line 659
    goto :goto_28

    .line 582
    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_25
        :pswitch_2b
        :pswitch_2b
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_8
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_19
        :pswitch_19
        :pswitch_1d
        :pswitch_1d
        :pswitch_21
    .end packed-switch

    .line 638
    :pswitch_data_80
    .packed-switch 0xe
        :pswitch_43
        :pswitch_43
        :pswitch_4a
        :pswitch_4a
        :pswitch_51
    .end packed-switch
.end method

.method getExitDir()I
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 675
    iget v4, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->length:I

    iput v4, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 676
    const/4 v0, 0x0

    .line 677
    .local v0, "embeddingLevel":I
    const/4 v1, 0x0

    .line 678
    .local v1, "lastNonEmptyEmbeddingLevel":I
    :cond_8
    :goto_8
    :pswitch_8
    iget v4, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v4, :cond_35

    .line 679
    invoke-virtual {p0}, Landroid/text/BidiFormatter$DirectionalityEstimator;->dirTypeBackward()B

    move-result v4

    packed-switch v4, :pswitch_data_38

    .line 717
    :pswitch_13
    if-nez v1, :cond_8

    .line 718
    move v1, v0

    goto :goto_8

    .line 681
    :pswitch_17
    if-nez v0, :cond_1a

    .line 723
    :cond_19
    :goto_19
    return v2

    .line 684
    :cond_1a
    if-nez v1, :cond_8

    .line 685
    move v1, v0

    goto :goto_8

    .line 690
    :pswitch_1e
    if-eq v1, v0, :cond_19

    .line 693
    add-int/lit8 v0, v0, -0x1

    .line 694
    goto :goto_8

    .line 697
    :pswitch_23
    if-nez v0, :cond_27

    move v2, v3

    .line 698
    goto :goto_19

    .line 700
    :cond_27
    if-nez v1, :cond_8

    .line 701
    move v1, v0

    goto :goto_8

    .line 706
    :pswitch_2b
    if-ne v1, v0, :cond_2f

    move v2, v3

    .line 707
    goto :goto_19

    .line 709
    :cond_2f
    add-int/lit8 v0, v0, -0x1

    .line 710
    goto :goto_8

    .line 712
    :pswitch_32
    add-int/lit8 v0, v0, 0x1

    .line 713
    goto :goto_8

    .line 723
    :cond_35
    const/4 v2, 0x0

    goto :goto_19

    .line 679
    nop

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_17
        :pswitch_23
        :pswitch_23
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_8
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_1e
        :pswitch_1e
        :pswitch_2b
        :pswitch_2b
        :pswitch_32
    .end packed-switch
.end method
