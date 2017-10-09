.class Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed$1;
.super Ljava/lang/Object;
.source "SamsungTouchExplorer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;)V
    .registers 2

    .prologue
    .line 2222
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed$1;->this$1:Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 2226
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed$1;->this$1:Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->isLongPressPerformed:Z
    invoke-static {v0, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$2902(Lcom/android/server/accessibility/SamsungTouchExplorer;Z)Z

    .line 2227
    return-void
.end method
