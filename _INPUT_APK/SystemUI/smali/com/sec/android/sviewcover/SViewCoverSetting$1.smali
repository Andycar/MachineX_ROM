.class Lcom/sec/android/sviewcover/SViewCoverSetting$1;
.super Ljava/lang/Object;
.source "SViewCoverSetting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/sviewcover/SViewCoverSetting;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/sviewcover/SViewCoverSetting;


# direct methods
.method constructor <init>(Lcom/sec/android/sviewcover/SViewCoverSetting;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverSetting$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 46
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 47
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.SelectItemDisplay"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    const v2, 0x10008000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 51
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverSetting$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverSetting;

    invoke-static {v2}, Lcom/sec/android/sviewcover/SViewCoverSetting;->access$000(Lcom/sec/android/sviewcover/SViewCoverSetting;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "exception":Landroid/content/ActivityNotFoundException;
    const-string v2, "SViewCoverSetting"

    const-string v3, "ActivityNotFoundException !!"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
