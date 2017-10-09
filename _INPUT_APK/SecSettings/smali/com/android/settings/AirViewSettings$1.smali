.class Lcom/android/settings/AirViewSettings$1;
.super Landroid/database/ContentObserver;
.source "AirViewSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AirViewSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AirViewSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/AirViewSettings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/settings/AirViewSettings$1;->this$0:Lcom/android/settings/AirViewSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x0

    .line 112
    iget-object v1, p0, Lcom/android/settings/AirViewSettings$1;->this$0:Lcom/android/settings/AirViewSettings;

    invoke-static {v1}, Lcom/android/settings/AirViewSettings;->access$000(Lcom/android/settings/AirViewSettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "air_view_master_onoff"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 114
    .local v0, "airViewState":Z
    :cond_0
    iget-object v1, p0, Lcom/android/settings/AirViewSettings$1;->this$0:Lcom/android/settings/AirViewSettings;

    invoke-static {v1}, Lcom/android/settings/AirViewSettings;->access$100(Lcom/android/settings/AirViewSettings;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 115
    iget-object v1, p0, Lcom/android/settings/AirViewSettings$1;->this$0:Lcom/android/settings/AirViewSettings;

    invoke-static {v1}, Lcom/android/settings/AirViewSettings;->access$200(Lcom/android/settings/AirViewSettings;)V

    .line 116
    return-void
.end method
