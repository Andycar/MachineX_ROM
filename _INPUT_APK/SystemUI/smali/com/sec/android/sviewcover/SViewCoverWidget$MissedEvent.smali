.class public Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;
.super Landroid/widget/LinearLayout;
.source "SViewCoverWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/sviewcover/SViewCoverWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MissedEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent$NotiMode;
    }
.end annotation


# static fields
.field private static final MISSED_EVENT_ARRIVED:Ljava/lang/String; = "com.android.server.NotificationManagerService.NotificationArrived"

.field private static final MISSED_EVENT_REMOVED:Ljava/lang/String; = "com.android.server.NotificationManagerService.NotificationRemoved"

.field public static final SVIEWCOVER_FEATURE_LEVEL:Ljava/lang/String; = "com.sec.feature.cover.sviewcover"


# instance fields
.field private final EMAIL_PKG:Ljava/lang/String;

.field private final MISSED_EVENT_UPDATE:I

.field private final REQ_INDEX_CALL_EMAIL:I

.field private final REQ_INDEX_MSG:I

.field private VZW_MSG_APP:Ljava/lang/String;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mMissedCallCount:I

.field private mMissedCallTextView:Landroid/widget/TextView;

.field private mMissedEventDivider:Landroid/widget/ImageView;

.field private mMissedMsgCount:I

.field private mMissedMsgTextView:Landroid/widget/TextView;

