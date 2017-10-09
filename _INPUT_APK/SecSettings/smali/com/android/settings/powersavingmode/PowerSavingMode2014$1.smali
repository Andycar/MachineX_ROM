.class Lcom/android/settings/powersavingmode/PowerSavingMode2014$1;
.super Landroid/database/ContentObserver;
.source "PowerSavingMode2014.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/powersavingmode/PowerSavingMode2014;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/powersavingmode/PowerSavingMode2014;


# direct methods
.method constructor <init>(Lcom/android/settings/powersavingmode/PowerSavingMode2014;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014$1;->this$0:Lcom/android/settings/powersavingmode/PowerSavingMode2014;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 88
    const-string v1, "PowerSavingMode2014"

    const-string v2, "onChange() "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014$1;->this$0:Lcom/android/settings/powersavingmode/PowerSavingMode2014;

    invoke-static {v1}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->access$000(Lcom/android/settings/powersavingmode/PowerSavingMode2014;)V

    .line 90
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.POWERSAVING_MODE_SWITCH_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 91
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014$1;->this$0:Lcom/android/settings/powersavingmode/PowerSavingMode2014;

    invoke-virtual {v1}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 92
    return-void
.end method
