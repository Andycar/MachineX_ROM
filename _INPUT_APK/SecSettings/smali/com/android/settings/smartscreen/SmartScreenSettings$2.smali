.class Lcom/android/settings/smartscreen/SmartScreenSettings$2;
.super Ljava/lang/Object;
.source "SmartScreenSettings.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/smartscreen/SmartScreenSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/smartscreen/SmartScreenSettings;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$2;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 166
    const/16 v3, 0x42

    if-ne p2, v3, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v1, :cond_0

    .line 167
    iget-object v3, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$2;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    invoke-static {v3}, Lcom/android/settings/smartscreen/SmartScreenSettings;->access$200(Lcom/android/settings/smartscreen/SmartScreenSettings;)Landroid/widget/Switch;

    move-result-object v3

    if-nez v3, :cond_1

    .line 168
    const-string v1, "SmartScreenSettings"

    const-string v3, "mActionBarSwitc is null"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_0
    :goto_0
    return v2

    .line 171
    :cond_1
    iget-object v3, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$2;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    invoke-static {v3}, Lcom/android/settings/smartscreen/SmartScreenSettings;->access$200(Lcom/android/settings/smartscreen/SmartScreenSettings;)Landroid/widget/Switch;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    if-nez v3, :cond_3

    move v0, v1

    .line 172
    .local v0, "desiredState":Z
    :goto_1
    iget-object v3, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$2;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    invoke-static {v3}, Lcom/android/settings/smartscreen/SmartScreenSettings;->access$200(Lcom/android/settings/smartscreen/SmartScreenSettings;)Landroid/widget/Switch;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 173
    const-string v3, "SmartScreenSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onKey: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "SEC_FLOATING_FEATURE_SETTINGS_CAMERA_ONLY_MODEL"

    invoke-static {v3}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 175
    :cond_2
    iget-object v3, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$2;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    invoke-virtual {v3}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v0, :cond_4

    :goto_2
    invoke-static {v3, v1}, Lcom/android/internal/view/RotationPolicy;->setRotationLock(Landroid/content/Context;Z)V

    .line 180
    :goto_3
    iget-object v1, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$2;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    invoke-static {v1}, Lcom/android/settings/smartscreen/SmartScreenSettings;->access$300(Lcom/android/settings/smartscreen/SmartScreenSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 181
    iget-object v1, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$2;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    invoke-static {v1}, Lcom/android/settings/smartscreen/SmartScreenSettings;->access$400(Lcom/android/settings/smartscreen/SmartScreenSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .end local v0    # "desiredState":Z
    :cond_3
    move v0, v2

    .line 171
    goto :goto_1

    .restart local v0    # "desiredState":Z
    :cond_4
    move v1, v2

    .line 175
    goto :goto_2

    .line 177
    :cond_5
    iget-object v3, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$2;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    invoke-virtual {v3}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v0, :cond_6

    :goto_4
    invoke-static {v3, v1}, Lcom/android/internal/view/RotationPolicy;->setRotationLockForAccessibility(Landroid/content/Context;Z)V

    .line 178
    const-string v1, "SmartScreenSettings"

    const-string v3, "setRotationLockForAccessibility is called"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_6
    move v1, v2

    .line 177
    goto :goto_4
.end method
