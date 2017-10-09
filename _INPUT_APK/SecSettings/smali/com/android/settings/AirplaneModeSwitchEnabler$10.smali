.class Lcom/android/settings/AirplaneModeSwitchEnabler$10;
.super Ljava/lang/Object;
.source "AirplaneModeSwitchEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$value:Z


# direct methods
.method constructor <init>(Lcom/android/settings/AirplaneModeSwitchEnabler;Z)V
    .locals 0

    .prologue
    .line 501
    iput-object p1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler$10;->this$0:Lcom/android/settings/AirplaneModeSwitchEnabler;

    iput-boolean p2, p0, Lcom/android/settings/AirplaneModeSwitchEnabler$10;->val$value:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 504
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler$10;->this$0:Lcom/android/settings/AirplaneModeSwitchEnabler;

    invoke-static {v0}, Lcom/android/settings/AirplaneModeSwitchEnabler;->access$100(Lcom/android/settings/AirplaneModeSwitchEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler$10;->val$value:Z

    if-eq v0, v1, :cond_0

    .line 505
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler$10;->this$0:Lcom/android/settings/AirplaneModeSwitchEnabler;

    iget-boolean v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler$10;->val$value:Z

    invoke-static {v0, v1}, Lcom/android/settings/AirplaneModeSwitchEnabler;->access$300(Lcom/android/settings/AirplaneModeSwitchEnabler;Z)V

    .line 516
    :cond_0
    return-void
.end method
