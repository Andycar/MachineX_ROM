.class final Lcom/samsung/android/mdnie/MdnieManagerService$ScreenWatchingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MdnieManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdnie/MdnieManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ScreenWatchingReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mdnie/MdnieManagerService;


# direct methods
.method private constructor <init>(Lcom/samsung/android/mdnie/MdnieManagerService;)V
    .registers 2

    .prologue
    .line 153
    iput-object p1, p0, Lcom/samsung/android/mdnie/MdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mdnie/MdnieManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/mdnie/MdnieManagerService;Lcom/samsung/android/mdnie/MdnieManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/samsung/android/mdnie/MdnieManagerService;
    .param p2, "x1"    # Lcom/samsung/android/mdnie/MdnieManagerService$1;

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/samsung/android/mdnie/MdnieManagerService$ScreenWatchingReceiver;-><init>(Lcom/samsung/android/mdnie/MdnieManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 156
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 171
    :cond_e
    :goto_e
    return-void

    .line 161
    :cond_f
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 162
    iget-object v3, p0, Lcom/samsung/android/mdnie/MdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mdnie/MdnieManagerService;

    # setter for: Lcom/samsung/android/mdnie/MdnieManagerService;->mDisplayOn:Z
    invoke-static {v3, v1}, Lcom/samsung/android/mdnie/MdnieManagerService;->access$102(Lcom/samsung/android/mdnie/MdnieManagerService;Z)Z

    .line 163
    iget-object v3, p0, Lcom/samsung/android/mdnie/MdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mdnie/MdnieManagerService;

    iget-object v4, p0, Lcom/samsung/android/mdnie/MdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mdnie/MdnieManagerService;

    # getter for: Lcom/samsung/android/mdnie/MdnieManagerService;->mDisplayOn:Z
    invoke-static {v4}, Lcom/samsung/android/mdnie/MdnieManagerService;->access$100(Lcom/samsung/android/mdnie/MdnieManagerService;)Z

    move-result v4

    if-eqz v4, :cond_32

    iget-object v4, p0, Lcom/samsung/android/mdnie/MdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mdnie/MdnieManagerService;

    # getter for: Lcom/samsung/android/mdnie/MdnieManagerService;->mEmergencyModeDiabled:Z
    invoke-static {v4}, Lcom/samsung/android/mdnie/MdnieManagerService;->access$300(Lcom/samsung/android/mdnie/MdnieManagerService;)Z

    move-result v4

    if-eqz v4, :cond_32

    :goto_2e
    # setter for: Lcom/samsung/android/mdnie/MdnieManagerService;->mMdnieWorkingCondition:Z
    invoke-static {v3, v1}, Lcom/samsung/android/mdnie/MdnieManagerService;->access$202(Lcom/samsung/android/mdnie/MdnieManagerService;Z)Z

    goto :goto_e

    :cond_32
    move v1, v2

    goto :goto_2e

    .line 166
    :cond_34
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 167
    iget-object v3, p0, Lcom/samsung/android/mdnie/MdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mdnie/MdnieManagerService;

    # setter for: Lcom/samsung/android/mdnie/MdnieManagerService;->mDisplayOn:Z
    invoke-static {v3, v2}, Lcom/samsung/android/mdnie/MdnieManagerService;->access$102(Lcom/samsung/android/mdnie/MdnieManagerService;Z)Z

    .line 168
    iget-object v3, p0, Lcom/samsung/android/mdnie/MdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mdnie/MdnieManagerService;

    iget-object v4, p0, Lcom/samsung/android/mdnie/MdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mdnie/MdnieManagerService;

    # getter for: Lcom/samsung/android/mdnie/MdnieManagerService;->mDisplayOn:Z
    invoke-static {v4}, Lcom/samsung/android/mdnie/MdnieManagerService;->access$100(Lcom/samsung/android/mdnie/MdnieManagerService;)Z

    move-result v4

    if-eqz v4, :cond_57

    iget-object v4, p0, Lcom/samsung/android/mdnie/MdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mdnie/MdnieManagerService;

    # getter for: Lcom/samsung/android/mdnie/MdnieManagerService;->mEmergencyModeDiabled:Z
    invoke-static {v4}, Lcom/samsung/android/mdnie/MdnieManagerService;->access$300(Lcom/samsung/android/mdnie/MdnieManagerService;)Z

    move-result v4

    if-eqz v4, :cond_57

    :goto_53
    # setter for: Lcom/samsung/android/mdnie/MdnieManagerService;->mMdnieWorkingCondition:Z
    invoke-static {v3, v1}, Lcom/samsung/android/mdnie/MdnieManagerService;->access$202(Lcom/samsung/android/mdnie/MdnieManagerService;Z)Z

    goto :goto_e

    :cond_57
    move v1, v2

    goto :goto_53
.end method
