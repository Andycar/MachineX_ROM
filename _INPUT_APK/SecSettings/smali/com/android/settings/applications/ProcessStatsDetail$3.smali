.class Lcom/android/settings/applications/ProcessStatsDetail$3;
.super Landroid/content/BroadcastReceiver;
.source "ProcessStatsDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ProcessStatsDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/ProcessStatsDetail;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ProcessStatsDetail;)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Lcom/android/settings/applications/ProcessStatsDetail$3;->this$0:Lcom/android/settings/applications/ProcessStatsDetail;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail$3;->this$0:Lcom/android/settings/applications/ProcessStatsDetail;

    invoke-static {v0}, Lcom/android/settings/applications/ProcessStatsDetail;->access$000(Lcom/android/settings/applications/ProcessStatsDetail;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail$3;->getResultCode()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 282
    return-void

    .line 281
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
