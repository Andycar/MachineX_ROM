.class Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment$1;
.super Ljava/lang/Object;
.source "TapAndHoldDelayCustomFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment$1;->this$0:Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment$1;->this$0:Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;

    invoke-static {v0}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->access$000(Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;)Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->checkLongPressStatus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 26
    iget-object v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment$1;->this$0:Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;

    invoke-static {v0}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->access$100(Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 30
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->access$200()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    iget-object v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment$1;->this$0:Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;

    invoke-static {v0}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->access$400(Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment$1;->this$0:Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;

    invoke-static {v1}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->access$300(Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 33
    :cond_1
    return-void

    .line 27
    :cond_2
    iget-object v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment$1;->this$0:Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;

    invoke-static {v0}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->access$000(Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;)Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->checkLongPressStatus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment$1;->this$0:Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;

    invoke-static {v0}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->access$100(Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
