.class Lcom/android/settings/PenAirViewHelp$1;
.super Landroid/database/ContentObserver;
.source "PenAirViewHelp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/PenAirViewHelp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/PenAirViewHelp;


# direct methods
.method constructor <init>(Lcom/android/settings/PenAirViewHelp;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/settings/PenAirViewHelp$1;->this$0:Lcom/android/settings/PenAirViewHelp;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x0

    .line 118
    iget-object v2, p0, Lcom/android/settings/PenAirViewHelp$1;->this$0:Lcom/android/settings/PenAirViewHelp;

    invoke-virtual {v2}, Lcom/android/settings/PenAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "air_view_master_onoff"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 119
    .local v0, "AirViewState":Z
    :cond_0
    iget-object v2, p0, Lcom/android/settings/PenAirViewHelp$1;->this$0:Lcom/android/settings/PenAirViewHelp;

    invoke-static {v2}, Lcom/android/settings/PenAirViewHelp;->access$000(Lcom/android/settings/PenAirViewHelp;)Landroid/widget/Switch;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 120
    iget-object v2, p0, Lcom/android/settings/PenAirViewHelp$1;->this$0:Lcom/android/settings/PenAirViewHelp;

    invoke-static {v2}, Lcom/android/settings/PenAirViewHelp;->access$000(Lcom/android/settings/PenAirViewHelp;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 121
    :cond_1
    iget-object v2, p0, Lcom/android/settings/PenAirViewHelp$1;->this$0:Lcom/android/settings/PenAirViewHelp;

    iget-object v2, v2, Lcom/android/settings/PenAirViewHelp;->helpContent:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_2

    .line 122
    iget-object v2, p0, Lcom/android/settings/PenAirViewHelp$1;->this$0:Lcom/android/settings/PenAirViewHelp;

    iget-object v2, v2, Lcom/android/settings/PenAirViewHelp;->helpContent:Landroid/widget/LinearLayout;

    const v3, 0x7f1000bf

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 123
    .local v1, "tryBtn":Landroid/widget/Button;
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 125
    .end local v1    # "tryBtn":Landroid/widget/Button;
    :cond_2
    return-void
.end method
