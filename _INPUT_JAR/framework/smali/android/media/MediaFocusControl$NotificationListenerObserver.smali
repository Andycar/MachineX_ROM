.class Landroid/media/MediaFocusControl$NotificationListenerObserver;
.super Landroid/database/ContentObserver;
.source "MediaFocusControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaFocusControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationListenerObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaFocusControl;


# direct methods
.method constructor <init>(Landroid/media/MediaFocusControl;)V
    .registers 5

    .prologue
    .line 153
    iput-object p1, p0, Landroid/media/MediaFocusControl$NotificationListenerObserver;->this$0:Landroid/media/MediaFocusControl;

    .line 154
    # getter for: Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;
    invoke-static {p1}, Landroid/media/MediaFocusControl;->access$000(Landroid/media/MediaFocusControl;)Landroid/media/MediaFocusControl$MediaEventHandler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 155
    # getter for: Landroid/media/MediaFocusControl;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Landroid/media/MediaFocusControl;->access$100(Landroid/media/MediaFocusControl;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enabled_notification_listeners"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 157
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 161
    # getter for: Landroid/media/MediaFocusControl;->ENABLED_NOTIFICATION_LISTENERS_URI:Landroid/net/Uri;
    invoke-static {}, Landroid/media/MediaFocusControl;->access$200()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    if-eqz p1, :cond_d

    .line 166
    :cond_c
    :goto_c
    return-void

    .line 165
    :cond_d
    iget-object v0, p0, Landroid/media/MediaFocusControl$NotificationListenerObserver;->this$0:Landroid/media/MediaFocusControl;

    # invokes: Landroid/media/MediaFocusControl;->postReevaluateRemoteControlDisplays()V
    invoke-static {v0}, Landroid/media/MediaFocusControl;->access$300(Landroid/media/MediaFocusControl;)V

    goto :goto_c
.end method
