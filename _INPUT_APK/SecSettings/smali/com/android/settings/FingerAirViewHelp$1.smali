.class Lcom/android/settings/FingerAirViewHelp$1;
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
    .line 101
    iput-object p1, p0, Lcom/android/settings/FingerAirViewHelp$1;->this$0:Lcom/android/settings/FingerAirViewHelp;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x0

    .line 104
    iget-object v2, p0, Lcom/android/settings/FingerAirViewHelp$1;->this$0:Lcom/android/settings/FingerAirViewHelp;

    invoke-virtual {v2}, Lcom/android/settings/FingerAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "air_view_master_onoff"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 105
    .local v0, "AirViewState":Z
    :cond_0
    iget-object v2, p0, Lcom/android/settings/FingerAirViewHelp$1;->this$0:Lcom/android/settings/FingerAirViewHelp;

    invoke-static {v2}, Lcom/android/settings/FingerAirViewHelp;->access$000(Lcom/android/settings/FingerAirViewHelp;)Landroid/widget/Switch;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 106
    iget-object v2, p0, Lcom/android/settings/FingerAirViewHelp$1;->this$0:Lcom/android/settings/FingerAirViewHelp;

    invoke-static {v2}, Lcom/android/settings/FingerAirViewHelp;->access$000(Lcom/android/settings/FingerAirViewHelp;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 107
    :cond_1
    iget-object v2, p0, Lcom/android/settings/FingerAirViewHelp$1;->this$0:Lcom/android/settings/FingerAirViewHelp;

    iget-object v2, v2, Lcom/android/settings/FingerAirViewHelp;->helpContent:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_2

    .line 108
    iget-object v2, p0, Lcom/android/settings/FingerAirViewHelp$1;->this$0:Lcom/android/settings/FingerAirViewHelp;

    iget-object v2, v2, Lcom/android/settings/FingerAirViewHelp;->helpContent:Landroid/widget/LinearLayout;

    const v3, 0x7f1000bf

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 109
    .local v1, "tryBtn":Landroid/widget/Button;
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 111
    .end local v1    # "tryBtn":Landroid/widget/Button;
    :cond_2
    iget-object v2, p0, Lcom/android/settings/FingerAirViewHelp$1;->this$0:Lcom/android/settings/FingerAirViewHelp;

    iget-object v2, v2, Lcom/android/settings/FingerAirViewHelp;->gallery:Lcom/android/settings/HelpItem;

    if-eqz v2, :cond_3

    .line 112
    iget-object v2, p0, Lcom/android/settings/FingerAirViewHelp$1;->this$0:Lcom/android/settings/FingerAirViewHelp;

    iget-object v2, v2, Lcom/android/settings/FingerAirViewHelp;->gallery:Lcom/android/settings/HelpItem;

    invoke-virtual {v2, v0}, Lcom/android/settings/HelpItem;->setTryBtnEnable(Z)V

    .line 114
    :cond_3
    iget-object v2, p0, Lcom/android/settings/FingerAirViewHelp$1;->this$0:Lcom/android/settings/FingerAirViewHelp;

    iget-object v2, v2, Lcom/android/settings/FingerAirViewHelp;->message:Lcom/android/settings/HelpItem;

    if-eqz v2, :cond_4

    .line 115
    iget-object v2, p0, Lcom/android/settings/FingerAirViewHelp$1;->this$0:Lcom/android/settings/FingerAirViewHelp;

    iget-object v2, v2, Lcom/android/settings/FingerAirViewHelp;->message:Lcom/android/settings/HelpItem;

    invoke-virtual {v2, v0}, Lcom/android/settings/HelpItem;->setTryBtnEnable(Z)V

    .line 117
    :cond_4
    iget-object v2, p0, Lcom/android/settings/FingerAirViewHelp$1;->this$0:Lcom/android/settings/FingerAirViewHelp;

    iget-object v2, v2, Lcom/android/settings/FingerAirViewHelp;->video:Lcom/android/settings/HelpItem;

    if-eqz v2, :cond_5

    .line 118
    iget-object v2, p0, Lcom/android/settings/FingerAirViewHelp$1;->this$0:Lcom/android/settings/FingerAirViewHelp;

    iget-object v2, v2, Lcom/android/settings/FingerAirViewHelp;->video:Lcom/android/settings/HelpItem;

    invoke-virtual {v2, v0}, Lcom/android/settings/HelpItem;->setTryBtnEnable(Z)V

    .line 120
    :cond_5
    iget-object v2, p0, Lcom/android/settings/FingerAirViewHelp$1;->this$0:Lcom/android/settings/FingerAirViewHelp;

    iget-object v2, v2, Lcom/android/settings/FingerAirViewHelp;->infoPreview:Lcom/android/settings/HelpItem;

    if-eqz v2, :cond_6

    .line 121
    iget-object v2, p0, Lcom/android/settings/FingerAirViewHelp$1;->this$0:Lcom/android/settings/FingerAirViewHelp;

    iget-object v2, v2, Lcom/android/settings/FingerAirViewHelp;->infoPreview:Lcom/android/settings/HelpItem;

    invoke-virtual {v2, v0}, Lcom/android/settings/HelpItem;->setTryBtnEnable(Z)V

    .line 123
    :cond_6
    iget-object v2, p0, Lcom/android/settings/FingerAirViewHelp$1;->this$0:Lcom/android/settings/FingerAirViewHelp;

    iget-object v2, v2, Lcom/android/settings/FingerAirViewHelp;->splanner:Lcom/android/settings/HelpItem;

    if-eqz v2, :cond_7

    .line 124
    iget-object v2, p0, Lcom/android/settings/FingerAirViewHelp$1;->this$0:Lcom/android/settings/FingerAirViewHelp;

    iget-object v2, v2, Lcom/android/settings/FingerAirViewHelp;->splanner:Lcom/android/settings/HelpItem;

    invoke-virtual {v2, v0}, Lcom/android/settings/HelpItem;->setTryBtnEnable(Z)V

    .line 126
    :cond_7
    return-void
.end method
