.class Lcom/android/settings/safetycare/SafetyCareSettings$8;
.super Ljava/lang/Object;
.source "SafetyCareSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/safetycare/SafetyCareSettings;->checkEmerContact()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/safetycare/SafetyCareSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/safetycare/SafetyCareSettings;)V
    .locals 0

    .prologue
    .line 645
    iput-object p1, p0, Lcom/android/settings/safetycare/SafetyCareSettings$8;->this$0:Lcom/android/settings/safetycare/SafetyCareSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 648
    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareSettings$8;->this$0:Lcom/android/settings/safetycare/SafetyCareSettings;

    invoke-virtual {v0}, Lcom/android/settings/safetycare/SafetyCareSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/safetycare/SafetyCareSettings;->access$800(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareSettings$8;->this$0:Lcom/android/settings/safetycare/SafetyCareSettings;

    invoke-static {v0}, Lcom/android/settings/safetycare/SafetyCareSettings;->access$900(Lcom/android/settings/safetycare/SafetyCareSettings;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 651
    :cond_0
    return-void
.end method
