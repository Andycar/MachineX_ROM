.class Landroid/media/WebVttRenderingWidget$CueLayout;
.super Landroid/widget/LinearLayout;
.source "WebVttRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/WebVttRenderingWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CueLayout"
.end annotation


# instance fields
.field private mActive:Z

.field private mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field public final mCue:Landroid/media/TextTrackCue;

.field private mFontSize:F

.field private mOrder:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/media/TextTrackCue;Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cue"    # Landroid/media/TextTrackCue;
    .param p3, "captionStyle"    # Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .param p4, "fontSize"    # F

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1682
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1684
    iput-object p2, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mCue:Landroid/media/TextTrackCue;

    .line 1685
    iput-object p3, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 1686
    iput p4, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mFontSize:F

    .line 1689
    iget v3, p2, Landroid/media/TextTrackCue;->mWritingDirection:I

    const/16 v4, 0x64

    if-ne v3, v4, :cond_21

    move v0, v2

    .line 1691
    .local v0, "horizontal":Z
    :goto_12
    if-eqz v0, :cond_15

    move v1, v2

    :cond_15
    invoke-virtual {p0, v1}, Landroid/media/WebVttRenderingWidget$CueLayout;->setOrientation(I)V

    .line 1693
    iget v1, p2, Landroid/media/TextTrackCue;->mAlignment:I

    packed-switch v1, :pswitch_data_44

    .line 1716
    :goto_1d
    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget$CueLayout;->update()V

    .line 1717
    return-void

    .end local v0    # "horizontal":Z
    :cond_21
    move v0, v1

    .line 1689
    goto :goto_12

    .line 1695
    .restart local v0    # "horizontal":Z
    :pswitch_23
    const v1, 0x800005

    invoke-virtual {p0, v1}, Landroid/media/WebVttRenderingWidget$CueLayout;->setGravity(I)V

    goto :goto_1d

    .line 1698
    :pswitch_2a
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Landroid/media/WebVttRenderingWidget$CueLayout;->setGravity(I)V

    goto :goto_1d

    .line 1701
    :pswitch_2f
    if-eqz v0, :cond_35

    :goto_31
    invoke-virtual {p0, v2}, Landroid/media/WebVttRenderingWidget$CueLayout;->setGravity(I)V

    goto :goto_1d

    :cond_35
    const/16 v2, 0x10

    goto :goto_31

    .line 1705
    :pswitch_38
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Landroid/media/WebVttRenderingWidget$CueLayout;->setGravity(I)V

    goto :goto_1d

    .line 1708
    :pswitch_3d
    const v1, 0x800003

    invoke-virtual {p0, v1}, Landroid/media/WebVttRenderingWidget$CueLayout;->setGravity(I)V

    goto :goto_1d

    .line 1693
    :pswitch_data_44
    .packed-switch 0xc8
        :pswitch_2f
        :pswitch_3d
        :pswitch_23
        :pswitch_2a
        :pswitch_38
    .end packed-switch
.end method

.method static synthetic access$000(Landroid/media/WebVttRenderingWidget$CueLayout;)I
    .registers 2
    .param p0, "x0"    # Landroid/media/WebVttRenderingWidget$CueLayout;

    .prologue
    .line 1671
    iget v0, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mOrder:I

    return v0
.end method


# virtual methods
.method public getCue()Landroid/media/TextTrackCue;
    .registers 2

    .prologue
    .line 1833
    iget-object v0, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mCue:Landroid/media/TextTrackCue;

    return-object v0
.end method

.method public isActive()Z
    .registers 2

    .prologue
    .line 1826
    iget-boolean v0, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mActive:Z

    return v0
.end method

