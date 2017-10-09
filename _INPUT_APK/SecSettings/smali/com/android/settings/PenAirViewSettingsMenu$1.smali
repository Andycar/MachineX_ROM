.class Lcom/android/settings/PenAirViewSettingsMenu$1;
.super Landroid/database/ContentObserver;
.source "PenAirViewSettingsMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/PenAirViewSettingsMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/PenAirViewSettingsMenu;


# direct methods
.method constructor <init>(Lcom/android/settings/PenAirViewSettingsMenu;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/settings/PenAirViewSettingsMenu$1;->this$0:Lcom/android/settings/PenAirViewSettingsMenu;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 146
    const-string v0, "PenAirViewSettings"

    const-string v1, "onChange() PenAirView Changed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu$1;->this$0:Lcom/android/settings/PenAirViewSettingsMenu;

    invoke-static {v0}, Lcom/android/settings/PenAirViewSettingsMenu;->access$000(Lcom/android/settings/PenAirViewSettingsMenu;)V

    .line 148
    return-void
.end method
