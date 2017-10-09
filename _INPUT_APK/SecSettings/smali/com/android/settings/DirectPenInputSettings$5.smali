.class Lcom/android/settings/DirectPenInputSettings$5;
.super Ljava/lang/Object;
.source "DirectPenInputSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DirectPenInputSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DirectPenInputSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DirectPenInputSettings;)V
    .locals 0

    .prologue
    .line 348
    iput-object p1, p0, Lcom/android/settings/DirectPenInputSettings$5;->this$0:Lcom/android/settings/DirectPenInputSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 351
    instance-of v5, p1, Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_4

    move-object v0, p1

    .line 352
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 353
    .local v0, "checkPref":Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    .line 354
    .local v1, "isChecked":Z
    iget-object v5, p0, Lcom/android/settings/DirectPenInputSettings$5;->this$0:Lcom/android/settings/DirectPenInputSettings;

    invoke-static {v5}, Lcom/android/settings/DirectPenInputSettings;->access$100(Lcom/android/settings/DirectPenInputSettings;)Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/DirectPenInputSettings$5;->this$0:Lcom/android/settings/DirectPenInputSettings;

    invoke-static {v6}, Lcom/android/settings/DirectPenInputSettings;->access$200(Lcom/android/settings/DirectPenInputSettings;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_1

    move v2, v4

    .line 355
    .local v2, "writingBuddyOn":Z
    :goto_0
    if-nez v2, :cond_2

    .line 356
    if-nez v1, :cond_0

    move v3, v4

    :cond_0
    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 362
    .end local v0    # "checkPref":Landroid/preference/CheckBoxPreference;
    .end local v1    # "isChecked":Z
    .end local v2    # "writingBuddyOn":Z
    :goto_1
    return v4

    .restart local v0    # "checkPref":Landroid/preference/CheckBoxPreference;
    .restart local v1    # "isChecked":Z
    :cond_1
    move v2, v3

    .line 354
    goto :goto_0

    .line 358
    .restart local v2    # "writingBuddyOn":Z
    :cond_2
    iget-object v5, p0, Lcom/android/settings/DirectPenInputSettings$5;->this$0:Lcom/android/settings/DirectPenInputSettings;

    invoke-static {v5}, Lcom/android/settings/DirectPenInputSettings;->access$100(Lcom/android/settings/DirectPenInputSettings;)Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/DirectPenInputSettings$5;->this$0:Lcom/android/settings/DirectPenInputSettings;

    invoke-static {v6}, Lcom/android/settings/DirectPenInputSettings;->access$1000(Lcom/android/settings/DirectPenInputSettings;)Ljava/lang/String;

    move-result-object v6

    if-ne v1, v4, :cond_3

    move v3, v4

    :cond_3
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .end local v0    # "checkPref":Landroid/preference/CheckBoxPreference;
    .end local v1    # "isChecked":Z
    .end local v2    # "writingBuddyOn":Z
    :cond_4
    move v4, v3

    .line 362
    goto :goto_1
.end method
