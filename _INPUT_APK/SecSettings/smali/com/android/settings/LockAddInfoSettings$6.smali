.class Lcom/android/settings/LockAddInfoSettings$6;
.super Ljava/lang/Object;
.source "LockAddInfoSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/LockAddInfoSettings;->showMobileDateChargeEnableDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/LockAddInfoSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/LockAddInfoSettings;)V
    .locals 0

    .prologue
    .line 418
    iput-object p1, p0, Lcom/android/settings/LockAddInfoSettings$6;->this$0:Lcom/android/settings/LockAddInfoSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v2, 0x0

    .line 422
    const-string v0, "LockAddInfoSettings"

    const-string v1, "showMobileDateChargeEnableDialog onCancel disable"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iget-object v0, p0, Lcom/android/settings/LockAddInfoSettings$6;->this$0:Lcom/android/settings/LockAddInfoSettings;

    invoke-static {v0}, Lcom/android/settings/LockAddInfoSettings;->access$300(Lcom/android/settings/LockAddInfoSettings;)I

    move-result v0

    if-nez v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/android/settings/LockAddInfoSettings$6;->this$0:Lcom/android/settings/LockAddInfoSettings;

    invoke-static {v0}, Lcom/android/settings/LockAddInfoSettings;->access$400(Lcom/android/settings/LockAddInfoSettings;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 430
    :goto_0
    return-void

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/android/settings/LockAddInfoSettings$6;->this$0:Lcom/android/settings/LockAddInfoSettings;

    invoke-static {v0}, Lcom/android/settings/LockAddInfoSettings;->access$500(Lcom/android/settings/LockAddInfoSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 428
    iget-object v0, p0, Lcom/android/settings/LockAddInfoSettings$6;->this$0:Lcom/android/settings/LockAddInfoSettings;

    invoke-virtual {v0}, Lcom/android/settings/LockAddInfoSettings;->updateSwitchState()V

    goto :goto_0
.end method
