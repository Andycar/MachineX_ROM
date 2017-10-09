.class Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;
.super Ljava/lang/Object;
.source "SamsungTouchExplorer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/SamsungTouchExplorer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendAccessibilityEventDelayed"
.end annotation


# instance fields
.field private final mDelay:I

.field private final mEventType:I

.field final synthetic this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/SamsungTouchExplorer;II)V
    .registers 4
    .param p2, "eventType"    # I
    .param p3, "delay"    # I

    .prologue
    .line 2385
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2386
    iput p2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->mEventType:I

    .line 2387
    iput p3, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->mDelay:I

    .line 2388
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .prologue
    .line 2391
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$2800(Lcom/android/server/accessibility/SamsungTouchExplorer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2392
    return-void
.end method

.method public forceSendAndRemove()V
    .registers 2

    .prologue
    .line 2403
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2404
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->run()V

    .line 2405
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    .line 2407
    :cond_c
    return-void
.end method

.method public isPending()Z
    .registers 2

    .prologue
    .line 2399
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$2800(Lcom/android/server/accessibility/SamsungTouchExplorer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public post()V
    .registers 5

    .prologue
    .line 2395
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$2800(Lcom/android/server/accessibility/SamsungTouchExplorer;)Landroid/os/Handler;

    move-result-object v0

    iget v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->mDelay:I

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2396
    return-void
.end method

.method public run()V
    .registers 3

    .prologue
    .line 2411
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    iget v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->mEventType:I

    # invokes: Lcom/android/server/accessibility/SamsungTouchExplorer;->sendAccessibilityEvent(I)V
    invoke-static {v0, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$2000(Lcom/android/server/accessibility/SamsungTouchExplorer;I)V

    .line 2412
    return-void
.end method
