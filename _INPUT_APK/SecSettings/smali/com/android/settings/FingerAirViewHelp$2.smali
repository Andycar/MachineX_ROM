.class Lcom/android/settings/FingerAirViewHelp$2;
.super Landroid/database/ContentObserver;
.source "FingerAirViewHelp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/FingerAirViewHelp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/FingerAirViewHelp;


# direct methods
.method constructor <init>(Lcom/android/settings/FingerAirViewHelp;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/settings/FingerAirViewHelp$2;->this$0:Lcom/android/settings/FingerAirViewHelp;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x0

    .line 133
    iget-object v1, p0, Lcom/android/settings/FingerAirViewHelp$2;->this$0:Lcom/android/settings/FingerAirViewHelp;

    invoke-virtual {v1}, Lcom/android/settings/FingerAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "finger_air_view"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 135
    .local v0, "fingerAirViewState":Z
    :cond_0
    iget-object v1, p0, Lcom/android/settings/FingerAirViewHelp$2;->this$0:Lcom/android/settings/FingerAirViewHelp;

    invoke-static {v1}, Lcom/android/settings/FingerAirViewHelp;->access$000(Lcom/android/settings/FingerAirViewHelp;)Landroid/widget/Switch;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 136
    iget-object v1, p0, Lcom/android/settings/FingerAirViewHelp$2;->this$0:Lcom/android/settings/FingerAirViewHelp;

    invoke-static {v1}, Lcom/android/settings/FingerAirViewHelp;->access$000(Lcom/android/settings/FingerAirViewHelp;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 137
    :cond_1
    return-void
.end method
