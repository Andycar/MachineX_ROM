.class Lcom/android/settings/SViewCoverEdgeSettings$1;
.super Landroid/database/ContentObserver;
.source "SViewCoverEdgeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SViewCoverEdgeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SViewCoverEdgeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/SViewCoverEdgeSettings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/settings/SViewCoverEdgeSettings$1;->this$0:Lcom/android/settings/SViewCoverEdgeSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v1, 0x0

    .line 66
    const-string v0, "SViewCoverEdgeSettings"

    const-string v2, "onChange() cover_edge_setting_enabled changed"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v2, p0, Lcom/android/settings/SViewCoverEdgeSettings$1;->this$0:Lcom/android/settings/SViewCoverEdgeSettings;

    iget-object v0, p0, Lcom/android/settings/SViewCoverEdgeSettings$1;->this$0:Lcom/android/settings/SViewCoverEdgeSettings;

    invoke-virtual {v0}, Lcom/android/settings/SViewCoverEdgeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "sview_edge_wallpaper"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v0}, Lcom/android/settings/SViewCoverEdgeSettings;->access$002(Lcom/android/settings/SViewCoverEdgeSettings;Z)Z

    .line 69
    iget-object v0, p0, Lcom/android/settings/SViewCoverEdgeSettings$1;->this$0:Lcom/android/settings/SViewCoverEdgeSettings;

    invoke-static {v0}, Lcom/android/settings/SViewCoverEdgeSettings;->access$100(Lcom/android/settings/SViewCoverEdgeSettings;)Landroid/widget/Switch;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/SViewCoverEdgeSettings$1;->this$0:Lcom/android/settings/SViewCoverEdgeSettings;

    invoke-static {v2}, Lcom/android/settings/SViewCoverEdgeSettings;->access$000(Lcom/android/settings/SViewCoverEdgeSettings;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 70
    iget-object v0, p0, Lcom/android/settings/SViewCoverEdgeSettings$1;->this$0:Lcom/android/settings/SViewCoverEdgeSettings;

    invoke-static {v0, v1}, Lcom/android/settings/SViewCoverEdgeSettings;->access$200(Lcom/android/settings/SViewCoverEdgeSettings;Z)V

    .line 71
    return-void

    :cond_0
    move v0, v1

    .line 67
    goto :goto_0
.end method
