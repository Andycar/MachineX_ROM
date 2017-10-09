.class Lcom/android/settings/SettingsActivity$ToddlerModeObserver;
.super Landroid/database/ContentObserver;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ToddlerModeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsActivity;)V
    .locals 1

    .prologue
    .line 6841
    iput-object p1, p0, Lcom/android/settings/SettingsActivity$ToddlerModeObserver;->this$0:Lcom/android/settings/SettingsActivity;

    .line 6842
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 6843
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 6847
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 6848
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$ToddlerModeObserver;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->invalidateHeaders()V

    .line 6849
    return-void
.end method
