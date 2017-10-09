.class Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService$1;
.super Landroid/content/BroadcastReceiver;
.source "NotificationReminderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService$1;->this$0:Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService$1;->this$0:Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;

    iget-object v1, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService$1;->this$0:Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;

    invoke-static {v1}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;->access$100(Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;->access$002(Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;[Landroid/service/notification/StatusBarNotification;)[Landroid/service/notification/StatusBarNotification;

    .line 56
    iget-object v0, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService$1;->this$0:Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;

    invoke-static {v0}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;->access$000(Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService$1;->this$0:Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;

    invoke-static {v0}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;->access$000(Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService$1;->this$0:Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;

    iget-object v1, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService$1;->this$0:Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;

    invoke-static {v1}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;->access$000(Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;->access$200(Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;[Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService$1;->this$0:Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;

    iget-object v1, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService$1;->this$0:Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;

    invoke-static {v1}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;->access$000(Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;->access$300(Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;[Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService$1;->this$0:Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;->access$400(Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;Z)V

    .line 61
    iget-object v0, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService$1;->this$0:Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;

    invoke-static {v0}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;->access$500(Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;)V

    .line 62
    const-string v0, "NotificationReminderService"

    const-string v1, "Alram!"

    invoke-static {v0, v1}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService$1;->this$0:Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;->access$400(Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;Z)V

    goto :goto_0
.end method
