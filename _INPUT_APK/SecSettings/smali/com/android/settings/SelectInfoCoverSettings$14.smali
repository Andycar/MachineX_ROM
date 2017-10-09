.class Lcom/android/settings/SelectInfoCoverSettings$14;
.super Ljava/lang/Object;
.source "SelectInfoCoverSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SelectInfoCoverSettings;->showGuidePopup(Landroid/preference/Preference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SelectInfoCoverSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/SelectInfoCoverSettings;)V
    .locals 0

    .prologue
    .line 582
    iput-object p1, p0, Lcom/android/settings/SelectInfoCoverSettings$14;->this$0:Lcom/android/settings/SelectInfoCoverSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 584
    iget-object v0, p0, Lcom/android/settings/SelectInfoCoverSettings$14;->this$0:Lcom/android/settings/SelectInfoCoverSettings;

    invoke-static {v0}, Lcom/android/settings/SelectInfoCoverSettings;->access$000(Lcom/android/settings/SelectInfoCoverSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iget-object v0, p0, Lcom/android/settings/SelectInfoCoverSettings$14;->this$0:Lcom/android/settings/SelectInfoCoverSettings;

    invoke-static {v0}, Lcom/android/settings/SelectInfoCoverSettings;->access$000(Lcom/android/settings/SelectInfoCoverSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 585
    return-void

    .line 584
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
