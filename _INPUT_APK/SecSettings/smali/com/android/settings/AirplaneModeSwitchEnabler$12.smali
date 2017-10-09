.class Lcom/android/settings/AirplaneModeSwitchEnabler$12;
.super Ljava/lang/Object;
.source "AirplaneModeSwitchEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AirplaneModeSwitchEnabler;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AirplaneModeSwitchEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/AirplaneModeSwitchEnabler;)V
    .locals 0

    .prologue
    .line 529
    iput-object p1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler$12;->this$0:Lcom/android/settings/AirplaneModeSwitchEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "diaog"    # Landroid/content/DialogInterface;

    .prologue
    .line 533
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler$12;->this$0:Lcom/android/settings/AirplaneModeSwitchEnabler;

    invoke-static {v0}, Lcom/android/settings/AirplaneModeSwitchEnabler;->access$600(Lcom/android/settings/AirplaneModeSwitchEnabler;)Landroid/widget/Switch;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler$12;->this$0:Lcom/android/settings/AirplaneModeSwitchEnabler;

    invoke-static {v0}, Lcom/android/settings/AirplaneModeSwitchEnabler;->access$600(Lcom/android/settings/AirplaneModeSwitchEnabler;)Landroid/widget/Switch;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler$12;->this$0:Lcom/android/settings/AirplaneModeSwitchEnabler;

    invoke-static {v1}, Lcom/android/settings/AirplaneModeSwitchEnabler;->access$100(Lcom/android/settings/AirplaneModeSwitchEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 535
    :cond_0
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler$12;->this$0:Lcom/android/settings/AirplaneModeSwitchEnabler;

    invoke-static {v0}, Lcom/android/settings/AirplaneModeSwitchEnabler;->access$700(Lcom/android/settings/AirplaneModeSwitchEnabler;)Landroid/widget/CheckBox;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 536
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler$12;->this$0:Lcom/android/settings/AirplaneModeSwitchEnabler;

    invoke-static {v0}, Lcom/android/settings/AirplaneModeSwitchEnabler;->access$700(Lcom/android/settings/AirplaneModeSwitchEnabler;)Landroid/widget/CheckBox;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler$12;->this$0:Lcom/android/settings/AirplaneModeSwitchEnabler;

    invoke-static {v1}, Lcom/android/settings/AirplaneModeSwitchEnabler;->access$100(Lcom/android/settings/AirplaneModeSwitchEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 537
    :cond_1
    const-string v0, "AirplaneModeSwitchEnabler"

    const-string v1, "mAlertDialog.setOnCancelListener"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    return-void
.end method
