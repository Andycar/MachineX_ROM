.class Lcom/android/settings/safetycare/SafetyCareSettings$4;
.super Ljava/lang/Object;
.source "SafetyCareSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/safetycare/SafetyCareSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/safetycare/SafetyCareSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/safetycare/SafetyCareSettings;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/settings/safetycare/SafetyCareSettings$4;->this$0:Lcom/android/settings/safetycare/SafetyCareSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 10
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v9, 0x1

    .line 270
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/safetycare/SafetyCareSettings$4;->this$0:Lcom/android/settings/safetycare/SafetyCareSettings;

    invoke-static {v2}, Lcom/android/settings/safetycare/SafetyCareSettings;->access$500(Lcom/android/settings/safetycare/SafetyCareSettings;)Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.android.GeoLookout"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 272
    iget-object v2, p0, Lcom/android/settings/safetycare/SafetyCareSettings$4;->this$0:Lcom/android/settings/safetycare/SafetyCareSettings;

    iget-object v3, p0, Lcom/android/settings/safetycare/SafetyCareSettings$4;->this$0:Lcom/android/settings/safetycare/SafetyCareSettings;

    invoke-static {v3}, Lcom/android/settings/safetycare/SafetyCareSettings;->access$600(Lcom/android/settings/safetycare/SafetyCareSettings;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/safetycare/SafetyCareSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    :goto_0
    return v9

    .line 273
    :catch_0
    move-exception v1

    .line 275
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/safetycare/SafetyCareSettings$4;->this$0:Lcom/android/settings/safetycare/SafetyCareSettings;

    invoke-virtual {v2}, Lcom/android/settings/safetycare/SafetyCareSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 277
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0a1d03

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/safetycare/SafetyCareSettings$4;->this$0:Lcom/android/settings/safetycare/SafetyCareSettings;

    invoke-virtual {v3}, Lcom/android/settings/safetycare/SafetyCareSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a1d04

    new-array v5, v9, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/settings/safetycare/SafetyCareSettings$4;->this$0:Lcom/android/settings/safetycare/SafetyCareSettings;

    invoke-virtual {v7}, Lcom/android/settings/safetycare/SafetyCareSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a1d06

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a1d05

    new-instance v4, Lcom/android/settings/safetycare/SafetyCareSettings$4$1;

    invoke-direct {v4, p0}, Lcom/android/settings/safetycare/SafetyCareSettings$4$1;-><init>(Lcom/android/settings/safetycare/SafetyCareSettings$4;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 297
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method
