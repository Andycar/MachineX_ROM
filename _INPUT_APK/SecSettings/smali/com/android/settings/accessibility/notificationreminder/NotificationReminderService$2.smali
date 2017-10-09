.class Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService$2;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService$2;->this$0:Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService$2;->this$0:Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;

    invoke-static {v0}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;->access$600(Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;)V

    .line 73
    return-void
.end method
