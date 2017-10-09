.class Lcom/android/settings/LockscreenMenuSettings$12;
.super Ljava/lang/Object;
.source "LockscreenMenuSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/LockscreenMenuSettings;->showSafetyZoneInfoDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/LockscreenMenuSettings;

.field final synthetic val$layout:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/settings/LockscreenMenuSettings;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 2959
    iput-object p1, p0, Lcom/android/settings/LockscreenMenuSettings$12;->this$0:Lcom/android/settings/LockscreenMenuSettings;

    iput-object p2, p0, Lcom/android/settings/LockscreenMenuSettings$12;->val$layout:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v6, 0x1

    .line 2961
    iget-object v4, p0, Lcom/android/settings/LockscreenMenuSettings$12;->val$layout:Landroid/view/View;

    const v5, 0x7f100167

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 2962
    .local v1, "check":Landroid/widget/CheckBox;
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2963
    iget-object v4, p0, Lcom/android/settings/LockscreenMenuSettings$12;->this$0:Lcom/android/settings/LockscreenMenuSettings;

    invoke-virtual {v4}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "safetyzone_settings"

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2964
    .local v0, "ReverbSharedPrefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 2965
    .local v2, "ed":Landroid/content/SharedPreferences$Editor;
    const-string v4, "DoNotShowDialogOn"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2966
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2969
    .end local v0    # "ReverbSharedPrefs":Landroid/content/SharedPreferences;
    .end local v2    # "ed":Landroid/content/SharedPreferences$Editor;
    :cond_0
    iget-object v4, p0, Lcom/android/settings/LockscreenMenuSettings$12;->this$0:Lcom/android/settings/LockscreenMenuSettings;

    invoke-virtual {v4}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "safety_zone_list"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2970
    .local v3, "safety_zone_list":Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2971
    iget-object v4, p0, Lcom/android/settings/LockscreenMenuSettings$12;->this$0:Lcom/android/settings/LockscreenMenuSettings;

    invoke-static {v4}, Lcom/android/settings/LockscreenMenuSettings;->access$600(Lcom/android/settings/LockscreenMenuSettings;)V

    .line 2975
    :goto_0
    return-void

    .line 2973
    :cond_1
    iget-object v4, p0, Lcom/android/settings/LockscreenMenuSettings$12;->this$0:Lcom/android/settings/LockscreenMenuSettings;

    invoke-virtual {v4}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "safety_zone_enable"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
