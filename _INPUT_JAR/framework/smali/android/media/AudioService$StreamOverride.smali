.class Landroid/media/AudioService$StreamOverride;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StreamOverride"
.end annotation


# static fields
.field private static final DEFAULT_STREAM_TYPE_OVERRIDE_DELAY_MS:I = 0x1388

.field private static final TOUCH_EXPLORE_STREAM_TYPE_OVERRIDE_DELAY_MS:I = 0x3e8

.field static sDelayMs:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 6665
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static init(Landroid/content/Context;)V
    .registers 3
    .param p0, "ctxt"    # Landroid/content/Context;

    .prologue
    .line 6678
    const-string v1, "accessibility"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 6680
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    invoke-static {v1}, Landroid/media/AudioService$StreamOverride;->updateDefaultStreamOverrideDelay(Z)V

    .line 6682
    new-instance v1, Landroid/media/AudioService$StreamOverride;

    invoke-direct {v1}, Landroid/media/AudioService$StreamOverride;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    .line 6684
    return-void
.end method

.method private static updateDefaultStreamOverrideDelay(Z)V
    .registers 4
    .param p0, "touchExploreEnabled"    # Z

    .prologue
    .line 6692
    if-eqz p0, :cond_35

    .line 6693
    const/16 v0, 0x3e8

    sput v0, Landroid/media/AudioService$StreamOverride;->sDelayMs:I

    .line 6697
    :goto_6
    sget-boolean v0, Landroid/media/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_34

    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Touch exploration enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " stream override delay is now "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/media/AudioService$StreamOverride;->sDelayMs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6699
    :cond_34
    return-void

    .line 6695
    :cond_35
    const/16 v0, 0x1388

    sput v0, Landroid/media/AudioService$StreamOverride;->sDelayMs:I

    goto :goto_6
.end method


# virtual methods
.method public onTouchExplorationStateChanged(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 6688
    invoke-static {p1}, Landroid/media/AudioService$StreamOverride;->updateDefaultStreamOverrideDelay(Z)V

    .line 6689
    return-void
.end method
