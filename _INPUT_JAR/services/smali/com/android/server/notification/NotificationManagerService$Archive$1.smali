.class Lcom/android/server/notification/NotificationManagerService$Archive$1;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationManagerService$Archive;->filter(Ljava/util/Iterator;Ljava/lang/String;I)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Landroid/service/notification/StatusBarNotification;",
        ">;"
    }
.end annotation


# instance fields
.field mNext:Landroid/service/notification/StatusBarNotification;

.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService$Archive;

.field final synthetic val$iter:Ljava/util/Iterator;

.field final synthetic val$pkg:Ljava/lang/String;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService$Archive;Ljava/util/Iterator;Ljava/lang/String;I)V
    .registers 6

    .prologue
    .line 372
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$Archive$1;->this$0:Lcom/android/server/notification/NotificationManagerService$Archive;

    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$Archive$1;->val$iter:Ljava/util/Iterator;

    iput-object p3, p0, Lcom/android/server/notification/NotificationManagerService$Archive$1;->val$pkg:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/notification/NotificationManagerService$Archive$1;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService$Archive$1;->findNext()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService$Archive$1;->mNext:Landroid/service/notification/StatusBarNotification;

    return-void
.end method

.method private findNext()Landroid/service/notification/StatusBarNotification;
    .registers 4

    .prologue
    .line 376
    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$Archive$1;->val$iter:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 377
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$Archive$1;->val$iter:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/StatusBarNotification;

    .line 378
    .local v0, "nr":Landroid/service/notification/StatusBarNotification;
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$Archive$1;->val$pkg:Ljava/lang/String;

    if-eqz v1, :cond_1c

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$Archive$1;->val$pkg:Ljava/lang/String;

    if-ne v1, v2, :cond_0

    :cond_1c
    iget v1, p0, Lcom/android/server/notification/NotificationManagerService$Archive$1;->val$userId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_29

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v1

    iget v2, p0, Lcom/android/server/notification/NotificationManagerService$Archive$1;->val$userId:I

    if-ne v1, v2, :cond_0

    .line 383
    .end local v0    # "nr":Landroid/service/notification/StatusBarNotification;
    :cond_29
    :goto_29
    return-object v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_29
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .prologue
    .line 388
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$Archive$1;->mNext:Landroid/service/notification/StatusBarNotification;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public next()Landroid/service/notification/StatusBarNotification;
    .registers 3

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$Archive$1;->mNext:Landroid/service/notification/StatusBarNotification;

    .line 394
    .local v0, "next":Landroid/service/notification/StatusBarNotification;
    if-nez v0, :cond_a

    .line 395
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 397
    :cond_a
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService$Archive$1;->findNext()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/notification/NotificationManagerService$Archive$1;->mNext:Landroid/service/notification/StatusBarNotification;

    .line 398
    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$Archive$1;->next()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    .prologue
    .line 403
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$Archive$1;->val$iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 404
    return-void
.end method
