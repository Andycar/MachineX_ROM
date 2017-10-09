.class Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight$2;
.super Landroid/database/ContentObserver;
.source "AccessibilityWidgetProviderAssistiveLight.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight$2;->this$0:Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 158
    invoke-static {}, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->access$000()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 159
    invoke-static {}, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->access$000()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->access$100(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 160
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_ASSISTIVE_OFF_WIDGETUPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 161
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->access$000()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 164
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
