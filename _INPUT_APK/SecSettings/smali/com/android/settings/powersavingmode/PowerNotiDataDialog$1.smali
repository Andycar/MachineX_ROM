.class Lcom/android/settings/powersavingmode/PowerNotiDataDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "PowerNotiDataDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/powersavingmode/PowerNotiDataDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/powersavingmode/PowerNotiDataDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/powersavingmode/PowerNotiDataDialog;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/settings/powersavingmode/PowerNotiDataDialog$1;->this$0:Lcom/android/settings/powersavingmode/PowerNotiDataDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 97
    invoke-static {p1}, Lcom/android/settings/powersavingmode/PowerNotiDataDialog;->access$002(Landroid/content/Context;)Landroid/content/Context;

    .line 99
    if-nez p2, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.settings.POWERSAVING_DATA_SERVICE_DONE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerNotiDataDialog$1;->this$0:Lcom/android/settings/powersavingmode/PowerNotiDataDialog;

    iget-object v1, v1, Lcom/android/settings/powersavingmode/PowerNotiDataDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerNotiDataDialog$1;->this$0:Lcom/android/settings/powersavingmode/PowerNotiDataDialog;

    iget-object v1, v1, Lcom/android/settings/powersavingmode/PowerNotiDataDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerNotiDataDialog$1;->this$0:Lcom/android/settings/powersavingmode/PowerNotiDataDialog;

    invoke-virtual {v1}, Lcom/android/settings/powersavingmode/PowerNotiDataDialog;->dismissDialog()V

    goto :goto_0
.end method
