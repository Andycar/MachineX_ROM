.class Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings$1;
.super Landroid/database/ContentObserver;
.source "SmartScrollAdvancedSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings$1;->this$0:Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings$1;->this$0:Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;

    iget-object v1, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings$1;->this$0:Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;

    invoke-static {v1}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->access$000(Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "face_smart_scroll"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->access$100(Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;I)V

    .line 99
    return-void
.end method