.method public measureForParent(II)V
    .registers 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v9, -0x80000000

    .line 1778
    iget-object v1, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mCue:Landroid/media/TextTrackCue;

    .line 1779
    .local v1, "cue":Landroid/media/TextTrackCue;
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 1780
    .local v6, "specWidth":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 1781
    .local v5, "specHeight":I
    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget$CueLayout;->getLayoutDirection()I

    move-result v2

    .line 1782
    .local v2, "direction":I
    iget v7, v1, Landroid/media/TextTrackCue;->mAlignment:I

    # invokes: Landroid/media/WebVttRenderingWidget;->resolveCueAlignment(II)I
    invoke-static {v2, v7}, Landroid/media/WebVttRenderingWidget;->access$400(II)I

    move-result v0

    .line 1787
    .local v0, "absAlignment":I
    packed-switch v0, :pswitch_data_4a

    .line 1802
    :pswitch_19
    const/4 v3, 0x0

    .line 1807
    .local v3, "maximumSize":I
    :goto_1a
    iget v7, v1, Landroid/media/TextTrackCue;->mSize:I

    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    mul-int/2addr v7, v6

    div-int/lit8 v4, v7, 0x64

    .line 1808
    .local v4, "size":I
    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 1809
    invoke-static {v5, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 1810
    invoke-virtual {p0, p1, p2}, Landroid/media/WebVttRenderingWidget$CueLayout;->measure(II)V

    .line 1811
    return-void

    .line 1789
    .end local v3    # "maximumSize":I
    .end local v4    # "size":I
    :pswitch_2f
    iget v7, v1, Landroid/media/TextTrackCue;->mTextPosition:I

    rsub-int/lit8 v3, v7, 0x64

    .line 1790
    .restart local v3    # "maximumSize":I
    goto :goto_1a

    .line 1792
    .end local v3    # "maximumSize":I
    :pswitch_34
    iget v3, v1, Landroid/media/TextTrackCue;->mTextPosition:I

    .line 1793
    .restart local v3    # "maximumSize":I
    goto :goto_1a

    .line 1795
    .end local v3    # "maximumSize":I
    :pswitch_37
    iget v7, v1, Landroid/media/TextTrackCue;->mTextPosition:I

    const/16 v8, 0x32

    if-gt v7, v8, :cond_42

    .line 1796
    iget v7, v1, Landroid/media/TextTrackCue;->mTextPosition:I

    mul-int/lit8 v3, v7, 0x2

    .restart local v3    # "maximumSize":I
    goto :goto_1a

    .line 1798
    .end local v3    # "maximumSize":I
    :cond_42
    iget v7, v1, Landroid/media/TextTrackCue;->mTextPosition:I

    rsub-int/lit8 v7, v7, 0x64

    mul-int/lit8 v3, v7, 0x2

    .line 1800
    .restart local v3    # "maximumSize":I
    goto :goto_1a

    .line 1787
    nop

    :pswitch_data_4a
    .packed-switch 0xc8
        :pswitch_37
        :pswitch_19
        :pswitch_19
        :pswitch_2f
        :pswitch_34
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .registers 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1770
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 1771
    return-void
.end method

.method public prepForPrune()V
    .registers 2

    .prologue
    .line 1733
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mActive:Z

    .line 1734
    return-void
.end method

.method public setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V
    .registers 7
    .param p1, "style"    # Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .param p2, "fontSize"    # F

    .prologue
    .line 1720
    iput-object p1, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 1721
    iput p2, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mFontSize:F

    .line 1723
    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget$CueLayout;->getChildCount()I

    move-result v2

    .line 1724
    .local v2, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v2, :cond_1b

    .line 1725
    invoke-virtual {p0, v1}, Landroid/media/WebVttRenderingWidget$CueLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1726
    .local v0, "child":Landroid/view/View;
    instance-of v3, v0, Landroid/media/WebVttRenderingWidget$SpanLayout;

    if-eqz v3, :cond_18

    .line 1727
    check-cast v0, Landroid/media/WebVttRenderingWidget$SpanLayout;

    .end local v0    # "child":Landroid/view/View;
    invoke-virtual {v0, p1, p2}, Landroid/media/WebVttRenderingWidget$SpanLayout;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V

    .line 1724
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1730
    :cond_1b
    return-void
.end method

.method public setOrder(I)V
    .registers 2
    .param p1, "order"    # I

    .prologue
    .line 1819
    iput p1, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mOrder:I

    .line 1820
    return-void
.end method

.method public update()V
    .registers 12

    .prologue
    const/4 v10, -0x2

    .line 1737
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mActive:Z

    .line 1739
    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget$CueLayout;->removeAllViews()V

    .line 1741
    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget$CueLayout;->getLayoutDirection()I

    move-result v8

    iget-object v9, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mCue:Landroid/media/TextTrackCue;

    iget v9, v9, Landroid/media/TextTrackCue;->mAlignment:I

    # invokes: Landroid/media/WebVttRenderingWidget;->resolveCueAlignment(II)I
    invoke-static {v8, v9}, Landroid/media/WebVttRenderingWidget;->access$400(II)I

    move-result v2

    .line 1743
    .local v2, "cueAlignment":I
    packed-switch v2, :pswitch_data_42

    .line 1752
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 1755
    .local v0, "alignment":Landroid/text/Layout$Alignment;
    :goto_18
    iget-object v1, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 1756
    .local v1, "captionStyle":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    iget v3, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mFontSize:F

    .line 1757
    .local v3, "fontSize":F
    iget-object v8, p0, Landroid/media/WebVttRenderingWidget$CueLayout;->mCue:Landroid/media/TextTrackCue;

    iget-object v7, v8, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    .line 1758
    .local v7, "lines":[[Landroid/media/TextTrackCueSpan;
    array-length v6, v7

    .line 1759
    .local v6, "lineCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_22
    if-ge v4, v6, :cond_41

    .line 1760
    new-instance v5, Landroid/media/WebVttRenderingWidget$SpanLayout;

    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget$CueLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    aget-object v9, v7, v4

    invoke-direct {v5, v8, v9}, Landroid/media/WebVttRenderingWidget$SpanLayout;-><init>(Landroid/content/Context;[Landroid/media/TextTrackCueSpan;)V

    .line 1761
    .local v5, "lineBox":Landroid/media/WebVttRenderingWidget$SpanLayout;
    invoke-virtual {v5, v0}, Landroid/media/WebVttRenderingWidget$SpanLayout;->setAlignment(Landroid/text/Layout$Alignment;)V

    .line 1762
    invoke-virtual {v5, v1, v3}, Landroid/media/WebVttRenderingWidget$SpanLayout;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V

    .line 1764
    invoke-virtual {p0, v5, v10, v10}, Landroid/media/WebVttRenderingWidget$CueLayout;->addView(Landroid/view/View;II)V

    .line 1759
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    .line 1745
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    .end local v1    # "captionStyle":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .end local v3    # "fontSize":F
    .end local v4    # "i":I
    .end local v5    # "lineBox":Landroid/media/WebVttRenderingWidget$SpanLayout;
    .end local v6    # "lineCount":I
    .end local v7    # "lines":[[Landroid/media/TextTrackCueSpan;
    :pswitch_3b
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    .line 1746
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_18

    .line 1748
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :pswitch_3e
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    .line 1749
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_18

    .line 1766
    .restart local v1    # "captionStyle":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .restart local v3    # "fontSize":F
    .restart local v4    # "i":I
    .restart local v6    # "lineCount":I
    .restart local v7    # "lines":[[Landroid/media/TextTrackCueSpan;
    :cond_41
    return-void

    .line 1743
    :pswitch_data_42
    .packed-switch 0xcb
        :pswitch_3b
        :pswitch_3e
    .end packed-switch
.end method
