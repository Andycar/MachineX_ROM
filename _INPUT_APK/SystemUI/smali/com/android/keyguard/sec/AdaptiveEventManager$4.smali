.class Lcom/android/keyguard/sec/AdaptiveEventManager$4;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "AdaptiveEventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/AdaptiveEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/AdaptiveEventManager;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$4;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBootCompleted()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    .line 182
    iget-object v4, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$4;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    invoke-static {v4}, Lcom/android/keyguard/sec/AdaptiveEventManager;->access$700(Lcom/android/keyguard/sec/AdaptiveEventManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lock_show_info"

    const/4 v6, -0x2

    invoke-static {v4, v5, v3, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v3, :cond_1

    move v0, v3

    .line 184
    .local v0, "isShowInformation":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 185
    iget-object v4, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$4;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    invoke-static {v4}, Lcom/android/keyguard/sec/AdaptiveEventManager;->access$700(Lcom/android/keyguard/sec/AdaptiveEventManager;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isAdditionalWeatherEnabled(Landroid/content/Context;)Z

    move-result v1

    .line 186
    .local v1, "isWeatherEnabled":Z
    if-eqz v1, :cond_0

    .line 187
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$4;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    invoke-static {v4}, Lcom/android/keyguard/sec/AdaptiveEventManager;->access$800(Lcom/android/keyguard/sec/AdaptiveEventManager;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 188
    .local v2, "weatherTrigger":Landroid/content/Intent;
    const-string v4, "START"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 189
    const-string v3, "PACKAGE"

    const-string v4, "com.android.systemui"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    const-string v3, "CP"

    iget-object v4, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$4;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    invoke-static {v4}, Lcom/android/keyguard/sec/AdaptiveEventManager;->access$900(Lcom/android/keyguard/sec/AdaptiveEventManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    iget-object v3, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$4;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    invoke-static {v3}, Lcom/android/keyguard/sec/AdaptiveEventManager;->access$700(Lcom/android/keyguard/sec/AdaptiveEventManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 194
    .end local v1    # "isWeatherEnabled":Z
    .end local v2    # "weatherTrigger":Landroid/content/Intent;
    :cond_0
    return-void

    .line 182
    .end local v0    # "isShowInformation":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPackageChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 197
    const-string v0, "com.sec.android.app.shealth"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$4;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    const-string v1, "com.sec.android.app.shealth.walkingmate.service.WalkingMateDayStepService"

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/AdaptiveEventManager;->removeAdaptiveEvent(Ljava/lang/String;)V

    .line 200
    :cond_0
    return-void
.end method
