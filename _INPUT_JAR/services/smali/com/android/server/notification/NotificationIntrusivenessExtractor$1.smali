.class Lcom/android/server/notification/NotificationIntrusivenessExtractor$1;
.super Lcom/android/server/notification/RankingReconsideration;
.source "NotificationIntrusivenessExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationIntrusivenessExtractor;->process(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationIntrusivenessExtractor;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationIntrusivenessExtractor;Ljava/lang/String;J)V
    .registers 6
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # J

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/server/notification/NotificationIntrusivenessExtractor$1;->this$0:Lcom/android/server/notification/NotificationIntrusivenessExtractor;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/notification/RankingReconsideration;-><init>(Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public applyChangesLocked(Lcom/android/server/notification/NotificationRecord;)V
    .registers 3
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->setRecentlyIntusive(Z)V

    .line 63
    return-void
.end method

.method public work()V
    .registers 1

    .prologue
    .line 58
    return-void
.end method
