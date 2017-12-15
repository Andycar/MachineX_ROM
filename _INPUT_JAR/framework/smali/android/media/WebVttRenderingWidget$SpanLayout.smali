.class Landroid/media/WebVttRenderingWidget$SpanLayout;
.super Lcom/android/internal/widget/SubtitleView;
.source "WebVttRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/WebVttRenderingWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpanLayout"
.end annotation


# instance fields
.field private final mBuilder:Landroid/text/SpannableStringBuilder;

.field private final mSpans:[Landroid/media/TextTrackCueSpan;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Landroid/media/TextTrackCueSpan;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "spans"    # [Landroid/media/TextTrackCueSpan;

    .prologue
    .line 1848
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SubtitleView;-><init>(Landroid/content/Context;)V

    .line 1844
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Landroid/media/WebVttRenderingWidget$SpanLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    .line 1850
    iput-object p2, p0, Landroid/media/WebVttRenderingWidget$SpanLayout;->mSpans:[Landroid/media/TextTrackCueSpan;

    .line 1852
    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget$SpanLayout;->update()V

    .line 1853
    return-void
.end method


# virtual methods
.method public setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V
    .registers 4
    .param p1, "captionStyle"    # Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .param p2, "fontSize"    # F

    .prologue
    .line 1874
    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    invoke-virtual {p0, v0}, Landroid/media/WebVttRenderingWidget$SpanLayout;->setBackgroundColor(I)V

    .line 1875
    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    invoke-virtual {p0, v0}, Landroid/media/WebVttRenderingWidget$SpanLayout;->setForegroundColor(I)V

    .line 1876
    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    invoke-virtual {p0, v0}, Landroid/media/WebVttRenderingWidget$SpanLayout;->setEdgeColor(I)V

    .line 1877
    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    invoke-virtual {p0, v0}, Landroid/media/WebVttRenderingWidget$SpanLayout;->setEdgeType(I)V

    .line 1878
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/WebVttRenderingWidget$SpanLayout;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1879
    invoke-virtual {p0, p2}, Landroid/media/WebVttRenderingWidget$SpanLayout;->setTextSize(F)V

    .line 1880
    return-void
.end method

.method public update()V
    .registers 7

    .prologue
    .line 1856
    iget-object v0, p0, Landroid/media/WebVttRenderingWidget$SpanLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    .line 1857
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    iget-object v4, p0, Landroid/media/WebVttRenderingWidget$SpanLayout;->mSpans:[Landroid/media/TextTrackCueSpan;

    .line 1859
    .local v4, "spans":[Landroid/media/TextTrackCueSpan;
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1860
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 1862
    array-length v3, v4

    .line 1863
    .local v3, "spanCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v3, :cond_1e

    .line 1864
    aget-object v2, v4, v1

    .line 1865
    .local v2, "span":Landroid/media/TextTrackCueSpan;
    iget-boolean v5, v2, Landroid/media/TextTrackCueSpan;->mEnabled:Z

    if-eqz v5, :cond_1b

    .line 1866
    aget-object v5, v4, v1

    iget-object v5, v5, Landroid/media/TextTrackCueSpan;->mText:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1863
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1870
    .end local v2    # "span":Landroid/media/TextTrackCueSpan;
    :cond_1e
    invoke-virtual {p0, v0}, Landroid/media/WebVttRenderingWidget$SpanLayout;->setText(Ljava/lang/CharSequence;)V

    .line 1871
    return-void
.end method
