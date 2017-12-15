.class public Landroid/view/inputmethod/BaseInputConnection;
.super Ljava/lang/Object;
.source "BaseInputConnection.java"

# interfaces
.implements Landroid/view/inputmethod/InputConnection;


# static fields
.field static final COMPOSING:Ljava/lang/Object;

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BaseInputConnection"


# instance fields
.field private mDefaultComposingSpans:[Ljava/lang/Object;

.field final mDummyMode:Z

.field mEditable:Landroid/text/Editable;

.field protected final mIMM:Landroid/view/inputmethod/InputMethodManager;

.field mKeyCharacterMap:Landroid/view/KeyCharacterMap;

.field final mTargetView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 53
    new-instance v0, Landroid/view/inputmethod/ComposingText;

    invoke-direct {v0}, Landroid/view/inputmethod/ComposingText;-><init>()V

    sput-object v0, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Z)V
    .registers 5
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "fullEditor"    # Z

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    .line 74
    iput-object p1, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    .line 75
    if-nez p2, :cond_19

    const/4 v0, 0x1

    :goto_16
    iput-boolean v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mDummyMode:Z

    .line 76
    return-void

    .line 75
    :cond_19
    const/4 v0, 0x0

    goto :goto_16
.end method

.method constructor <init>(Landroid/view/inputmethod/InputMethodManager;Z)V
    .registers 4
    .param p1, "mgr"    # Landroid/view/inputmethod/InputMethodManager;
    .param p2, "fullEditor"    # Z

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    .line 68
    if-nez p2, :cond_e

    const/4 v0, 0x1

    :goto_b
    iput-boolean v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mDummyMode:Z

    .line 69
    return-void

    .line 68
    :cond_e
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private convertAllBrackets(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 7
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 843
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 844
    .local v2, "sText":Ljava/lang/String;
    const/4 v1, 0x0

    .line 845
    .local v1, "nIndex":I
    :goto_5
    if-eqz v2, :cond_40

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_40

    .line 846
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v0

    .line 847
    .local v0, "ch":Ljava/lang/CharSequence;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v0}, Landroid/view/inputmethod/BaseInputConnection;->convertBracket(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 848
    add-int/lit8 v1, v1, 0x1

    .line 849
    goto :goto_5

    .line 850
    .end local v0    # "ch":Ljava/lang/CharSequence;
    :cond_40
    return-object v2
.end method

.method private convertBracket(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 8
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v5, 0x300b

    const/16 v4, 0x300a

    const/16 v3, 0xbb

    const/16 v2, 0xab

    .line 854
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 856
    .local v0, "sText":Ljava/lang/String;
    const-string/jumbo v1, "{"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 857
    const-string/jumbo v0, "}"

    .line 881
    :cond_18
    :goto_18
    return-object v0

    .line 858
    :cond_19
    const-string/jumbo v1, "}"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 859
    const-string/jumbo v0, "{"

    goto :goto_18

    .line 860
    :cond_26
    const-string v1, "["

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 861
    const-string v0, "]"

    goto :goto_18

    .line 862
    :cond_31
    const-string v1, "]"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 863
    const-string v0, "["

    goto :goto_18

    .line 864
    :cond_3c
    const-string v1, "<"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 865
    const-string v0, ">"

    goto :goto_18

    .line 866
    :cond_47
    const-string v1, ">"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 867
    const-string v0, "<"

    goto :goto_18

    .line 868
    :cond_52
    const-string v1, "("

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 869
    const-string v0, ")"

    goto :goto_18

    .line 870
    :cond_5d
    const-string v1, ")"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_68

    .line 871
    const-string v0, "("

    goto :goto_18

    .line 872
    :cond_68
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_77

    .line 873
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    .line 874
    :cond_77
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_86

    .line 875
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    .line 876
    :cond_86
    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_95

    .line 877
    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    .line 878
    :cond_95
    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 879
    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_18
.end method

.method private ensureDefaultComposingSpans()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 584
    iget-object v3, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    if-nez v3, :cond_3d

    .line 586
    iget-object v3, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    if-eqz v3, :cond_3e

    .line 587
    iget-object v3, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 593
    .local v0, "context":Landroid/content/Context;
    :goto_f
    if-eqz v0, :cond_3d

    .line 594
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [I

    const v5, 0x1010230

    aput v5, v4, v6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 598
    .local v2, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 599
    .local v1, "style":Ljava/lang/CharSequence;
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 600
    if-eqz v1, :cond_3d

    instance-of v3, v1, Landroid/text/Spanned;

    if-eqz v3, :cond_3d

    move-object v3, v1

    .line 601
    check-cast v3, Landroid/text/Spanned;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const-class v5, Ljava/lang/Object;

    invoke-interface {v3, v6, v4, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    .line 606
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "style":Ljava/lang/CharSequence;
    .end local v2    # "ta":Landroid/content/res/TypedArray;
    :cond_3d
    return-void

    .line 588
    :cond_3e
    iget-object v3, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, v3, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v3, :cond_4d

    .line 589
    iget-object v3, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, v3, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .restart local v0    # "context":Landroid/content/Context;
    goto :goto_f

    .line 591
    .end local v0    # "context":Landroid/content/Context;
    :cond_4d
    const/4 v0, 0x0

    .restart local v0    # "context":Landroid/content/Context;
    goto :goto_f
.end method

.method public static getComposingSpanEnd(Landroid/text/Spannable;)I
    .registers 2
    .param p0, "text"    # Landroid/text/Spannable;

    .prologue
    .line 126
    sget-object v0, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static getComposingSpanStart(Landroid/text/Spannable;)I
    .registers 2
    .param p0, "text"    # Landroid/text/Spannable;

    .prologue
    .line 122
    sget-object v0, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private isAllBracketChars(Ljava/lang/CharSequence;)Z
    .registers 7
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 829
    const-string v0, "<>{}[]()\u00ab\u00bb\u300a\u300b"

    .line 830
    .local v0, "BRACKET":Ljava/lang/String;
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 831
    .local v3, "sText":Ljava/lang/String;
    const/4 v2, 0x0

    .line 832
    .local v2, "nIndex":I
    :goto_7
    if-eqz v3, :cond_28

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_28

    .line 833
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v1

    .line 834
    .local v1, "ch":Ljava/lang/CharSequence;
    const-string v4, "<>{}[]()\u00ab\u00bb\u300a\u300b"

    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_25

    .line 835
    const/4 v4, 0x0

    .line 839
    .end local v1    # "ch":Ljava/lang/CharSequence;
    :goto_24
    return v4

    .line 837
    .restart local v1    # "ch":Ljava/lang/CharSequence;
    :cond_25
    add-int/lit8 v2, v2, 0x1

    .line 838
    goto :goto_7

    .line 839
    .end local v1    # "ch":Ljava/lang/CharSequence;
    :cond_28
    const/4 v4, 0x1

    goto :goto_24
.end method

.method private isRTLText(Ljava/lang/String;I)Z
    .registers 14
    .param p1, "sCurStr"    # Ljava/lang/String;
    .param p2, "newCursorPosition"    # I

    .prologue
    .line 703
    const/16 v3, 0xa

    .line 704
    .local v3, "PARA":C
    const/4 v1, -0x1

    .line 705
    .local v1, "DIRECTION_NONE":I
    const/4 v0, 0x0

    .line 706
    .local v0, "DIRECTION_LTR":I
    const/4 v2, 0x1

    .line 707
    .local v2, "DIRECTION_RTL":I
    const/4 v6, -0x1

    .line 708
    .local v6, "nDirection":I
    const/4 v7, 0x0

    .line 709
    .local v7, "nIndex":I
    const/4 v8, -0x1

    .line 711
    .local v8, "nLastEnterPos":I
    if-eqz p1, :cond_110

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_110

    .line 712
    if-eqz p2, :cond_1a

    .line 713
    const/16 v9, 0xa

    add-int/lit8 v10, p2, -0x1

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v8

    .line 716
    :cond_1a
    if-gez v8, :cond_78

    .line 717
    const/4 v8, 0x0

    .line 722
    :goto_1d
    move v7, v8

    .line 723
    :goto_1e
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v7, v9, :cond_2c

    .line 724
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 725
    .local v4, "ch":C
    const/16 v9, 0xa

    if-ne v4, v9, :cond_7b

    .line 744
    .end local v4    # "ch":C
    :cond_2c
    :goto_2c
    move v7, p2

    .line 745
    :goto_2d
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v7, v9, :cond_3b

    .line 746
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 747
    .restart local v4    # "ch":C
    const/16 v9, 0xa

    if-ne v4, v9, :cond_9e

    .line 764
    .end local v4    # "ch":C
    :cond_3b
    :goto_3b
    const/4 v9, -0x1

    if-ne v6, v9, :cond_73

    .line 765
    add-int/lit8 v7, p2, -0x1

    .line 766
    :goto_40
    if-ltz v7, :cond_4a

    .line 767
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 768
    .restart local v4    # "ch":C
    const/16 v9, 0xa

    if-ne v4, v9, :cond_c4

    .line 788
    .end local v4    # "ch":C
    :cond_4a
    :goto_4a
    const/4 v9, -0x1

    if-ne v6, v9, :cond_5c

    .line 789
    move v7, p2

    .line 790
    :goto_4e
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v7, v9, :cond_5c

    .line 791
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 792
    .restart local v4    # "ch":C
    const/16 v9, 0xa

    if-ne v4, v9, :cond_ea

    .line 812
    .end local v4    # "ch":C
    :cond_5c
    :goto_5c
    const/4 v9, -0x1

    if-ne v6, v9, :cond_73

    iget-object v9, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    if-eqz v9, :cond_73

    iget-object v9, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutDirection()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_73

    invoke-direct {p0}, Landroid/view/inputmethod/BaseInputConnection;->isRtlLanguage()Z

    move-result v9

    if-eqz v9, :cond_73

    .line 815
    const/4 v6, 0x1

    .line 822
    :cond_73
    const/4 v9, 0x1

    if-ne v6, v9, :cond_121

    .line 823
    const/4 v9, 0x1

    .line 825
    :goto_77
    return v9

    .line 719
    :cond_78
    add-int/lit8 v8, v8, 0x1

    goto :goto_1d

    .line 727
    .restart local v4    # "ch":C
    :cond_7b
    invoke-static {v4}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v5

    .line 729
    .local v5, "directionality":B
    if-eqz v5, :cond_89

    const/16 v9, 0xe

    if-eq v5, v9, :cond_89

    const/16 v9, 0xf

    if-ne v5, v9, :cond_8b

    .line 732
    :cond_89
    const/4 v6, 0x0

    .line 733
    goto :goto_2c

    .line 734
    :cond_8b
    const/4 v9, 0x1

    if-eq v5, v9, :cond_99

    const/4 v9, 0x2

    if-eq v5, v9, :cond_99

    const/16 v9, 0x10

    if-eq v5, v9, :cond_99

    const/16 v9, 0x11

    if-ne v5, v9, :cond_9b

    .line 738
    :cond_99
    const/4 v6, 0x1

    .line 739
    goto :goto_2c

    .line 741
    :cond_9b
    add-int/lit8 v7, v7, 0x1

    .line 742
    goto :goto_1e

    .line 749
    .end local v5    # "directionality":B
    :cond_9e
    invoke-static {v4}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v5

    .line 750
    .restart local v5    # "directionality":B
    if-eqz v5, :cond_bd

    const/16 v9, 0xe

    if-eq v5, v9, :cond_bd

    const/16 v9, 0xf

    if-eq v5, v9, :cond_bd

    const/4 v9, 0x1

    if-eq v5, v9, :cond_bd

    const/4 v9, 0x2

    if-eq v5, v9, :cond_bd

    const/16 v9, 0x10

    if-eq v5, v9, :cond_bd

    const/16 v9, 0x11

    if-eq v5, v9, :cond_bd

    const/4 v9, 0x3

    if-ne v5, v9, :cond_c0

    .line 758
    :cond_bd
    const/4 v6, -0x1

    .line 759
    goto/16 :goto_3b

    .line 761
    :cond_c0
    add-int/lit8 v7, v7, 0x1

    .line 762
    goto/16 :goto_2d

    .line 770
    .end local v5    # "directionality":B
    :cond_c4
    invoke-static {v4}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v5

    .line 772
    .restart local v5    # "directionality":B
    if-eqz v5, :cond_d2

    const/16 v9, 0xe

    if-eq v5, v9, :cond_d2

    const/16 v9, 0xf

    if-ne v5, v9, :cond_d5

    .line 775
    :cond_d2
    const/4 v6, 0x0

    .line 776
    goto/16 :goto_4a

    .line 778
    :cond_d5
    const/4 v9, 0x1

    if-eq v5, v9, :cond_e3

    const/4 v9, 0x2

    if-eq v5, v9, :cond_e3

    const/16 v9, 0x10

    if-eq v5, v9, :cond_e3

    const/16 v9, 0x11

    if-ne v5, v9, :cond_e6

    .line 782
    :cond_e3
    const/4 v6, 0x1

    .line 783
    goto/16 :goto_4a

    .line 785
    :cond_e6
    add-int/lit8 v7, v7, -0x1

    .line 786
    goto/16 :goto_40

    .line 794
    .end local v5    # "directionality":B
    :cond_ea
    invoke-static {v4}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v5

    .line 796
    .restart local v5    # "directionality":B
    if-eqz v5, :cond_f8

    const/16 v9, 0xe

    if-eq v5, v9, :cond_f8

    const/16 v9, 0xf

    if-ne v5, v9, :cond_fb

    .line 799
    :cond_f8
    const/4 v6, 0x0

    .line 800
    goto/16 :goto_5c

    .line 802
    :cond_fb
    const/4 v9, 0x1

    if-eq v5, v9, :cond_109

    const/4 v9, 0x2

    if-eq v5, v9, :cond_109

    const/16 v9, 0x10

    if-eq v5, v9, :cond_109

    const/16 v9, 0x11

    if-ne v5, v9, :cond_10c

    .line 806
    :cond_109
    const/4 v6, 0x1

    .line 807
    goto/16 :goto_5c

    .line 809
    :cond_10c
    add-int/lit8 v7, v7, 0x1

    .line 810
    goto/16 :goto_4e

    .line 818
    .end local v4    # "ch":C
    .end local v5    # "directionality":B
    :cond_110
    invoke-direct {p0}, Landroid/view/inputmethod/BaseInputConnection;->isRtlLanguage()Z

    move-result v9

    if-eqz v9, :cond_73

    if-eqz p1, :cond_11e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_73

    .line 819
    :cond_11e
    const/4 v9, 0x1

    goto/16 :goto_77

    .line 825
    :cond_121
    const/4 v9, 0x0

    goto/16 :goto_77
.end method

.method private isRtlLanguage()Z
    .registers 3

    .prologue
    .line 884
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 885
    .local v0, "curLanguage":Ljava/lang/String;
    const-string v1, "ar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    const-string v1, "fa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    const-string/jumbo v1, "ur"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    const-string v1, "iw"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 886
    :cond_29
    const/4 v1, 0x1

    .line 887
    :goto_2a
    return v1

    :cond_2b
    const/4 v1, 0x0

    goto :goto_2a
.end method

.method public static final removeComposingSpans(Landroid/text/Spannable;)V
    .registers 7
    .param p0, "text"    # Landroid/text/Spannable;

    .prologue
    .line 79
    sget-object v3, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    invoke-interface {p0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 80
    const/4 v3, 0x0

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v4

    const-class v5, Ljava/lang/Object;

    invoke-interface {p0, v3, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    .line 81
    .local v2, "sps":[Ljava/lang/Object;
    if-eqz v2, :cond_27

    .line 82
    array-length v3, v2

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_15
    if-ltz v0, :cond_27

    .line 83
    aget-object v1, v2, v0

    .line 84
    .local v1, "o":Ljava/lang/Object;
    invoke-interface {p0, v1}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v3

    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_24

    .line 85
    invoke-interface {p0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 82
    :cond_24
    add-int/lit8 v0, v0, -0x1

    goto :goto_15

    .line 89
    .end local v0    # "i":I
    .end local v1    # "o":Ljava/lang/Object;
    :cond_27
    return-void
.end method

.method private replaceText(Ljava/lang/CharSequence;IZ)V
    .registers 14
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I
    .param p3, "composing"    # Z

    .prologue
    const/4 v6, -0x1

    .line 610
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v2

    .line 611
    .local v2, "content":Landroid/text/Editable;
    if-nez v2, :cond_8

    .line 700
    :goto_7
    return-void

    .line 615
    :cond_8
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->beginBatchEdit()Z

    .line 618
    invoke-static {v2}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v0

    .line 619
    .local v0, "a":I
    invoke-static {v2}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v1

    .line 623
    .local v1, "b":I
    if-ge v1, v0, :cond_18

    .line 624
    move v5, v0

    .line 625
    .local v5, "tmp":I
    move v0, v1

    .line 626
    move v1, v5

    .line 629
    .end local v5    # "tmp":I
    :cond_18
    if-eq v0, v6, :cond_4a

    if-eq v1, v6, :cond_4a

    .line 630
    invoke-static {v2}, Landroid/view/inputmethod/BaseInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    .line 643
    :cond_1f
    :goto_1f
    if-eqz p3, :cond_64

    .line 644
    const/4 v4, 0x0

    .line 645
    .local v4, "sp":Landroid/text/Spannable;
    instance-of v6, p1, Landroid/text/Spannable;

    if-nez v6, :cond_5e

    .line 646
    new-instance v4, Landroid/text/SpannableStringBuilder;

    .end local v4    # "sp":Landroid/text/Spannable;
    invoke-direct {v4, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 647
    .restart local v4    # "sp":Landroid/text/Spannable;
    move-object p1, v4

    .line 648
    invoke-direct {p0}, Landroid/view/inputmethod/BaseInputConnection;->ensureDefaultComposingSpans()V

    .line 649
    iget-object v6, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    if-eqz v6, :cond_61

    .line 650
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_34
    iget-object v6, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    array-length v6, v6

    if-ge v3, v6, :cond_61

    .line 651
    iget-object v6, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    aget-object v6, v6, v3

    const/4 v7, 0x0

    invoke-interface {v4}, Landroid/text/Spannable;->length()I

    move-result v8

    const/16 v9, 0x121

    invoke-interface {v4, v6, v7, v8, v9}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 650
    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    .line 632
    .end local v3    # "i":I
    .end local v4    # "sp":Landroid/text/Spannable;
    :cond_4a
    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 633
    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 634
    if-gez v0, :cond_55

    const/4 v0, 0x0

    .line 635
    :cond_55
    if-gez v1, :cond_58

    const/4 v1, 0x0

    .line 636
    :cond_58
    if-ge v1, v0, :cond_1f

    .line 637
    move v5, v0

    .line 638
    .restart local v5    # "tmp":I
    move v0, v1

    .line 639
    move v1, v5

    goto :goto_1f

    .end local v5    # "tmp":I
    .restart local v4    # "sp":Landroid/text/Spannable;
    :cond_5e
    move-object v4, p1

    .line 656
    check-cast v4, Landroid/text/Spannable;

    .line 658
    :cond_61
    invoke-static {v4}, Landroid/view/inputmethod/BaseInputConnection;->setComposingSpans(Landroid/text/Spannable;)V

    .line 677
    .end local v4    # "sp":Landroid/text/Spannable;
    :cond_64
    if-lez p2, :cond_95

    .line 678
    add-int/lit8 v6, v1, -0x1

    add-int/2addr p2, v6

    .line 682
    :goto_69
    if-gez p2, :cond_6c

    const/4 p2, 0x0

    .line 683
    :cond_6c
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v6

    if-le p2, v6, :cond_76

    .line 684
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result p2

    .line 685
    :cond_76
    invoke-static {v2, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 687
    invoke-direct {p0, p1}, Landroid/view/inputmethod/BaseInputConnection;->isAllBracketChars(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8d

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, p2}, Landroid/view/inputmethod/BaseInputConnection;->isRTLText(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_8d

    .line 688
    invoke-direct {p0, p1}, Landroid/view/inputmethod/BaseInputConnection;->convertAllBrackets(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 691
    :cond_8d
    invoke-interface {v2, v0, v1, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 699
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z

    goto/16 :goto_7

    .line 680
    :cond_95
    add-int/2addr p2, v0

    goto :goto_69
.end method

.method private sendCurrentText()V
    .registers 12

    .prologue
    const/4 v5, -0x1

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 545
    iget-boolean v2, p0, Landroid/view/inputmethod/BaseInputConnection;->mDummyMode:Z

    if-nez v2, :cond_8

    .line 581
    :cond_7
    :goto_7
    return-void

    .line 549
    :cond_8
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v8

    .line 550
    .local v8, "content":Landroid/text/Editable;
    if-eqz v8, :cond_7

    .line 551
    invoke-interface {v8}, Landroid/text/Editable;->length()I

    move-result v0

    .line 552
    .local v0, "N":I
    if-eqz v0, :cond_7

    .line 555
    if-ne v0, v3, :cond_3d

    .line 558
    iget-object v2, p0, Landroid/view/inputmethod/BaseInputConnection;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    if-nez v2, :cond_20

    .line 559
    invoke-static {v5}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v2

    iput-object v2, p0, Landroid/view/inputmethod/BaseInputConnection;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 561
    :cond_20
    new-array v7, v3, [C

    .line 562
    .local v7, "chars":[C
    invoke-interface {v8, v6, v3, v7, v6}, Landroid/text/Editable;->getChars(II[CI)V

    .line 563
    iget-object v2, p0, Landroid/view/inputmethod/BaseInputConnection;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    invoke-virtual {v2, v7}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v9

    .line 564
    .local v9, "events":[Landroid/view/KeyEvent;
    if-eqz v9, :cond_3d

    .line 565
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2e
    array-length v2, v9

    if-ge v10, v2, :cond_39

    .line 567
    aget-object v2, v9, v10

    invoke-virtual {p0, v2}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 565
    add-int/lit8 v10, v10, 0x1

    goto :goto_2e

    .line 569
    :cond_39
    invoke-interface {v8}, Landroid/text/Editable;->clear()V

    goto :goto_7

    .line 576
    .end local v7    # "chars":[C
    .end local v9    # "events":[Landroid/view/KeyEvent;
    .end local v10    # "i":I
    :cond_3d
    new-instance v1, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct/range {v1 .. v6}, Landroid/view/KeyEvent;-><init>(JLjava/lang/String;II)V

    .line 578
    .local v1, "event":Landroid/view/KeyEvent;
    invoke-virtual {p0, v1}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 579
    invoke-interface {v8}, Landroid/text/Editable;->clear()V

    goto :goto_7
.end method

.method public static setComposingSpans(Landroid/text/Spannable;)V
    .registers 3
    .param p0, "text"    # Landroid/text/Spannable;

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v1

    invoke-static {p0, v0, v1}, Landroid/view/inputmethod/BaseInputConnection;->setComposingSpans(Landroid/text/Spannable;II)V

    .line 93
    return-void
.end method

.method public static setComposingSpans(Landroid/text/Spannable;II)V
    .registers 11
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/16 v7, 0x121

    .line 97
    const-class v4, Ljava/lang/Object;

    invoke-interface {p0, p1, p2, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    .line 98
    .local v3, "sps":[Ljava/lang/Object;
    if-eqz v3, :cond_35

    .line 99
    array-length v4, v3

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_d
    if-ltz v1, :cond_35

    .line 100
    aget-object v2, v3, v1

    .line 101
    .local v2, "o":Ljava/lang/Object;
    sget-object v4, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    if-ne v2, v4, :cond_1b

    .line 102
    invoke-interface {p0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 99
    :cond_18
    :goto_18
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 106
    :cond_1b
    invoke-interface {p0, v2}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    .line 107
    .local v0, "fl":I
    and-int/lit16 v4, v0, 0x133

    if-eq v4, v7, :cond_18

    .line 109
    invoke-interface {p0, v2}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {p0, v2}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    and-int/lit8 v6, v0, -0x34

    or-int/lit16 v6, v6, 0x100

    or-int/lit8 v6, v6, 0x21

    invoke-interface {p0, v2, v4, v5, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_18

    .line 117
    .end local v0    # "fl":I
    .end local v1    # "i":I
    .end local v2    # "o":Ljava/lang/Object;
    :cond_35
    sget-object v4, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    invoke-interface {p0, v4, p1, p2, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 119
    return-void
.end method


# virtual methods
.method public beginBatchEdit()Z
    .registers 2

    .prologue
    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method public clearMetaKeyStates(I)Z
    .registers 4
    .param p1, "states"    # I

    .prologue
    .line 172
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 173
    .local v0, "content":Landroid/text/Editable;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    .line 175
    :goto_7
    return v1

    .line 174
    :cond_8
    invoke-static {v0, p1}, Landroid/text/method/MetaKeyKeyListener;->clearMetaKeyState(Landroid/text/Editable;I)V

    .line 175
    const/4 v1, 0x1

    goto :goto_7
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .registers 3
    .param p1, "text"    # Landroid/view/inputmethod/CompletionInfo;

    .prologue
    .line 182
    const/4 v0, 0x0

    return v0
.end method

.method public commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z
    .registers 3
    .param p1, "correctionInfo"    # Landroid/view/inputmethod/CorrectionInfo;

    .prologue
    .line 189
    const/4 v0, 0x0

    return v0
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .registers 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .prologue
    .line 199
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/inputmethod/BaseInputConnection;->replaceText(Ljava/lang/CharSequence;IZ)V

    .line 200
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->notifyUserAction()V

    .line 201
    invoke-direct {p0}, Landroid/view/inputmethod/BaseInputConnection;->sendCurrentText()V

    .line 202
    const/4 v0, 0x1

    return v0
.end method

.method public deleteSurroundingText(II)Z
    .registers 13
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I

    .prologue
    const/4 v9, -0x1

    .line 214
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v4

    .line 215
    .local v4, "content":Landroid/text/Editable;
    if-nez v4, :cond_9

    const/4 v9, 0x0

    .line 261
    :goto_8
    return v9

    .line 217
    :cond_9
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->beginBatchEdit()Z

    .line 219
    invoke-static {v4}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 220
    .local v0, "a":I
    invoke-static {v4}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 222
    .local v1, "b":I
    if-le v0, v1, :cond_19

    .line 223
    move v8, v0

    .line 224
    .local v8, "tmp":I
    move v0, v1

    .line 225
    move v1, v8

    .line 229
    .end local v8    # "tmp":I
    :cond_19
    invoke-static {v4}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v2

    .line 230
    .local v2, "ca":I
    invoke-static {v4}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v3

    .line 231
    .local v3, "cb":I
    if-ge v3, v2, :cond_26

    .line 232
    move v8, v2

    .line 233
    .restart local v8    # "tmp":I
    move v2, v3

    .line 234
    move v3, v8

    .line 236
    .end local v8    # "tmp":I
    :cond_26
    if-eq v2, v9, :cond_30

    if-eq v3, v9, :cond_30

    .line 237
    if-ge v2, v0, :cond_2d

    move v0, v2

    .line 238
    :cond_2d
    if-le v3, v1, :cond_30

    move v1, v3

    .line 241
    :cond_30
    const/4 v5, 0x0

    .line 243
    .local v5, "deleted":I
    if-lez p1, :cond_3d

    .line 244
    sub-int v7, v0, p1

    .line 245
    .local v7, "start":I
    if-gez v7, :cond_38

    const/4 v7, 0x0

    .line 246
    :cond_38
    invoke-interface {v4, v7, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 247
    sub-int v5, v0, v7

    .line 250
    .end local v7    # "start":I
    :cond_3d
    if-lez p2, :cond_4f

    .line 251
    sub-int/2addr v1, v5

    .line 253
    add-int v6, v1, p2

    .line 254
    .local v6, "end":I
    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v9

    if-le v6, v9, :cond_4c

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v6

    .line 256
    :cond_4c
    invoke-interface {v4, v1, v6}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 259
    .end local v6    # "end":I
    :cond_4f
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z

    .line 261
    const/4 v9, 0x1

    goto :goto_8
.end method

.method public endBatchEdit()Z
    .registers 2

    .prologue
    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public finishComposingText()Z
    .registers 3

    .prologue
    .line 271
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 272
    .local v0, "content":Landroid/text/Editable;
    if-eqz v0, :cond_12

    .line 273
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->beginBatchEdit()Z

    .line 274
    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    .line 276
    invoke-direct {p0}, Landroid/view/inputmethod/BaseInputConnection;->sendCurrentText()V

    .line 277
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z

    .line 279
    :cond_12
    const/4 v1, 0x1

    return v1
.end method

.method public getCursorCapsMode(I)I
    .registers 8
    .param p1, "reqModes"    # I

    .prologue
    const/4 v4, 0x0

    .line 288
    iget-boolean v5, p0, Landroid/view/inputmethod/BaseInputConnection;->mDummyMode:Z

    if-eqz v5, :cond_6

    .line 302
    :cond_5
    :goto_5
    return v4

    .line 290
    :cond_6
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v2

    .line 291
    .local v2, "content":Landroid/text/Editable;
    if-eqz v2, :cond_5

    .line 293
    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 294
    .local v0, "a":I
    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 296
    .local v1, "b":I
    if-le v0, v1, :cond_19

    .line 297
    move v3, v0

    .line 298
    .local v3, "tmp":I
    move v0, v1

    .line 299
    move v1, v3

    .line 302
    .end local v3    # "tmp":I
    :cond_19
    invoke-static {v2, v0, p1}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v4

    goto :goto_5
.end method

.method public getEditable()Landroid/text/Editable;
    .registers 3

    .prologue
    .line 136
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mEditable:Landroid/text/Editable;

    if-nez v0, :cond_16

    .line 137
    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mEditable:Landroid/text/Editable;

    .line 138
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mEditable:Landroid/text/Editable;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 140
    :cond_16
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mEditable:Landroid/text/Editable;

    return-object v0
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .registers 4
    .param p1, "request"    # Landroid/view/inputmethod/ExtractedTextRequest;
    .param p2, "flags"    # I

    .prologue
    .line 309
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectedText(I)Ljava/lang/CharSequence;
    .registers 7
    .param p1, "flags"    # I

    .prologue
    const/4 v4, 0x0

    .line 348
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v2

    .line 349
    .local v2, "content":Landroid/text/Editable;
    if-nez v2, :cond_8

    .line 365
    :cond_7
    :goto_7
    return-object v4

    .line 351
    :cond_8
    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 352
    .local v0, "a":I
    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 354
    .local v1, "b":I
    if-le v0, v1, :cond_15

    .line 355
    move v3, v0

    .line 356
    .local v3, "tmp":I
    move v0, v1

    .line 357
    move v1, v3

    .line 360
    .end local v3    # "tmp":I
    :cond_15
    if-eq v0, v1, :cond_7

    .line 362
    and-int/lit8 v4, p1, 0x1

    if-eqz v4, :cond_20

    .line 363
    invoke-interface {v2, v0, v1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_7

    .line 365
    :cond_20
    invoke-static {v2, v0, v1}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v4

    goto :goto_7
.end method

.method public getTextAfterCursor(II)Ljava/lang/CharSequence;
    .registers 9
    .param p1, "length"    # I
    .param p2, "flags"    # I

    .prologue
    .line 373
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v2

    .line 374
    .local v2, "content":Landroid/text/Editable;
    if-nez v2, :cond_8

    const/4 v4, 0x0

    .line 398
    :goto_7
    return-object v4

    .line 376
    :cond_8
    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 377
    .local v0, "a":I
    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 379
    .local v1, "b":I
    if-le v0, v1, :cond_15

    .line 380
    move v3, v0

    .line 381
    .local v3, "tmp":I
    move v0, v1

    .line 382
    move v1, v3

    .line 386
    .end local v3    # "tmp":I
    :cond_15
    if-gez v1, :cond_18

    .line 387
    const/4 v1, 0x0

    .line 390
    :cond_18
    add-int v4, v1, p1

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v5

    if-le v4, v5, :cond_26

    .line 391
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v4

    sub-int p1, v4, v1

    .line 395
    :cond_26
    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_31

    .line 396
    add-int v4, v1, p1

    invoke-interface {v2, v1, v4}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_7

    .line 398
    :cond_31
    add-int v4, v1, p1

    invoke-static {v2, v1, v4}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v4

    goto :goto_7
.end method

.method public getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .registers 8
    .param p1, "length"    # I
    .param p2, "flags"    # I

    .prologue
    .line 317
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v2

    .line 318
    .local v2, "content":Landroid/text/Editable;
    if-nez v2, :cond_8

    const/4 v4, 0x0

    .line 340
    :goto_7
    return-object v4

    .line 320
    :cond_8
    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 321
    .local v0, "a":I
    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 323
    .local v1, "b":I
    if-le v0, v1, :cond_15

    .line 324
    move v3, v0

    .line 325
    .local v3, "tmp":I
    move v0, v1

    .line 326
    move v1, v3

    .line 329
    .end local v3    # "tmp":I
    :cond_15
    if-gtz v0, :cond_1a

    .line 330
    const-string v4, ""

    goto :goto_7

    .line 333
    :cond_1a
    if-le p1, v0, :cond_1d

    .line 334
    move p1, v0

    .line 337
    :cond_1d
    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_28

    .line 338
    sub-int v4, v0, p1

    invoke-interface {v2, v4, v0}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_7

    .line 340
    :cond_28
    sub-int v4, v0, p1

    invoke-static {v2, v4, v0}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v4

    goto :goto_7
.end method

.method public performContextMenuAction(I)Z
    .registers 3
    .param p1, "id"    # I

    .prologue
    .line 423
    const/4 v0, 0x0

    return v0
.end method

.method public performEditorAction(I)Z
    .registers 21
    .param p1, "actionCode"    # I

    .prologue
    .line 405
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 406
    .local v4, "eventTime":J
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v8, 0x0

    const/16 v9, 0x42

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/16 v14, 0x16

    move-wide v6, v4

    invoke-direct/range {v3 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 411
    new-instance v7, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const/4 v12, 0x1

    const/16 v13, 0x42

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/16 v17, 0x0

    const/16 v18, 0x16

    move-wide v10, v4

    invoke-direct/range {v7 .. v18}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 416
    const/4 v2, 0x1

    return v2
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 4
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 430
    const/4 v0, 0x0

    return v0
.end method

.method protected reportFinish()V
    .registers 1

    .prologue
    .line 164
    return-void
.end method

.method public reportFullscreenMode(Z)Z
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 540
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodManager;->setFullscreenMode(Z)V

    .line 541
    const/4 v0, 0x1

    return v0
.end method

.method public requestCursorUpdates(I)Z
    .registers 3
    .param p1, "cursorUpdateMode"    # I

    .prologue
    .line 437
    const/4 v0, 0x0

    return v0
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 521
    iget-object v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, v1, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 522
    :try_start_5
    iget-object v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    if-eqz v1, :cond_2c

    iget-object v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 523
    .local v0, "viewRootImpl":Landroid/view/ViewRootImpl;
    :goto_f
    if-nez v0, :cond_1f

    .line 524
    iget-object v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v1, :cond_1f

    .line 525
    iget-object v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 528
    :cond_1f
    if-eqz v0, :cond_24

    .line 529
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->dispatchKeyFromIme(Landroid/view/KeyEvent;)V

    .line 531
    :cond_24
    monitor-exit v2
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_2e

    .line 532
    iget-object v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->notifyUserAction()V

    .line 533
    const/4 v1, 0x0

    return v1

    .line 522
    .end local v0    # "viewRootImpl":Landroid/view/ViewRootImpl;
    :cond_2c
    const/4 v0, 0x0

    goto :goto_f

    .line 531
    :catchall_2e
    move-exception v1

    :try_start_2f
    monitor-exit v2
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v1
.end method

.method public setComposingRegion(II)Z
    .registers 11
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/16 v7, 0x121

    .line 453
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v2

    .line 454
    .local v2, "content":Landroid/text/Editable;
    if-eqz v2, :cond_47

    .line 455
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->beginBatchEdit()Z

    .line 456
    invoke-static {v2}, Landroid/view/inputmethod/BaseInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    .line 457
    move v0, p1

    .line 458
    .local v0, "a":I
    move v1, p2

    .line 459
    .local v1, "b":I
    if-le v0, v1, :cond_15

    .line 460
    move v5, v0

    .line 461
    .local v5, "tmp":I
    move v0, v1

    .line 462
    move v1, v5

    .line 465
    .end local v5    # "tmp":I
    :cond_15
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v4

    .line 466
    .local v4, "length":I
    if-gez v0, :cond_1c

    const/4 v0, 0x0

    .line 467
    :cond_1c
    if-gez v1, :cond_1f

    const/4 v1, 0x0

    .line 468
    :cond_1f
    if-le v0, v4, :cond_22

    move v0, v4

    .line 469
    :cond_22
    if-le v1, v4, :cond_25

    move v1, v4

    .line 471
    :cond_25
    invoke-direct {p0}, Landroid/view/inputmethod/BaseInputConnection;->ensureDefaultComposingSpans()V

    .line 472
    iget-object v6, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    if-eqz v6, :cond_3c

    .line 473
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2d
    iget-object v6, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    array-length v6, v6

    if-ge v3, v6, :cond_3c

    .line 474
    iget-object v6, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    aget-object v6, v6, v3

    invoke-interface {v2, v6, v0, v1, v7}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 473
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    .line 479
    .end local v3    # "i":I
    :cond_3c
    sget-object v6, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    invoke-interface {v2, v6, v0, v1, v7}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 483
    invoke-direct {p0}, Landroid/view/inputmethod/BaseInputConnection;->sendCurrentText()V

    .line 484
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z

    .line 486
    .end local v0    # "a":I
    .end local v1    # "b":I
    .end local v4    # "length":I
    :cond_47
    const/4 v6, 0x1

    return v6
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .registers 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .prologue
    const/4 v1, 0x1

    .line 447
    invoke-direct {p0, p1, p2, v1}, Landroid/view/inputmethod/BaseInputConnection;->replaceText(Ljava/lang/CharSequence;IZ)V

    .line 448
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->notifyUserAction()V

    .line 449
    return v1
.end method

.method public setSelection(II)Z
    .registers 7
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/4 v2, 0x1

    .line 495
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 496
    .local v0, "content":Landroid/text/Editable;
    if-nez v0, :cond_9

    const/4 v2, 0x0

    .line 513
    :cond_8
    :goto_8
    return v2

    .line 497
    :cond_9
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 498
    .local v1, "len":I
    if-gt p1, v1, :cond_8

    if-gt p2, v1, :cond_8

    if-ltz p1, :cond_8

    if-ltz p2, :cond_8

    .line 505
    if-ne p1, p2, :cond_23

    const/16 v3, 0x800

    invoke-static {v0, v3}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v3

    if-eqz v3, :cond_23

    .line 509
    invoke-static {v0, p1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    goto :goto_8

    .line 511
    :cond_23
    invoke-static {v0, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_8
.end method
