.class Lcom/android/settings/SelectInfoCoverSettings$10;
.super Ljava/lang/Object;
.source "SelectInfoCoverSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 557
    iput-object p1, p0, Lcom/android/settings/SelectInfoCoverSettings$10;->this$0:Lcom/android/settings/SelectInfoCoverSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 559
    iget-object v0, p0, Lcom/android/settings/SelectInfoCoverSettings$10;->this$0:Lcom/android/settings/SelectInfoCoverSettings;

    invoke-static {v0}, Lcom/android/settings/SelectInfoCoverSettings;->access$600(Lcom/android/settings/SelectInfoCoverSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iget-object v0, p0, Lcom/android/settings/SelectInfoCoverSettings$10;->this$0:Lcom/android/settings/SelectInfoCoverSettings;

    invoke-static {v0}, Lcom/android/settings/SelectInfoCoverSettings;->access$600(Lcom/android/settings/SelectInfoCoverSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 560
    return-void

    .line 559
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
