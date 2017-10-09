.class Lcom/android/settings/smartscreen/SmartScreenSettings$1;
.super Ljava/lang/Object;
.source "SmartScreenSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/smartscreen/SmartScreenSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/smartscreen/SmartScreenSettings;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$1;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 125
    iget-object v1, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$1;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    invoke-static {v1}, Lcom/android/settings/smartscreen/SmartScreenSettings;->access$000(Lcom/android/settings/smartscreen/SmartScreenSettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "intelligent_rotation_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 126
    .local v0, "isEnabledSmartRotation":Z
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$1;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    invoke-virtual {v1}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 128
    :cond_1
    iget-object v1, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$1;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    const v2, 0x7f0a1505

    const v3, 0x7f0a1506

    invoke-static {v1, v2, v3}, Lcom/android/settings/smartscreen/SmartScreenSettings;->access$100(Lcom/android/settings/smartscreen/SmartScreenSettings;II)V

    .line 132
    :goto_0
    return-void

    .line 130
    :cond_2
    iget-object v1, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$1;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    invoke-virtual {v1}, Lcom/android/settings/smartscreen/SmartScreenSettings;->startTutorial()V

    goto :goto_0
.end method
