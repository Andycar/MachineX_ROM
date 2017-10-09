.class Lcom/android/settings/DataUsageSummary$DeniedBackgroundTraffic$1;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DataUsageSummary$DeniedBackgroundTraffic;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DataUsageSummary$DeniedBackgroundTraffic;


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary$DeniedBackgroundTraffic;)V
    .locals 0

    .prologue
    .line 3844
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary$DeniedBackgroundTraffic$1;->this$0:Lcom/android/settings/DataUsageSummary$DeniedBackgroundTraffic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 3847
    const-string v1, "DataUsage"

    const-string v2, "ConfirmBackgroundTraffic PositiveButton"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3848
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$DeniedBackgroundTraffic$1;->this$0:Lcom/android/settings/DataUsageSummary$DeniedBackgroundTraffic;

    invoke-virtual {v1}, Lcom/android/settings/DataUsageSummary$DeniedBackgroundTraffic;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DataUsageSummary;

    .line 3849
    .local v0, "target":Lcom/android/settings/DataUsageSummary;
    if-eqz v0, :cond_0

    .line 3850
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->access$5400(Lcom/android/settings/DataUsageSummary;)V

    .line 3852
    :cond_0
    return-void
.end method