.field private mSviewCoverView:Lcom/sec/android/sviewcover/SViewCoverView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 1179
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mSviewCoverView:Lcom/sec/android/sviewcover/SViewCoverView;

    .line 1134
    const-string v0, "com.verizon.messaging.vzmsgs"

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->VZW_MSG_APP:Ljava/lang/String;

    .line 1136
    const-string v0, "com.android.email"

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->EMAIL_PKG:Ljava/lang/String;

    .line 1145
    const/16 v0, 0x12c2

    iput v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->MISSED_EVENT_UPDATE:I

    .line 1147
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->REQ_INDEX_CALL_EMAIL:I

    .line 1149
    const/16 v0, 0x7b

    iput v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->REQ_INDEX_MSG:I

    .line 1151
    iput v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallCount:I

    .line 1153
    iput v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgCount:I

    .line 1167
    new-instance v0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent$1;

    invoke-direct {v0, p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent$1;-><init>(Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;)V

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mHandler:Landroid/os/Handler;

    .line 1181
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mContext:Landroid/content/Context;

    .line 1182
    new-instance v0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent$2;

    invoke-direct {v0, p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent$2;-><init>(Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;)V

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1198
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MissedEvent ()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    return-void
.end method

.method static synthetic access$1300(Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;

    .prologue
    .line 1124
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->handleMissedEventUpdate()V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;

    .prologue
    .line 1124
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getNumMissedEvent(Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent$NotiMode;)I
    .locals 3
    .param p1, "mode"    # Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent$NotiMode;

    .prologue
    const/4 v0, 0x0

    .line 1307
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mSviewCoverView:Lcom/sec/android/sviewcover/SViewCoverView;

    if-nez v1, :cond_1

    .line 1325
    :cond_0
    :goto_0
    return v0

    .line 1309
    :cond_1
    sget-object v1, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent$NotiMode;->MissedCall:Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent$NotiMode;

    if-ne p1, v1, :cond_2

    .line 1310
    const-string v0, "CoverUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNumMissedEvent - call : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mSviewCoverView:Lcom/sec/android/sviewcover/SViewCoverView;

    invoke-virtual {v2}, Lcom/sec/android/sviewcover/SViewCoverView;->getNotiListenerMissedCallCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mSviewCoverView:Lcom/sec/android/sviewcover/SViewCoverView;

    invoke-virtual {v0}, Lcom/sec/android/sviewcover/SViewCoverView;->getNotiListenerMissedCallCount()I

    move-result v0

    goto :goto_0

    .line 1314
    :cond_2
    sget-object v1, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent$NotiMode;->MissedMsg:Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent$NotiMode;

    if-ne p1, v1, :cond_0

    .line 1315
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->isVzwMsgAppDefault()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1316
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "isVzwMsgAppDefault() true, VZW Message+ is default Msg app!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->getUnreadMessageCounts()I

    move-result v0

    goto :goto_0

    .line 1319
    :cond_3
    const-string v0, "CoverUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNumMissedEvent - message : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mSviewCoverView:Lcom/sec/android/sviewcover/SViewCoverView;

    invoke-virtual {v2}, Lcom/sec/android/sviewcover/SViewCoverView;->getNotiListenerUnreadMsgCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mSviewCoverView:Lcom/sec/android/sviewcover/SViewCoverView;

    invoke-virtual {v0}, Lcom/sec/android/sviewcover/SViewCoverView;->getNotiListenerUnreadMsgCount()I

    move-result v0

    goto :goto_0
.end method

.method private getUnreadMessageCounts()I
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1333
    const/4 v6, 0x0

    .line 1334
    .local v6, "cursor":Landroid/database/Cursor;
    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v4, "simple"

    const-string v5, "true"

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 1336
    .local v1, "allThreadsUri":Landroid/net/Uri;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "sum(unread_count)"

    aput-object v0, v2, v8

    .line 1339
    .local v2, "UNREAD_SUM_PROJECTION":[Ljava/lang/String;
    const-string v3, "unread_count > 0"

    .line 1342
    .local v3, "UNREAD_COUNT_SELECTION":Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 1348
    if-nez v6, :cond_2

    .line 1356
    if-eqz v6, :cond_0

    .line 1357
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    move v0, v8

    .line 1359
    :cond_1
    :goto_0
    return v0

    .line 1350
    :cond_2
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1351
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 1356
    if-eqz v6, :cond_1

    .line 1357
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1356
    :cond_3
    if-eqz v6, :cond_4

    .line 1357
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_1
    move v0, v8

    .line 1359
    goto :goto_0

    .line 1353
    :catch_0
    move-exception v7

    .line 1354
    .local v7, "ex":Landroid/database/sqlite/SQLiteException;
    :try_start_2
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1356
    if-eqz v6, :cond_4

    .line 1357
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1356
    .end local v7    # "ex":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 1357
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method private handleMissedEventUpdate()V
    .locals 0

    .prologue
    .line 1227
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->updateMissedEvent()V

    .line 1228
    return-void
.end method

.method private isRTL()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1298
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v0

    .line 1299
    .local v0, "value":B
    if-eq v0, v2, :cond_0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    :cond_0
    move v1, v2

    .line 1303
    :cond_1
    return v1
.end method


# virtual methods
.method public getCallMsgTTSMessage()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1374
    const-string v0, ""

    .line 1375
    .local v0, "TTSMessage":Ljava/lang/String;
    iget v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallCount:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgCount:I

    if-lez v1, :cond_0

    .line 1376
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mContext:Landroid/content/Context;

    sget v2, Lcom/sec/android/sviewcover/R$string;->clearcover_calls_and_messages:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    iget v4, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1378
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mContext:Landroid/content/Context;

    sget v3, Lcom/sec/android/sviewcover/R$string;->clearcover_n_missed_calls:I

    new-array v4, v6, [Ljava/lang/Object;

    iget v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1380
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mContext:Landroid/content/Context;

    sget v3, Lcom/sec/android/sviewcover/R$string;->clearcover_n_unread_messages:I

    new-array v4, v6, [Ljava/lang/Object;

    iget v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1399
    :goto_0
    return-void

    .line 1382
    :cond_0
    iget v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallCount:I

    if-le v1, v6, :cond_1

    .line 1383
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mContext:Landroid/content/Context;

    sget v2, Lcom/sec/android/sviewcover/R$string;->clearcover_n_missed_calls:I

    new-array v3, v6, [Ljava/lang/Object;

    iget v4, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1385
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1386
    :cond_1
    iget v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgCount:I

    if-le v1, v6, :cond_2

    .line 1387
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mContext:Landroid/content/Context;

    sget v2, Lcom/sec/android/sviewcover/R$string;->clearcover_n_unread_messages:I

    new-array v3, v6, [Ljava/lang/Object;

    iget v4, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1389
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1390
    :cond_2
    iget v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallCount:I

    if-ne v1, v6, :cond_3

    .line 1391
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mContext:Landroid/content/Context;

    sget v2, Lcom/sec/android/sviewcover/R$string;->clearcover_1_missed_call:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1392
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1393
    :cond_3
    iget v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgCount:I

    if-ne v1, v6, :cond_4

    .line 1394
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mContext:Landroid/content/Context;

    sget v2, Lcom/sec/android/sviewcover/R$string;->clearcover_1_unread_message:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1395
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1397
    :cond_4
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mContext:Landroid/content/Context;

    sget v2, Lcom/sec/android/sviewcover/R$string;->clearcover_no_missed_event:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMissedCallCount()I
    .locals 1

    .prologue
    .line 1406
    sget-object v0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent$NotiMode;->MissedCall:Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent$NotiMode;

    invoke-direct {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->getNumMissedEvent(Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent$NotiMode;)I

    move-result v0

    return v0
.end method

.method public getMissedEventCount()I
    .locals 2

    .prologue
    .line 1402
    sget-object v0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent$NotiMode;->MissedCall:Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent$NotiMode;

    invoke-direct {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->getNumMissedEvent(Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent$NotiMode;)I

    move-result v0

    sget-object v1, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent$NotiMode;->MissedMsg:Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent$NotiMode;

    invoke-direct {p0, v1}, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->getNumMissedEvent(Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent$NotiMode;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getUnreadMessageCount()I
    .locals 1

    .prologue
    .line 1410
    sget-object v0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent$NotiMode;->MissedMsg:Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent$NotiMode;

    invoke-direct {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->getNumMissedEvent(Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent$NotiMode;)I

    move-result v0

    return v0
.end method

.method public isVzwMsgAppDefault()Z
    .locals 1

    .prologue
    .line 1363
    const/4 v0, 0x0

    .line 1370
    .local v0, "isVzwMsgApp":Z
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 1211
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 1212
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->updateMissedEvent()V

    .line 1214
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1215
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.android.server.NotificationManagerService.NotificationArrived"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1216
    const-string v1, "com.android.server.NotificationManagerService.NotificationRemoved"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1217
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1218
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 1222
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 1224
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 1203
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 1204
    sget v0, Lcom/sec/android/sviewcover/R$id;->missed_event_call_cnt:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallTextView:Landroid/widget/TextView;

    .line 1205
    sget v0, Lcom/sec/android/sviewcover/R$id;->missed_event_msg_cnt:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgTextView:Landroid/widget/TextView;

    .line 1206
    sget v0, Lcom/sec/android/sviewcover/R$id;->missed_event_call_divider:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedEventDivider:Landroid/widget/ImageView;

    .line 1207
    return-void
.end method

.method public setSviewCoverView(Lcom/sec/android/sviewcover/SViewCoverView;)V
    .locals 0
    .param p1, "sViewCoverView"    # Lcom/sec/android/sviewcover/SViewCoverView;

    .prologue
    .line 1329
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mSviewCoverView:Lcom/sec/android/sviewcover/SViewCoverView;

    .line 1330
    return-void
.end method

.method public updateMissedEvent()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/16 v9, 0x8

    const/16 v6, 0x3e7

    const/4 v8, 0x0

    .line 1231
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$600()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 1296
    :cond_0
    :goto_0
    return-void

    .line 1234
    :cond_1
    const/4 v2, 0x0

    .line 1235
    .local v2, "nCallCount":I
    const/4 v3, 0x0

    .line 1236
    .local v3, "nMsgCount":I
    const/4 v0, 0x0

    .line 1237
    .local v0, "bUpdatedCallCount":Z
    const/4 v1, 0x0

    .line 1239
    .local v1, "bUpdatedMsgCount":Z
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgTextView:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallTextView:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 1242
    sget-object v4, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent$NotiMode;->MissedCall:Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent$NotiMode;

    invoke-direct {p0, v4}, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->getNumMissedEvent(Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent$NotiMode;)I

    move-result v2

    .line 1243
    if-le v2, v6, :cond_5

    .line 1244
    iput v6, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallCount:I

    .line 1248
    :goto_1
    sget-object v4, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent$NotiMode;->MissedMsg:Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent$NotiMode;

    invoke-direct {p0, v4}, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->getNumMissedEvent(Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent$NotiMode;)I

    move-result v3

    .line 1249
    if-le v3, v6, :cond_6

    .line 1250
    iput v6, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgCount:I

    .line 1254
    :goto_2
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$100()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1255
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateMissedEvent(missed Call Count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", bUpdatedCallCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    :cond_2
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$100()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1259
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateMissedEvent(Unread Msg Count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", bUpdatedMsgCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    :cond_3
    iget v4, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallCount:I

    if-nez v4, :cond_7

    .line 1263
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1274
    :goto_3
    iget v4, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgCount:I

    if-nez v4, :cond_9

    .line 1275
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1286
    :goto_4
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedEventDivider:Landroid/widget/ImageView;

    if-eqz v4, :cond_4

    .line 1287
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_b

    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_b

    .line 1289
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedEventDivider:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1294
    :cond_4
    :goto_5
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->getCallMsgTTSMessage()V

    goto/16 :goto_0

    .line 1246
    :cond_5
    iput v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallCount:I

    goto/16 :goto_1

    .line 1252
    :cond_6
    iput v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgCount:I

    goto/16 :goto_2

    .line 1265
    :cond_7
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1266
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->isRTL()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1267
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallTextView:Landroid/widget/TextView;

    const-string v5, "%d"

    new-array v6, v10, [Ljava/lang/Object;

    iget v7, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1270
    :cond_8
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallTextView:Landroid/widget/TextView;

    iget v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedCallCount:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1277
    :cond_9
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1278
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->isRTL()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1279
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgTextView:Landroid/widget/TextView;

    const-string v5, "%d"

    new-array v6, v10, [Ljava/lang/Object;

    iget v7, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 1282
    :cond_a
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgTextView:Landroid/widget/TextView;

    iget v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedMsgCount:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 1291
    :cond_b
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->mMissedEventDivider:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5
.end method
