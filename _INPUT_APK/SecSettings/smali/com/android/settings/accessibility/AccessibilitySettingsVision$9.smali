.class Lcom/android/settings/accessibility/AccessibilitySettingsVision$9;
.super Landroid/database/ContentObserver;
.source "AccessibilitySettingsVision.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/AccessibilitySettingsVision;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 295
    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$9;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$9;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->access$1400(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)V

    .line 299
    return-void
.end method
