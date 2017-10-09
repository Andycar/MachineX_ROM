.class Lcom/android/settings/notification/ZenModeDNDSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "ZenModeDNDSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/ZenModeDNDSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenModeDNDSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModeDNDSettings;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeDNDSettings$2;->this$0:Lcom/android/settings/notification/ZenModeDNDSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 181
    const-string v4, "reason"

    invoke-virtual {p2, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 182
    .local v2, "mReason":I
    iget-object v4, p0, Lcom/android/settings/notification/ZenModeDNDSettings$2;->this$0:Lcom/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v4}, Lcom/android/settings/notification/ZenModeDNDSettings;->access$000(Lcom/android/settings/notification/ZenModeDNDSettings;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "zen_mode"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    move v1, v3

    .line 184
    .local v1, "mIsDND":Z
    :cond_0
    if-ne v2, v3, :cond_3

    if-nez v1, :cond_3

    iget-object v4, p0, Lcom/android/settings/notification/ZenModeDNDSettings$2;->this$0:Lcom/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v4}, Lcom/android/settings/notification/ZenModeDNDSettings;->access$100(Lcom/android/settings/notification/ZenModeDNDSettings;)Landroid/service/notification/ZenModeConfig;

    move-result-object v4

    iget-boolean v4, v4, Landroid/service/notification/ZenModeConfig;->applyDowntime:Z

    if-eqz v4, :cond_3

    .line 186
    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 187
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeDNDSettings$2;->this$0:Lcom/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v3}, Lcom/android/settings/notification/ZenModeDNDSettings;->access$200(Lcom/android/settings/notification/ZenModeDNDSettings;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 188
    .local v0, "mAlertDialog":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0a1061

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 189
    const v3, 0x7f0a1062

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 190
    const v3, 0x104000a

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 191
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 205
    .end local v0    # "mAlertDialog":Landroid/app/AlertDialog$Builder;
    :cond_1
    :goto_0
    return-void

    .line 193
    :cond_2
    iget-object v4, p0, Lcom/android/settings/notification/ZenModeDNDSettings$2;->this$0:Lcom/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v4}, Lcom/android/settings/notification/ZenModeDNDSettings;->access$200(Lcom/android/settings/notification/ZenModeDNDSettings;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a1063

    invoke-static {v4, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 196
    :cond_3
    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    if-eqz v1, :cond_1

    .line 197
    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 198
    iget-object v4, p0, Lcom/android/settings/notification/ZenModeDNDSettings$2;->this$0:Lcom/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v4}, Lcom/android/settings/notification/ZenModeDNDSettings;->access$200(Lcom/android/settings/notification/ZenModeDNDSettings;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a1066

    invoke-static {v4, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 201
    :cond_4
    iget-object v4, p0, Lcom/android/settings/notification/ZenModeDNDSettings$2;->this$0:Lcom/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v4}, Lcom/android/settings/notification/ZenModeDNDSettings;->access$200(Lcom/android/settings/notification/ZenModeDNDSettings;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a1067

    invoke-static {v4, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
