.class Lcom/android/settings/HomeSettings$HomePackageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HomeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/HomeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HomePackageReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/HomeSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/HomeSettings;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/settings/HomeSettings$HomePackageReceiver;->this$0:Lcom/android/settings/HomeSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/HomeSettings;Lcom/android/settings/HomeSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/HomeSettings;
    .param p2, "x1"    # Lcom/android/settings/HomeSettings$1;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/settings/HomeSettings$HomePackageReceiver;-><init>(Lcom/android/settings/HomeSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    .line 75
    iget-object v0, p0, Lcom/android/settings/HomeSettings$HomePackageReceiver;->this$0:Lcom/android/settings/HomeSettings;

    invoke-static {v0}, Lcom/android/settings/HomeSettings;->access$000(Lcom/android/settings/HomeSettings;)V

    .line 76
    invoke-static {p1}, Lcom/android/settings/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/Index;

    move-result-object v0

    const-class v1, Lcom/android/settings/HomeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/settings/search/Index;->updateFromClassNameResource(Ljava/lang/String;ZZ)V

    .line 78
    return-void
.end method
