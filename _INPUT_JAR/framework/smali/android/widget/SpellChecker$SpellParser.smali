.class Landroid/widget/SpellChecker$SpellParser;
.super Ljava/lang/Object;
.source "SpellChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SpellChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpellParser"
.end annotation


# instance fields
.field private mRange:Ljava/lang/Object;

.field final synthetic this$0:Landroid/widget/SpellChecker;


# direct methods
.method private constructor <init>(Landroid/widget/SpellChecker;)V
    .registers 3

    .prologue
    .line 502
    iput-object p1, p0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 503
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/widget/SpellChecker$SpellParser;->mRange:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/SpellChecker;Landroid/widget/SpellChecker$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/widget/SpellChecker;
    .param p2, "x1"    # Landroid/widget/SpellChecker$1;

    .prologue
    .line 502
    invoke-direct {p0, p1}, Landroid/widget/SpellChecker$SpellParser;-><init>(Landroid/widget/SpellChecker;)V

    return-void
.end method

.method private removeRangeSpan(Landroid/text/Editable;)V
    .registers 3
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    .line 540
    iget-object v0, p0, Landroid/widget/SpellChecker$SpellParser;->mRange:Ljava/lang/Object;

    invoke-interface {p1, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 541
    return-void
.end method

.method private removeSpansAt(Landroid/text/Editable;I[Ljava/lang/Object;)V
    .registers 9
    .param p1, "editable"    # Landroid/text/Editable;
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/text/Editable;",
            "I[TT;)V"
        }
    .end annotation

    .prologue
    .line 745
    .local p3, "spans":[Ljava/lang/Object;, "[TT;"
    array-length v2, p3

    .line 746
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v2, :cond_19

    .line 747
    aget-object v3, p3, v1

    .line 748
    .local v3, "span":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v3}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 749
    .local v4, "start":I
    if-le v4, p2, :cond_f

    .line 746
    :cond_c
    :goto_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 750
    :cond_f
    invoke-interface {p1, v3}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 751
    .local v0, "end":I
    if-lt v0, p2, :cond_c

    .line 752
    invoke-interface {p1, v3}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_c

    .line 754
    .end local v0    # "end":I
    .end local v3    # "span":Ljava/lang/Object;, "TT;"
    .end local v4    # "start":I
    :cond_19
    return-void
.end method

.method private setRangeSpan(Landroid/text/Editable;II)V
    .registers 6
    .param p1, "editable"    # Landroid/text/Editable;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 532
    iget-object v0, p0, Landroid/widget/SpellChecker$SpellParser;->mRange:Ljava/lang/Object;

    const/16 v1, 0x21

    invoke-interface {p1, v0, p2, p3, v1}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 533
    return-void
.end method


# virtual methods
.method public isFinished()Z
    .registers 3

    .prologue
    .line 521
    iget-object v0, p0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    # getter for: Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/SpellChecker;->access$200(Landroid/widget/SpellChecker;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    iget-object v1, p0, Landroid/widget/SpellChecker$SpellParser;->mRange:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public parse()V
    .registers 26

    .prologue
    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    move-object/from16 v22, v0

    # getter for: Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v22 .. v22}, Landroid/widget/SpellChecker;->access$200(Landroid/widget/SpellChecker;)Landroid/widget/TextView;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Landroid/text/Editable;

    .line 547
    .local v5, "editable":Landroid/text/Editable;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    move-object/from16 v22, v0

    # getter for: Landroid/widget/SpellChecker;->mIsSentenceSpellCheckSupported:Z
    invoke-static/range {v22 .. v22}, Landroid/widget/SpellChecker;->access$400(Landroid/widget/SpellChecker;)Z

    move-result v22

    if-eqz v22, :cond_af

    .line 550
    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->mRange:Ljava/lang/Object;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v5, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v23

    add-int/lit8 v23, v23, -0x32

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 556
    .local v16, "start":I
    :goto_30
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->mRange:Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v5, v0}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .line 558
    .local v6, "end":I
    move/from16 v0, v16

    add-int/lit16 v0, v0, 0x15e

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v20

    .line 559
    .local v20, "wordIteratorWindowEnd":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    move-object/from16 v22, v0

    # getter for: Landroid/widget/SpellChecker;->mWordIterator:Landroid/text/method/WordIterator;
    invoke-static/range {v22 .. v22}, Landroid/widget/SpellChecker;->access$500(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v16

    move/from16 v2, v20

    invoke-virtual {v0, v5, v1, v2}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    move-object/from16 v22, v0

    # getter for: Landroid/widget/SpellChecker;->mWordIterator:Landroid/text/method/WordIterator;
    invoke-static/range {v22 .. v22}, Landroid/widget/SpellChecker;->access$500(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/text/method/WordIterator;->preceding(I)I

    move-result v21

    .line 564
    .local v21, "wordStart":I
    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_bd

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    move-object/from16 v22, v0

    # getter for: Landroid/widget/SpellChecker;->mWordIterator:Landroid/text/method/WordIterator;
    invoke-static/range {v22 .. v22}, Landroid/widget/SpellChecker;->access$500(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/text/method/WordIterator;->following(I)I

    move-result v19

    .line 566
    .local v19, "wordEnd":I
    const/16 v22, -0x1

    move/from16 v0, v19

    move/from16 v1, v22

    if-eq v0, v1, :cond_a1

    .line 567
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    move-object/from16 v22, v0

    # getter for: Landroid/widget/SpellChecker;->mWordIterator:Landroid/text/method/WordIterator;
    invoke-static/range {v22 .. v22}, Landroid/widget/SpellChecker;->access$500(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/text/method/WordIterator;->getBeginning(I)I

    move-result v21

    .line 572
    :cond_a1
    :goto_a1
    const/16 v22, -0x1

    move/from16 v0, v19

    move/from16 v1, v22

    if-ne v0, v1, :cond_d0

    .line 576
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/widget/SpellChecker$SpellParser;->removeRangeSpan(Landroid/text/Editable;)V

    .line 742
    :goto_ae
    return-void

    .line 553
    .end local v6    # "end":I
    .end local v16    # "start":I
    .end local v19    # "wordEnd":I
    .end local v20    # "wordIteratorWindowEnd":I
    .end local v21    # "wordStart":I
    :cond_af
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->mRange:Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v5, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v16

    .restart local v16    # "start":I
    goto/16 :goto_30

    .line 570
    .restart local v6    # "end":I
    .restart local v20    # "wordIteratorWindowEnd":I
    .restart local v21    # "wordStart":I
    :cond_bd
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    move-object/from16 v22, v0

    # getter for: Landroid/widget/SpellChecker;->mWordIterator:Landroid/text/method/WordIterator;
    invoke-static/range {v22 .. v22}, Landroid/widget/SpellChecker;->access$500(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/text/method/WordIterator;->getEnd(I)I

    move-result v19

    .restart local v19    # "wordEnd":I
    goto :goto_a1

    .line 582
    :cond_d0
    add-int/lit8 v22, v16, -0x1

    add-int/lit8 v23, v6, 0x1

    const-class v24, Landroid/text/style/SpellCheckSpan;

    move/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v5, v0, v1, v2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Landroid/text/style/SpellCheckSpan;

    .line 584
    .local v14, "spellCheckSpans":[Landroid/text/style/SpellCheckSpan;
    add-int/lit8 v22, v16, -0x1

    add-int/lit8 v23, v6, 0x1

    const-class v24, Landroid/text/style/SuggestionSpan;

    move/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v5, v0, v1, v2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Landroid/text/style/SuggestionSpan;

    .line 587
    .local v17, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    const/16 v18, 0x0

    .line 588
    .local v18, "wordCount":I
    const/4 v9, 0x0

    .line 590
    .local v9, "scheduleOtherSpellCheck":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    move-object/from16 v22, v0

    # getter for: Landroid/widget/SpellChecker;->mIsSentenceSpellCheckSupported:Z
    invoke-static/range {v22 .. v22}, Landroid/widget/SpellChecker;->access$400(Landroid/widget/SpellChecker;)Z

    move-result v22

    if-eqz v22, :cond_1f2

    .line 591
    move/from16 v0, v20

    if-ge v0, v6, :cond_108

    .line 596
    const/4 v9, 0x1

    .line 598
    :cond_108
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    move-object/from16 v22, v0

    # getter for: Landroid/widget/SpellChecker;->mWordIterator:Landroid/text/method/WordIterator;
    invoke-static/range {v22 .. v22}, Landroid/widget/SpellChecker;->access$500(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/method/WordIterator;->preceding(I)I

    move-result v12

    .line 599
    .local v12, "spellCheckEnd":I
    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v12, v0, :cond_143

    const/4 v3, 0x1

    .line 600
    .local v3, "correct":Z
    :goto_121
    if-eqz v3, :cond_13a

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    move-object/from16 v22, v0

    # getter for: Landroid/widget/SpellChecker;->mWordIterator:Landroid/text/method/WordIterator;
    invoke-static/range {v22 .. v22}, Landroid/widget/SpellChecker;->access$500(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Landroid/text/method/WordIterator;->getEnd(I)I

    move-result v12

    .line 602
    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v12, v0, :cond_145

    const/4 v3, 0x1

    .line 604
    :cond_13a
    :goto_13a
    if-nez v3, :cond_147

    .line 608
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/widget/SpellChecker$SpellParser;->removeRangeSpan(Landroid/text/Editable;)V

    goto/16 :goto_ae

    .line 599
    .end local v3    # "correct":Z
    :cond_143
    const/4 v3, 0x0

    goto :goto_121

    .line 602
    .restart local v3    # "correct":Z
    :cond_145
    const/4 v3, 0x0

    goto :goto_13a

    .line 613
    :cond_147
    move/from16 v15, v21

    .line 614
    .local v15, "spellCheckStart":I
    const/4 v4, 0x1

    .line 616
    .local v4, "createSpellCheckSpan":Z
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_14b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    move-object/from16 v22, v0

    # getter for: Landroid/widget/SpellChecker;->mLength:I
    invoke-static/range {v22 .. v22}, Landroid/widget/SpellChecker;->access$600(Landroid/widget/SpellChecker;)I

    move-result v22

    move/from16 v0, v22

    if-ge v7, v0, :cond_18d

    .line 617
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    move-object/from16 v22, v0

    # getter for: Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;
    invoke-static/range {v22 .. v22}, Landroid/widget/SpellChecker;->access$700(Landroid/widget/SpellChecker;)[Landroid/text/style/SpellCheckSpan;

    move-result-object v22

    aget-object v13, v22, v7

    .line 618
    .local v13, "spellCheckSpan":Landroid/text/style/SpellCheckSpan;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    move-object/from16 v22, v0

    # getter for: Landroid/widget/SpellChecker;->mIds:[I
    invoke-static/range {v22 .. v22}, Landroid/widget/SpellChecker;->access$800(Landroid/widget/SpellChecker;)[I

    move-result-object v22

    aget v22, v22, v7

    if-ltz v22, :cond_179

    invoke-virtual {v13}, Landroid/text/style/SpellCheckSpan;->isSpellCheckInProgress()Z

    move-result v22

    if-eqz v22, :cond_17c

    .line 616
    :cond_179
    :goto_179
    add-int/lit8 v7, v7, 0x1

    goto :goto_14b

    .line 621
    :cond_17c
    invoke-interface {v5, v13}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    .line 622
    .local v11, "spanStart":I
    invoke-interface {v5, v13}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v10

    .line 623
    .local v10, "spanEnd":I
    if-lt v10, v15, :cond_179

    if-lt v12, v11, :cond_179

    .line 627
    if-gt v11, v15, :cond_1ab

    if-gt v12, v10, :cond_1ab

    .line 630
    const/4 v4, 0x0

    .line 650
    .end local v10    # "spanEnd":I
    .end local v11    # "spanStart":I
    .end local v13    # "spellCheckSpan":Landroid/text/style/SpellCheckSpan;
    :cond_18d
    move/from16 v0, v16

    if-ge v12, v0, :cond_1b7

    .line 662
    :cond_191
    :goto_191
    move/from16 v21, v12

    .line 730
    .end local v3    # "correct":Z
    .end local v4    # "createSpellCheckSpan":Z
    .end local v7    # "i":I
    .end local v12    # "spellCheckEnd":I
    .end local v15    # "spellCheckStart":I
    :cond_193
    :goto_193
    if-eqz v9, :cond_2ff

    move/from16 v0, v21

    if-gt v0, v6, :cond_2ff

    .line 732
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v5, v1, v6}, Landroid/widget/SpellChecker$SpellParser;->setRangeSpan(Landroid/text/Editable;II)V

    .line 741
    :goto_1a0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    move-object/from16 v22, v0

    # invokes: Landroid/widget/SpellChecker;->spellCheck()V
    invoke-static/range {v22 .. v22}, Landroid/widget/SpellChecker;->access$1000(Landroid/widget/SpellChecker;)V

    goto/16 :goto_ae

    .line 637
    .restart local v3    # "correct":Z
    .restart local v4    # "createSpellCheckSpan":Z
    .restart local v7    # "i":I
    .restart local v10    # "spanEnd":I
    .restart local v11    # "spanStart":I
    .restart local v12    # "spellCheckEnd":I
    .restart local v13    # "spellCheckSpan":Landroid/text/style/SpellCheckSpan;
    .restart local v15    # "spellCheckStart":I
    :cond_1ab
    invoke-interface {v5, v13}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 638
    invoke-static {v11, v15}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 639
    invoke-static {v10, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    goto :goto_179

    .line 653
    .end local v10    # "spanEnd":I
    .end local v11    # "spanStart":I
    .end local v13    # "spellCheckSpan":Landroid/text/style/SpellCheckSpan;
    :cond_1b7
    if-gt v12, v15, :cond_1e4

    .line 654
    # getter for: Landroid/widget/SpellChecker;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/widget/SpellChecker;->access$300()Ljava/lang/String;

    move-result-object v22

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Trying to spellcheck invalid region, from "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " to "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_191

    .line 658
    :cond_1e4
    if-eqz v4, :cond_191

    .line 659
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    # invokes: Landroid/widget/SpellChecker;->addSpellCheckSpan(Landroid/text/Editable;II)V
    invoke-static {v0, v5, v15, v12}, Landroid/widget/SpellChecker;->access$900(Landroid/widget/SpellChecker;Landroid/text/Editable;II)V

    goto :goto_191

    .line 664
    .end local v3    # "correct":Z
    .end local v4    # "createSpellCheckSpan":Z
    .end local v7    # "i":I
    .end local v12    # "spellCheckEnd":I
    .end local v15    # "spellCheckStart":I
    :cond_1f2
    move/from16 v0, v21

    if-gt v0, v6, :cond_193

    .line 665
    move/from16 v0, v19

    move/from16 v1, v16

    if-lt v0, v1, :cond_282

    move/from16 v0, v19

    move/from16 v1, v21

    if-le v0, v1, :cond_282

    .line 666
    const/16 v22, 0x32

    move/from16 v0, v18

    move/from16 v1, v22

    if-lt v0, v1, :cond_20c

    .line 667
    const/4 v9, 0x1

    .line 668
    goto :goto_193

    .line 673
    :cond_20c
    move/from16 v0, v21

    move/from16 v1, v16

    if-ge v0, v1, :cond_228

    move/from16 v0, v19

    move/from16 v1, v16

    if-le v0, v1, :cond_228

    .line 674
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v5, v1, v14}, Landroid/widget/SpellChecker$SpellParser;->removeSpansAt(Landroid/text/Editable;I[Ljava/lang/Object;)V

    .line 675
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v5, v1, v2}, Landroid/widget/SpellChecker$SpellParser;->removeSpansAt(Landroid/text/Editable;I[Ljava/lang/Object;)V

    .line 678
    :cond_228
    move/from16 v0, v21

    if-ge v0, v6, :cond_23c

    move/from16 v0, v19

    if-le v0, v6, :cond_23c

    .line 679
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v14}, Landroid/widget/SpellChecker$SpellParser;->removeSpansAt(Landroid/text/Editable;I[Ljava/lang/Object;)V

    .line 680
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v5, v6, v1}, Landroid/widget/SpellChecker$SpellParser;->removeSpansAt(Landroid/text/Editable;I[Ljava/lang/Object;)V

    .line 684
    :cond_23c
    const/4 v4, 0x1

    .line 685
    .restart local v4    # "createSpellCheckSpan":Z
    move/from16 v0, v19

    move/from16 v1, v16

    if-ne v0, v1, :cond_258

    .line 686
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_244
    array-length v0, v14

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v7, v0, :cond_258

    .line 687
    aget-object v22, v14, v7

    move-object/from16 v0, v22

    invoke-interface {v5, v0}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v10

    .line 688
    .restart local v10    # "spanEnd":I
    move/from16 v0, v16

    if-ne v10, v0, :cond_2f7

    .line 689
    const/4 v4, 0x0

    .line 695
    .end local v7    # "i":I
    .end local v10    # "spanEnd":I
    :cond_258
    move/from16 v0, v21

    if-ne v0, v6, :cond_26f

    .line 696
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_25d
    array-length v0, v14

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v7, v0, :cond_26f

    .line 697
    aget-object v22, v14, v7

    move-object/from16 v0, v22

    invoke-interface {v5, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    .line 698
    .restart local v11    # "spanStart":I
    if-ne v11, v6, :cond_2fb

    .line 699
    const/4 v4, 0x0

    .line 705
    .end local v7    # "i":I
    .end local v11    # "spanStart":I
    :cond_26f
    if-eqz v4, :cond_280

    .line 706
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v21

    move/from16 v2, v19

    # invokes: Landroid/widget/SpellChecker;->addSpellCheckSpan(Landroid/text/Editable;II)V
    invoke-static {v0, v5, v1, v2}, Landroid/widget/SpellChecker;->access$900(Landroid/widget/SpellChecker;Landroid/text/Editable;II)V

    .line 708
    :cond_280
    add-int/lit8 v18, v18, 0x1

    .line 712
    .end local v4    # "createSpellCheckSpan":Z
    :cond_282
    move/from16 v8, v19

    .line 713
    .local v8, "originalWordEnd":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    move-object/from16 v22, v0

    # getter for: Landroid/widget/SpellChecker;->mWordIterator:Landroid/text/method/WordIterator;
    invoke-static/range {v22 .. v22}, Landroid/widget/SpellChecker;->access$500(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/text/method/WordIterator;->following(I)I

    move-result v19

    .line 714
    move/from16 v0, v20

    if-ge v0, v6, :cond_2d3

    const/16 v22, -0x1

    move/from16 v0, v19

    move/from16 v1, v22

    if-eq v0, v1, :cond_2a8

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_2d3

    .line 716
    :cond_2a8
    add-int/lit16 v0, v8, 0x15e

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v20

    .line 718
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    move-object/from16 v22, v0

    # getter for: Landroid/widget/SpellChecker;->mWordIterator:Landroid/text/method/WordIterator;
    invoke-static/range {v22 .. v22}, Landroid/widget/SpellChecker;->access$500(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v5, v8, v1}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    .line 720
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    move-object/from16 v22, v0

    # getter for: Landroid/widget/SpellChecker;->mWordIterator:Landroid/text/method/WordIterator;
    invoke-static/range {v22 .. v22}, Landroid/widget/SpellChecker;->access$500(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Landroid/text/method/WordIterator;->following(I)I

    move-result v19

    .line 722
    :cond_2d3
    const/16 v22, -0x1

    move/from16 v0, v19

    move/from16 v1, v22

    if-eq v0, v1, :cond_193

    .line 723
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    move-object/from16 v22, v0

    # getter for: Landroid/widget/SpellChecker;->mWordIterator:Landroid/text/method/WordIterator;
    invoke-static/range {v22 .. v22}, Landroid/widget/SpellChecker;->access$500(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/text/method/WordIterator;->getBeginning(I)I

    move-result v21

    .line 724
    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1f2

    goto/16 :goto_193

    .line 686
    .end local v8    # "originalWordEnd":I
    .restart local v4    # "createSpellCheckSpan":Z
    .restart local v7    # "i":I
    .restart local v10    # "spanEnd":I
    :cond_2f7
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_244

    .line 696
    .end local v10    # "spanEnd":I
    .restart local v11    # "spanStart":I
    :cond_2fb
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_25d

    .line 738
    .end local v4    # "createSpellCheckSpan":Z
    .end local v7    # "i":I
    .end local v11    # "spanStart":I
    :cond_2ff
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/widget/SpellChecker$SpellParser;->removeRangeSpan(Landroid/text/Editable;)V

    goto/16 :goto_1a0
.end method

.method public parse(II)V
    .registers 8
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 506
    iget-object v2, p0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    # getter for: Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/SpellChecker;->access$200(Landroid/widget/SpellChecker;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->length()I

    move-result v0

    .line 508
    .local v0, "max":I
    if-le p2, v0, :cond_46

    .line 509
    # getter for: Landroid/widget/SpellChecker;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/widget/SpellChecker;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parse invalid region, from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    move v1, v0

    .line 514
    .local v1, "parseEnd":I
    :goto_31
    if-le v1, p1, :cond_45

    .line 515
    iget-object v2, p0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    # getter for: Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/SpellChecker;->access$200(Landroid/widget/SpellChecker;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Editable;

    invoke-direct {p0, v2, p1, v1}, Landroid/widget/SpellChecker$SpellParser;->setRangeSpan(Landroid/text/Editable;II)V

    .line 516
    invoke-virtual {p0}, Landroid/widget/SpellChecker$SpellParser;->parse()V

    .line 518
    :cond_45
    return-void

    .line 512
    .end local v1    # "parseEnd":I
    :cond_46
    move v1, p2

    .restart local v1    # "parseEnd":I
    goto :goto_31
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 525
    iget-object v0, p0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    # getter for: Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/SpellChecker;->access$200(Landroid/widget/SpellChecker;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    invoke-direct {p0, v0}, Landroid/widget/SpellChecker$SpellParser;->removeRangeSpan(Landroid/text/Editable;)V

    .line 526
    return-void
.end method
