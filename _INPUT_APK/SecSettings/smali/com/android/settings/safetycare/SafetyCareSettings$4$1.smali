.class Lcom/android/settings/safetycare/SafetyCareSettings$4$1;
.super Ljava/lang/Object;
.source "SafetyCareSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/safetycare/SafetyCareSettings$4;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/safetycare/SafetyCareSettings$4;


# direct methods
.method constructor <init>(Lcom/android/settings/safetycare/SafetyCareSettings$4;)V
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Lcom/android/settings/safetycare/SafetyCareSettings$4$1;->this$1:Lcom/android/settings/safetycare/SafetyCareSettings$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 291
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/safetycare/SafetyCareSettings$4$1;->this$1:Lcom/android/settings/safetycare/SafetyCareSettings$4;

    iget-object v1, v1, Lcom/android/settings/safetycare/SafetyCareSettings$4;->this$0:Lcom/android/settings/safetycare/SafetyCareSettings;

    iget-object v2, p0, Lcom/android/settings/safetycare/SafetyCareSettings$4$1;->this$1:Lcom/android/settings/safetycare/SafetyCareSettings$4;

    iget-object v2, v2, Lcom/android/settings/safetycare/SafetyCareSettings$4;->this$0:Lcom/android/settings/safetycare/SafetyCareSettings;

    invoke-static {v2}, Lcom/android/settings/safetycare/SafetyCareSettings;->access$700(Lcom/android/settings/safetycare/SafetyCareSettings;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/safetycare/SafetyCareSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :goto_0
    return-void

    .line 292
    :catch_0
    move-exception v0

    .line 293
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
