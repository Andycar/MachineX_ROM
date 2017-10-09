.class Lcom/android/settings/SPenSettingsMenu$1;
.super Landroid/database/ContentObserver;
.source "SPenSettingsMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SPenSettingsMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SPenSettingsMenu;


# direct methods
.method constructor <init>(Lcom/android/settings/SPenSettingsMenu;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/android/settings/SPenSettingsMenu$1;->this$0:Lcom/android/settings/SPenSettingsMenu;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 227
    const-string v0, "SPenSettingsMenu"

    const-string v1, "onChange() PEN_AIR_VIEW_SWITCH_CHANGED"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v0, p0, Lcom/android/settings/SPenSettingsMenu$1;->this$0:Lcom/android/settings/SPenSettingsMenu;

    invoke-static {v0}, Lcom/android/settings/SPenSettingsMenu;->access$000(Lcom/android/settings/SPenSettingsMenu;)V

    .line 229
    return-void
.end method
