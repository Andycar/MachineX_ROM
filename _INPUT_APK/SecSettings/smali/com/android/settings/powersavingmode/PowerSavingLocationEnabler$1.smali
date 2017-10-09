.class Lcom/android/settings/powersavingmode/PowerSavingLocationEnabler$1;
.super Landroid/database/ContentObserver;
.source "PowerSavingLocationEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/powersavingmode/PowerSavingLocationEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/powersavingmode/PowerSavingLocationEnabler;


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 57
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingLocationEnabler$1;->this$0:Lcom/android/settings/powersavingmode/PowerSavingLocationEnabler;

    invoke-static {v2}, Lcom/android/settings/powersavingmode/PowerSavingLocationEnabler;->access$000(Lcom/android/settings/powersavingmode/PowerSavingLocationEnabler;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "location_mode"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 59
    .local v0, "locationModeState":Z
    :cond_0
    if-eqz v0, :cond_1

    .line 60
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingLocationEnabler$1;->this$0:Lcom/android/settings/powersavingmode/PowerSavingLocationEnabler;

    invoke-static {v2}, Lcom/android/settings/powersavingmode/PowerSavingLocationEnabler;->access$100(Lcom/android/settings/powersavingmode/PowerSavingLocationEnabler;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 62
    :cond_1
    return-void
.end method
