.class public abstract Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;
.super Ljava/lang/Object;
.source "CaptioningManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/CaptioningManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CaptioningChangeListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 497
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnabledChanged(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 503
    return-void
.end method

.method public onFontScaleChanged(F)V
    .registers 2
    .param p1, "fontScale"    # F

    .prologue
    .line 527
    return-void
.end method

.method public onLocaleChanged(Ljava/util/Locale;)V
    .registers 2
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 519
    return-void
.end method

.method public onUserStyleChanged(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V
    .registers 2
    .param p1, "userStyle"    # Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .prologue
    .line 511
    return-void
.end method
