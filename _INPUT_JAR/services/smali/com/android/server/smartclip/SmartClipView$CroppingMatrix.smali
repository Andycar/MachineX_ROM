.class Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;
.super Ljava/lang/Object;
.source "SmartClipView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/smartclip/SmartClipView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CroppingMatrix"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/smartclip/SmartClipView$CroppingMatrix$LandscapeMarkingPolicy;,
        Lcom/android/server/smartclip/SmartClipView$CroppingMatrix$PortraitMarkingPolicy;,
        Lcom/android/server/smartclip/SmartClipView$CroppingMatrix$MarkingPolicy;
    }
.end annotation


# instance fields
.field private mCurrentMarkingPolicy:Lcom/android/server/smartclip/SmartClipView$CroppingMatrix$MarkingPolicy;

.field private final mLandscapePolicy:Lcom/android/server/smartclip/SmartClipView$CroppingMatrix$MarkingPolicy;

.field private mMatrix:[I

.field private final mPortraitPolicy:Lcom/android/server/smartclip/SmartClipView$CroppingMatrix$MarkingPolicy;


# direct methods
.method public constructor <init>(IIZ)V
    .registers 5
    .param p1, "height"    # I
    .param p2, "width"    # I
    .param p3, "portrait"    # Z

    .prologue
    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 383
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;->mMatrix:[I

    .line 391
    mul-int v0, p1, p2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;->mMatrix:[I

    .line 393
    new-instance v0, Lcom/android/server/smartclip/SmartClipView$CroppingMatrix$PortraitMarkingPolicy;

    invoke-direct {v0, p1, p2}, Lcom/android/server/smartclip/SmartClipView$CroppingMatrix$PortraitMarkingPolicy;-><init>(II)V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;->mPortraitPolicy:Lcom/android/server/smartclip/SmartClipView$CroppingMatrix$MarkingPolicy;

    .line 394
    new-instance v0, Lcom/android/server/smartclip/SmartClipView$CroppingMatrix$LandscapeMarkingPolicy;

    invoke-direct {v0, p1, p2}, Lcom/android/server/smartclip/SmartClipView$CroppingMatrix$LandscapeMarkingPolicy;-><init>(II)V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;->mLandscapePolicy:Lcom/android/server/smartclip/SmartClipView$CroppingMatrix$MarkingPolicy;

    .line 396
    invoke-virtual {p0, p3}, Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;->setPortrait(Z)V

    .line 397
    return-void
.end method


# virtual methods
.method getMarked(II)I
    .registers 5
    .param p1, "y"    # I
    .param p2, "x"    # I

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;->mMatrix:[I

    iget-object v1, p0, Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;->mCurrentMarkingPolicy:Lcom/android/server/smartclip/SmartClipView$CroppingMatrix$MarkingPolicy;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/smartclip/SmartClipView$CroppingMatrix$MarkingPolicy;->calulate(II)I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public mark(III)V
    .registers 6
    .param p1, "y"    # I
    .param p2, "x"    # I
    .param p3, "markNumber"    # I

    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;->mMatrix:[I

    iget-object v1, p0, Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;->mCurrentMarkingPolicy:Lcom/android/server/smartclip/SmartClipView$CroppingMatrix$MarkingPolicy;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/smartclip/SmartClipView$CroppingMatrix$MarkingPolicy;->calulate(II)I

    move-result v1

    aput p3, v0, v1

    .line 407
    return-void
.end method

.method public reset()V
    .registers 3

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;->mMatrix:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 415
    return-void
.end method

.method public setPortrait(Z)V
    .registers 3
    .param p1, "portrait"    # Z

    .prologue
    .line 400
    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;->mPortraitPolicy:Lcom/android/server/smartclip/SmartClipView$CroppingMatrix$MarkingPolicy;

    :goto_4
    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;->mCurrentMarkingPolicy:Lcom/android/server/smartclip/SmartClipView$CroppingMatrix$MarkingPolicy;

    .line 402
    invoke-virtual {p0}, Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;->reset()V

    .line 403
    return-void

    .line 400
    :cond_a
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;->mLandscapePolicy:Lcom/android/server/smartclip/SmartClipView$CroppingMatrix$MarkingPolicy;

    goto :goto_4
.end method
