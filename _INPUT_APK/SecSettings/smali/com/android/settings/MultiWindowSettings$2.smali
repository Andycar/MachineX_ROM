.class Lcom/android/settings/MultiWindowSettings$2;
.super Landroid/database/ContentObserver;
.source "MultiWindowSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MultiWindowSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MultiWindowSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/MultiWindowSettings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/settings/MultiWindowSettings$2;->this$0:Lcom/android/settings/MultiWindowSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 7
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 88
    iget-object v4, p0, Lcom/android/settings/MultiWindowSettings$2;->this$0:Lcom/android/settings/MultiWindowSettings;

    invoke-virtual {v4}, Lcom/android/settings/MultiWindowSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "access_control_enabled"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_1

    move v0, v2

    .line 89
    .local v0, "mAccessControl":Z
    :goto_0
    const-string v4, "MultiWindowSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onChange() Access control : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v4, p0, Lcom/android/settings/MultiWindowSettings$2;->this$0:Lcom/android/settings/MultiWindowSettings;

    invoke-virtual {v4}, Lcom/android/settings/MultiWindowSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "easy_mode_switch"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_2

    move v1, v3

    .line 91
    .local v1, "mIsEasyMode":Z
    :goto_1
    const-string v4, "MultiWindowSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onChange() Easy mode :  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    if-nez v0, :cond_0

    if-eqz v1, :cond_3

    .line 93
    :cond_0
    iget-object v2, p0, Lcom/android/settings/MultiWindowSettings$2;->this$0:Lcom/android/settings/MultiWindowSettings;

    invoke-static {v2}, Lcom/android/settings/MultiWindowSettings;->access$200(Lcom/android/settings/MultiWindowSettings;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 96
    :goto_2
    return-void

    .end local v0    # "mAccessControl":Z
    .end local v1    # "mIsEasyMode":Z
    :cond_1
    move v0, v3

    .line 88
    goto :goto_0

    .restart local v0    # "mAccessControl":Z
    :cond_2
    move v1, v2

    .line 90
    goto :goto_1

    .line 95
    .restart local v1    # "mIsEasyMode":Z
    :cond_3
    iget-object v3, p0, Lcom/android/settings/MultiWindowSettings$2;->this$0:Lcom/android/settings/MultiWindowSettings;

    invoke-static {v3}, Lcom/android/settings/MultiWindowSettings;->access$200(Lcom/android/settings/MultiWindowSettings;)Landroid/widget/Switch;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_2
.end method
