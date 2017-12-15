.class Lcom/samsung/hapticfeedback/HapticEffect$SettingsContentObserver;
.super Landroid/database/ContentObserver;
.source "HapticEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/hapticfeedback/HapticEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsContentObserver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/samsung/hapticfeedback/HapticEffect;


# direct methods
.method public constructor <init>(Lcom/samsung/hapticfeedback/HapticEffect;Landroid/os/Handler;)V
    .registers 4
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 570
    iput-object p1, p0, Lcom/samsung/hapticfeedback/HapticEffect$SettingsContentObserver;->this$0:Lcom/samsung/hapticfeedback/HapticEffect;

    .line 571
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 564
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect$SettingsContentObserver;->mContext:Landroid/content/Context;

    .line 572
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 5
    .param p1, "selfChange"    # Z

    .prologue
    .line 589
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 590
    iget-object v0, p0, Lcom/samsung/hapticfeedback/HapticEffect$SettingsContentObserver;->this$0:Lcom/samsung/hapticfeedback/HapticEffect;

    iget-object v1, p0, Lcom/samsung/hapticfeedback/HapticEffect$SettingsContentObserver;->this$0:Lcom/samsung/hapticfeedback/HapticEffect;

    iget-object v2, p0, Lcom/samsung/hapticfeedback/HapticEffect$SettingsContentObserver;->mContext:Landroid/content/Context;

    # invokes: Lcom/samsung/hapticfeedback/HapticEffect;->isEnableSettingMenu(Landroid/content/Context;)Z
    invoke-static {v1, v2}, Lcom/samsung/hapticfeedback/HapticEffect;->access$100(Lcom/samsung/hapticfeedback/HapticEffect;Landroid/content/Context;)Z

    move-result v1

    # setter for: Lcom/samsung/hapticfeedback/HapticEffect;->mEnableInSettingMenu:Z
    invoke-static {v0, v1}, Lcom/samsung/hapticfeedback/HapticEffect;->access$002(Lcom/samsung/hapticfeedback/HapticEffect;Z)Z

    .line 591
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 578
    iput-object p1, p0, Lcom/samsung/hapticfeedback/HapticEffect$SettingsContentObserver;->mContext:Landroid/content/Context;

    .line 579
    return-void
.end method
