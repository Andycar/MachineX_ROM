.class Lcom/android/settings/LockAddInfoSettings$11;
.super Ljava/lang/Object;
.source "LockAddInfoSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/LockAddInfoSettings;->showPermissionDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/LockAddInfoSettings;

.field final synthetic val$layout:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/settings/LockAddInfoSettings;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 515
    iput-object p1, p0, Lcom/android/settings/LockAddInfoSettings$11;->this$0:Lcom/android/settings/LockAddInfoSettings;

    iput-object p2, p0, Lcom/android/settings/LockAddInfoSettings$11;->val$layout:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v5, 0x1

    .line 518
    iget-object v3, p0, Lcom/android/settings/LockAddInfoSettings$11;->val$layout:Landroid/view/View;

    const v4, 0x7f10047f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 519
    .local v1, "check":Landroid/widget/CheckBox;
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 520
    iget-object v3, p0, Lcom/android/settings/LockAddInfoSettings$11;->this$0:Lcom/android/settings/LockAddInfoSettings;

    invoke-virtual {v3}, Lcom/android/settings/LockAddInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "com.android.settings.LockAddInfoSettings"

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 521
    .local v0, "ReverbSharedPrefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 522
    .local v2, "ed":Landroid/content/SharedPreferences$Editor;
    const-string v3, "DoNotShowDialogLocation"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 523
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 525
    .end local v0    # "ReverbSharedPrefs":Landroid/content/SharedPreferences;
    .end local v2    # "ed":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method
