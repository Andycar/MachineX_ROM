.class Lcom/android/settings/LockAddInfoSettings$13;
.super Ljava/lang/Object;
.source "LockAddInfoSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/LockAddInfoSettings;->showGuidePopup(Landroid/preference/Preference;)V
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
    .line 617
    iput-object p1, p0, Lcom/android/settings/LockAddInfoSettings$13;->this$0:Lcom/android/settings/LockAddInfoSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 619
    iget-object v0, p0, Lcom/android/settings/LockAddInfoSettings$13;->this$0:Lcom/android/settings/LockAddInfoSettings;

    invoke-static {v0}, Lcom/android/settings/LockAddInfoSettings;->access$500(Lcom/android/settings/LockAddInfoSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iget-object v0, p0, Lcom/android/settings/LockAddInfoSettings$13;->this$0:Lcom/android/settings/LockAddInfoSettings;

    invoke-static {v0}, Lcom/android/settings/LockAddInfoSettings;->access$500(Lcom/android/settings/LockAddInfoSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 620
    return-void

    .line 619
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
