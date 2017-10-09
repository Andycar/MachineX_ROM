.class Lcom/android/settings/powersavingmode/PowerSavingMode2014$5;
.super Ljava/lang/Object;
.source "PowerSavingMode2014.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/powersavingmode/PowerSavingMode2014;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/powersavingmode/PowerSavingMode2014;


# direct methods
.method constructor <init>(Lcom/android/settings/powersavingmode/PowerSavingMode2014;)V
    .locals 0

    .prologue
    .line 346
    iput-object p1, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014$5;->this$0:Lcom/android/settings/powersavingmode/PowerSavingMode2014;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v0, 0x0

    .line 348
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014$5;->this$0:Lcom/android/settings/powersavingmode/PowerSavingMode2014;

    invoke-static {v1}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->access$600(Lcom/android/settings/powersavingmode/PowerSavingMode2014;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 349
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014$5;->this$0:Lcom/android/settings/powersavingmode/PowerSavingMode2014;

    invoke-static {v1}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->access$700(Lcom/android/settings/powersavingmode/PowerSavingMode2014;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "data_powersaving_mode"

    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014$5;->this$0:Lcom/android/settings/powersavingmode/PowerSavingMode2014;

    invoke-static {v3}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->access$600(Lcom/android/settings/powersavingmode/PowerSavingMode2014;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 352
    return-void
.end method
