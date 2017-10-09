.class Lcom/android/settings/ToddlerModeSettings$1;
.super Landroid/database/ContentObserver;
.source "ToddlerModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ToddlerModeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ToddlerModeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/ToddlerModeSettings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/settings/ToddlerModeSettings$1;->this$0:Lcom/android/settings/ToddlerModeSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 63
    const-string v0, "ToddlerModeSettings"

    const-string v1, "mToddlerModeObserver - toddler mode state changed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v0, p0, Lcom/android/settings/ToddlerModeSettings$1;->this$0:Lcom/android/settings/ToddlerModeSettings;

    invoke-static {v0}, Lcom/android/settings/ToddlerModeSettings;->access$000(Lcom/android/settings/ToddlerModeSettings;)V

    .line 65
    return-void
.end method
