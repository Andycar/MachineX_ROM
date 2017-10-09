.class Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
.super Ljava/lang/Object;
.source "NotificationUsageStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationUsageStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AggregatedStats"
.end annotation


# instance fields
.field public final airtimeCount:Lcom/android/server/notification/NotificationUsageStats$Aggregate;

.field public final airtimeExpandedMs:Lcom/android/server/notification/NotificationUsageStats$Aggregate;

.field public final airtimeMs:Lcom/android/server/notification/NotificationUsageStats$Aggregate;

.field public final key:Ljava/lang/String;

.field public numClickedByUser:I

.field public numDismissedByUser:I

.field public numPostedByApp:I

.field public numRemovedByApp:I

.field public numUpdatedByApp:I

.field public final posttimeMs:Lcom/android/server/notification/NotificationUsageStats$Aggregate;

.field public final posttimeToDismissMs:Lcom/android/server/notification/NotificationUsageStats$Aggregate;

.field public final posttimeToFirstAirtimeMs:Lcom/android/server/notification/NotificationUsageStats$Aggregate;

.field public final posttimeToFirstClickMs:Lcom/android/server/notification/NotificationUsageStats$Aggregate;

.field public final posttimeToFirstVisibleExpansionMs:Lcom/android/server/notification/NotificationUsageStats$Aggregate;

.field public final userExpansionCount:Lcom/android/server/notification/NotificationUsageStats$Aggregate;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    new-instance v0, Lcom/android/server/notification/NotificationUsageStats$Aggregate;

    invoke-direct {v0}, Lcom/android/server/notification/NotificationUsageStats$Aggregate;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->posttimeMs:Lcom/android/server/notification/NotificationUsageStats$Aggregate;

    .line 210
    new-instance v0, Lcom/android/server/notification/NotificationUsageStats$Aggregate;

    invoke-direct {v0}, Lcom/android/server/notification/NotificationUsageStats$Aggregate;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->posttimeToDismissMs:Lcom/android/server/notification/NotificationUsageStats$Aggregate;

    .line 211
    new-instance v0, Lcom/android/server/notification/NotificationUsageStats$Aggregate;

    invoke-direct {v0}, Lcom/android/server/notification/NotificationUsageStats$Aggregate;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->posttimeToFirstClickMs:Lcom/android/server/notification/NotificationUsageStats$Aggregate;

    .line 212
    new-instance v0, Lcom/android/server/notification/NotificationUsageStats$Aggregate;

    invoke-direct {v0}, Lcom/android/server/notification/NotificationUsageStats$Aggregate;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->airtimeCount:Lcom/android/server/notification/NotificationUsageStats$Aggregate;

    .line 213
    new-instance v0, Lcom/android/server/notification/NotificationUsageStats$Aggregate;

    invoke-direct {v0}, Lcom/android/server/notification/NotificationUsageStats$Aggregate;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->airtimeMs:Lcom/android/server/notification/NotificationUsageStats$Aggregate;

    .line 214
    new-instance v0, Lcom/android/server/notification/NotificationUsageStats$Aggregate;

    invoke-direct {v0}, Lcom/android/server/notification/NotificationUsageStats$Aggregate;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->posttimeToFirstAirtimeMs:Lcom/android/server/notification/NotificationUsageStats$Aggregate;

    .line 215
    new-instance v0, Lcom/android/server/notification/NotificationUsageStats$Aggregate;

    invoke-direct {v0}, Lcom/android/server/notification/NotificationUsageStats$Aggregate;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->userExpansionCount:Lcom/android/server/notification/NotificationUsageStats$Aggregate;

    .line 216
    new-instance v0, Lcom/android/server/notification/NotificationUsageStats$Aggregate;

    invoke-direct {v0}, Lcom/android/server/notification/NotificationUsageStats$Aggregate;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->airtimeExpandedMs:Lcom/android/server/notification/NotificationUsageStats$Aggregate;

    .line 217
    new-instance v0, Lcom/android/server/notification/NotificationUsageStats$Aggregate;

    invoke-direct {v0}, Lcom/android/server/notification/NotificationUsageStats$Aggregate;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->posttimeToFirstVisibleExpansionMs:Lcom/android/server/notification/NotificationUsageStats$Aggregate;

    .line 220
    iput-object p1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->key:Ljava/lang/String;

    .line 221
    return-void
.end method

