.class Lcom/android/settings/AirCmdPreferenceEnabler$1;
.super Landroid/database/ContentObserver;
.source "AirCmdPreferenceEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AirCmdPreferenceEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AirCmdPreferenceEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/AirCmdPreferenceEnabler;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/settings/AirCmdPreferenceEnabler$1;->this$0:Lcom/android/settings/AirCmdPreferenceEnabler;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/AirCmdPreferenceEnabler$1;->this$0:Lcom/android/settings/AirCmdPreferenceEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirCmdPreferenceEnabler;->updateSwitch()V

    .line 58
    return-void
.end method
