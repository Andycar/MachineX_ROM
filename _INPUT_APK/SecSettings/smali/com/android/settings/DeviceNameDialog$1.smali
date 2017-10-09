.class Lcom/android/settings/DeviceNameDialog$1;
.super Ljava/lang/Object;
.source "DeviceNameDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DeviceNameDialog;->createDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DeviceNameDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/DeviceNameDialog;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/settings/DeviceNameDialog$1;->this$0:Lcom/android/settings/DeviceNameDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 66
    iget-object v1, p0, Lcom/android/settings/DeviceNameDialog$1;->this$0:Lcom/android/settings/DeviceNameDialog;

    invoke-static {v1}, Lcom/android/settings/DeviceNameDialog;->access$000(Lcom/android/settings/DeviceNameDialog;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.DEVICE_NAME_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 68
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/DeviceNameDialog$1;->this$0:Lcom/android/settings/DeviceNameDialog;

    invoke-virtual {v1, v0}, Lcom/android/settings/DeviceNameDialog;->sendBroadcast(Landroid/content/Intent;)V

    .line 70
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/android/settings/DeviceNameDialog$1;->this$0:Lcom/android/settings/DeviceNameDialog;

    invoke-virtual {v1}, Lcom/android/settings/DeviceNameDialog;->finish()V

    .line 71
    return-void
.end method
