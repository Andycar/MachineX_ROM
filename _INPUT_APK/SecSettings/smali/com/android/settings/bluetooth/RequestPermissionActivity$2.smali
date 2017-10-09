.class Lcom/android/settings/bluetooth/RequestPermissionActivity$2;
.super Ljava/lang/Object;
.source "RequestPermissionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/RequestPermissionActivity;->createDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/RequestPermissionActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/RequestPermissionActivity;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity$2;->this$0:Lcom/android/settings/bluetooth/RequestPermissionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 180
    iget-object v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity$2;->this$0:Lcom/android/settings/bluetooth/RequestPermissionActivity;

    invoke-static {v1}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->access$300(Lcom/android/settings/bluetooth/RequestPermissionActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 182
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity$2;->this$0:Lcom/android/settings/bluetooth/RequestPermissionActivity;

    iget-object v2, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity$2;->this$0:Lcom/android/settings/bluetooth/RequestPermissionActivity;

    invoke-static {v2}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->access$300(Lcom/android/settings/bluetooth/RequestPermissionActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity$2;->this$0:Lcom/android/settings/bluetooth/RequestPermissionActivity;

    invoke-static {v1}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->access$400(Lcom/android/settings/bluetooth/RequestPermissionActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 188
    iget-object v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity$2;->this$0:Lcom/android/settings/bluetooth/RequestPermissionActivity;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->finish()V

    .line 189
    return-void

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method
