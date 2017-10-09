.class Lcom/android/server/accessibility/OverlayMagnifier$3;
.super Lcom/samsung/android/cover/CoverManager$StateListener;
.source "OverlayMagnifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/OverlayMagnifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/OverlayMagnifier;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/OverlayMagnifier;)V
    .registers 2

    .prologue
    .line 339
    iput-object p1, p0, Lcom/android/server/accessibility/OverlayMagnifier$3;->this$0:Lcom/android/server/accessibility/OverlayMagnifier;

    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverStateChanged(Lcom/samsung/android/cover/CoverState;)V
    .registers 4
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 342
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v0

    .line 344
    .local v0, "coverState":Z
    iget-object v1, p0, Lcom/android/server/accessibility/OverlayMagnifier$3;->this$0:Lcom/android/server/accessibility/OverlayMagnifier;

    # getter for: Lcom/android/server/accessibility/OverlayMagnifier;->mCoverState:Z
    invoke-static {v1}, Lcom/android/server/accessibility/OverlayMagnifier;->access$700(Lcom/android/server/accessibility/OverlayMagnifier;)Z

    move-result v1

    if-eq v1, v0, :cond_1e

    .line 345
    iget-object v1, p0, Lcom/android/server/accessibility/OverlayMagnifier$3;->this$0:Lcom/android/server/accessibility/OverlayMagnifier;

    # setter for: Lcom/android/server/accessibility/OverlayMagnifier;->mCoverState:Z
    invoke-static {v1, v0}, Lcom/android/server/accessibility/OverlayMagnifier;->access$702(Lcom/android/server/accessibility/OverlayMagnifier;Z)Z

    .line 346
    iget-object v1, p0, Lcom/android/server/accessibility/OverlayMagnifier$3;->this$0:Lcom/android/server/accessibility/OverlayMagnifier;

    # getter for: Lcom/android/server/accessibility/OverlayMagnifier;->mCoverState:Z
    invoke-static {v1}, Lcom/android/server/accessibility/OverlayMagnifier;->access$700(Lcom/android/server/accessibility/OverlayMagnifier;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 347
    iget-object v1, p0, Lcom/android/server/accessibility/OverlayMagnifier$3;->this$0:Lcom/android/server/accessibility/OverlayMagnifier;

    # invokes: Lcom/android/server/accessibility/OverlayMagnifier;->hideMagnifier()V
    invoke-static {v1}, Lcom/android/server/accessibility/OverlayMagnifier;->access$500(Lcom/android/server/accessibility/OverlayMagnifier;)V

    .line 350
    :cond_1e
    return-void
.end method
