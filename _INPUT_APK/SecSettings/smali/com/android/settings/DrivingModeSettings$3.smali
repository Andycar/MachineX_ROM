.class Lcom/android/settings/DrivingModeSettings$3;
.super Ljava/lang/Object;
.source "DrivingModeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DrivingModeSettings;->showDrivingModeOnDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DrivingModeSettings;

.field final synthetic val$checkBox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/settings/DrivingModeSettings;Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 586
    iput-object p1, p0, Lcom/android/settings/DrivingModeSettings$3;->this$0:Lcom/android/settings/DrivingModeSettings;

    iput-object p2, p0, Lcom/android/settings/DrivingModeSettings$3;->val$checkBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 593
    iget-object v1, p0, Lcom/android/settings/DrivingModeSettings$3;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 594
    .local v0, "mDoNotShowChecked":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/DrivingModeSettings$3;->this$0:Lcom/android/settings/DrivingModeSettings;

    invoke-static {v1}, Lcom/android/settings/DrivingModeSettings;->access$100(Lcom/android/settings/DrivingModeSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "quickpanel_drivingmode_checked"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 595
    return-void

    .line 593
    .end local v0    # "mDoNotShowChecked":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
