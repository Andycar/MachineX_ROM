.class Lcom/android/settings/accessibility/AccessibilitySettingsMobility$1;
.super Lcom/android/settings/accessibility/SettingsContentObserver;
.source "AccessibilitySettingsMobility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/AccessibilitySettingsMobility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/AccessibilitySettingsMobility;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$1;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

    invoke-direct {p0, p2}, Lcom/android/settings/accessibility/SettingsContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$1;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

    invoke-static {v0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->access$000(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)V

    .line 124
    return-void
.end method
