.class Lcom/android/settings/SelectItemDisplay$8;
.super Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;
.source "SelectItemDisplay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SelectItemDisplay;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SelectItemDisplay;


# direct methods
.method constructor <init>(Lcom/android/settings/SelectItemDisplay;)V
    .locals 0

    .prologue
    .line 410
    iput-object p1, p0, Lcom/android/settings/SelectItemDisplay$8;->this$0:Lcom/android/settings/SelectItemDisplay;

    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverStateChanged(Lcom/samsung/android/sdk/cover/ScoverState;)V
    .locals 2
    .param p1, "state"    # Lcom/samsung/android/sdk/cover/ScoverState;

    .prologue
    .line 413
    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 414
    iget-object v0, p0, Lcom/android/settings/SelectItemDisplay$8;->this$0:Lcom/android/settings/SelectItemDisplay;

    invoke-virtual {v0}, Lcom/android/settings/SelectItemDisplay;->CoverOpen()V

    .line 416
    :cond_0
    return-void
.end method