.method private toStringWithIndent(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "indent"    # Ljava/lang/String;

    .prologue
    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AggregatedStats{\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  key=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\',\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  numPostedByApp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPostedByApp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  numUpdatedByApp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numUpdatedByApp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  numRemovedByApp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRemovedByApp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  numClickedByUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numClickedByUser:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  numDismissedByUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numDismissedByUser:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  posttimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->posttimeMs:Lcom/android/server/notification/NotificationUsageStats$Aggregate;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  posttimeToDismissMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->posttimeToDismissMs:Lcom/android/server/notification/NotificationUsageStats$Aggregate;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  posttimeToFirstClickMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->posttimeToFirstClickMs:Lcom/android/server/notification/NotificationUsageStats$Aggregate;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  airtimeCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->airtimeCount:Lcom/android/server/notification/NotificationUsageStats$Aggregate;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  airtimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->airtimeMs:Lcom/android/server/notification/NotificationUsageStats$Aggregate;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  posttimeToFirstAirtimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->posttimeToFirstAirtimeMs:Lcom/android/server/notification/NotificationUsageStats$Aggregate;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  userExpansionCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->userExpansionCount:Lcom/android/server/notification/NotificationUsageStats$Aggregate;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  airtimeExpandedMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->airtimeExpandedMs:Lcom/android/server/notification/NotificationUsageStats$Aggregate;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  posttimeToFVEMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->posttimeToFirstVisibleExpansionMs:Lcom/android/server/notification/NotificationUsageStats$Aggregate;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public collect(Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;)V
    .registers 10
    .param p1, "singleNotificationStats"    # Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    .prologue
    const-wide/16 v6, 0x0

    .line 224
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->posttimeMs:Lcom/android/server/notification/NotificationUsageStats$Aggregate;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p1, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeElapsedMs:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$Aggregate;->addSample(J)V

    .line 226
    iget-wide v0, p1, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToDismissMs:J

    cmp-long v0, v0, v6

    if-ltz v0, :cond_1b

    .line 227
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->posttimeToDismissMs:Lcom/android/server/notification/NotificationUsageStats$Aggregate;

    iget-wide v2, p1, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToDismissMs:J

    invoke-virtual {v0, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$Aggregate;->addSample(J)V

    .line 229
    :cond_1b
    iget-wide v0, p1, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToFirstClickMs:J

    cmp-long v0, v0, v6

    if-ltz v0, :cond_28

    .line 230
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->posttimeToFirstClickMs:Lcom/android/server/notification/NotificationUsageStats$Aggregate;

    iget-wide v2, p1, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToFirstClickMs:J

    invoke-virtual {v0, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$Aggregate;->addSample(J)V

    .line 232
    :cond_28
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->airtimeCount:Lcom/android/server/notification/NotificationUsageStats$Aggregate;

    iget-wide v2, p1, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->airtimeCount:J

    invoke-virtual {v0, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$Aggregate;->addSample(J)V

    .line 233
    iget-wide v0, p1, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->airtimeMs:J

    cmp-long v0, v0, v6

    if-ltz v0, :cond_3c

    .line 234
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->airtimeMs:Lcom/android/server/notification/NotificationUsageStats$Aggregate;

    iget-wide v2, p1, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->airtimeMs:J

    invoke-virtual {v0, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$Aggregate;->addSample(J)V

    .line 236
    :cond_3c
    iget-wide v0, p1, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToFirstAirtimeMs:J

    cmp-long v0, v0, v6

    if-ltz v0, :cond_49

    .line 237
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->posttimeToFirstAirtimeMs:Lcom/android/server/notification/NotificationUsageStats$Aggregate;

    iget-wide v2, p1, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToFirstAirtimeMs:J

    invoke-virtual {v0, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$Aggregate;->addSample(J)V

    .line 240
    :cond_49
    iget-wide v0, p1, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToFirstVisibleExpansionMs:J

    cmp-long v0, v0, v6

    if-ltz v0, :cond_56

    .line 241
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->posttimeToFirstVisibleExpansionMs:Lcom/android/server/notification/NotificationUsageStats$Aggregate;

    iget-wide v2, p1, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToFirstVisibleExpansionMs:J

    invoke-virtual {v0, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$Aggregate;->addSample(J)V

    .line 244
    :cond_56
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->userExpansionCount:Lcom/android/server/notification/NotificationUsageStats$Aggregate;

    iget-wide v2, p1, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->userExpansionCount:J

    invoke-virtual {v0, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$Aggregate;->addSample(J)V

    .line 245
    iget-wide v0, p1, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->airtimeExpandedMs:J

    cmp-long v0, v0, v6

    if-ltz v0, :cond_6a

    .line 246
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->airtimeExpandedMs:Lcom/android/server/notification/NotificationUsageStats$Aggregate;

    iget-wide v2, p1, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->airtimeExpandedMs:J

    invoke-virtual {v0, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$Aggregate;->addSample(J)V

    .line 248
    :cond_6a
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "indent"    # Ljava/lang/String;

    .prologue
    .line 251
    invoke-direct {p0, p2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->toStringWithIndent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 252
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 256
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->toStringWithIndent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
