.class Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;
.super Landroid/widget/BaseAdapter;
.source "SViewCoverMissedEvents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/sviewcover/SViewCoverMissedEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MissedEventsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;
    }
.end annotation


# instance fields
.field private mCallbacks:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsCallbacks;

.field private mCurrentUserContext:Landroid/content/Context;

.field private mIcons:[I

.field private mIsPreview:Z

.field private mIsPreviewArray:[Z

.field private mMissedEventComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mMissedEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;


# direct methods
.method public constructor <init>(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 407
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    .line 408
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 380
    new-array v0, v4, [I

    sget v1, Lcom/sec/android/sviewcover/R$drawable;->noti_list_ic_message:I

    aput v1, v0, v3

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/sviewcover/R$drawable;->noti_list_ic_missed_call:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mIcons:[I

    .line 385
    iput-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mCallbacks:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsCallbacks;

    .line 387
    new-instance v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$1;

    invoke-direct {v0, p0}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$1;-><init>(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;)V

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mMissedEventComparator:Ljava/util/Comparator;

    .line 396
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mMissedEvents:Ljava/util/ArrayList;

    .line 398
    iput-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mCurrentUserContext:Landroid/content/Context;

    .line 402
    iput-boolean v3, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mIsPreview:Z

    .line 403
    new-array v0, v4, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mIsPreviewArray:[Z

    .line 415
    new-instance v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$2;-><init>(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mUpdateHandler:Landroid/os/Handler;

    .line 409
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p1, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mIntentFilter:Landroid/content/IntentFilter;

    .line 410
    iget-object v0, p1, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 411
    iget-object v0, p1, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 412
    iget-object v0, p1, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 413
    return-void

    .line 403
    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method static synthetic access$100(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    .prologue
    .line 362
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mUpdateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 362
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mMissedEvents:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;Ljava/util/ArrayList;I)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # I

    .prologue
    .line 362
    invoke-direct {p0, p1, p2}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->getMissedEventCount(Ljava/util/ArrayList;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;)Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsCallbacks;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    .prologue
    .line 362
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mCallbacks:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsCallbacks;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    .prologue
    .line 362
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->getCurrentUserContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 362
    invoke-direct {p0, p1}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->getContactPhotoUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 362
    invoke-direct {p0, p1}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->getContactId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 362
    invoke-direct {p0, p1, p2}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->getContactNameByIds(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    .prologue
    .line 362
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mIsPreviewArray:[Z

    return-object v0
.end method

.method static synthetic access$3000(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;Landroid/content/Context;JLcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;)I
    .locals 2
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # J
    .param p4, "x3"    # Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;

    .prologue
    .line 362
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->getLastestMessageInfoForMultisim(Landroid/content/Context;JLcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 362
    invoke-direct {p0, p1, p2}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->getContactPhotoUriByIds(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3200(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;Landroid/content/Context;)J
    .locals 2
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 362
    invoke-direct {p0, p1}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->getLastNewMessageDate(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$3300(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;Landroid/content/Context;I)J
    .locals 2
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # I

    .prologue
    .line 362
    invoke-direct {p0, p1, p2}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->getLastNewMessageDate(Landroid/content/Context;I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$3400(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;Landroid/content/Context;JLcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;)Z
    .locals 2
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # J
    .param p4, "x3"    # Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;

    .prologue
    .line 362
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->getLastestMessageInfo(Landroid/content/Context;JLcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;)Ljava/util/Comparator;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;

    .prologue
    .line 362
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mMissedEventComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;
    .param p1, "x1"    # Z

    .prologue
    .line 362
    iput-boolean p1, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mIsPreview:Z

    return p1
.end method

.method static synthetic access$602(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 362
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mCurrentUserContext:Landroid/content/Context;

    return-object p1
.end method

.method private findBestMatch(Landroid/database/Cursor;Ljava/lang/String;)Z
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1997
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2007
    :goto_0
    return v0

    .line 2002
    :cond_0
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 2003
    goto :goto_0

    .line 2005
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0
.end method

.method private formatDate(J)Ljava/lang/String;
    .locals 5
    .param p1, "milis"    # J

    .prologue
    .line 1606
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1607
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1609
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->getCurrentUserContext()Landroid/content/Context;

    move-result-object v1

    .line 1611
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 1614
    .local v2, "time":Ljava/lang/String;
    return-object v2
.end method

.method private getAddressString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "phone_original"    # Ljava/lang/String;

    .prologue
    .line 1782
    const-string v0, ""

    .line 1783
    .local v0, "recipient":Ljava/lang/String;
    const-string v1, "CBmessages"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1784
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-virtual {v1}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sec/android/sviewcover/R$string;->cb_msg_header:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1802
    :cond_0
    :goto_0
    return-object v0

    .line 1785
    :cond_1
    const-string v1, "Pushmessage"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1786
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-virtual {v1}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sec/android/sviewcover/R$string;->push_message_sender:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1788
    :cond_2
    const-string v1, "#CMAS#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "#Emergency Alert#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1790
    :cond_3
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-virtual {v1}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->getCmasServiceCategoryStringId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1793
    :cond_4
    invoke-virtual {p0, p1}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->isEmailAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1794
    invoke-direct {p0, p1}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->getContactInfoForEmailAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1798
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1799
    move-object v0, p1

    goto :goto_0

    .line 1796
    :cond_5
    invoke-direct {p0, p1}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->getContactInfoForPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private getContactId(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/16 v13, 0x3b

    const/4 v5, 0x4

    const/4 v2, 0x0

    .line 641
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 643
    const/4 v6, 0x0

    .line 648
    .local v6, "contactId":Ljava/lang/String;
    invoke-virtual {p1, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_0

    .line 649
    invoke-virtual {p1, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 654
    :cond_0
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 655
    .local v11, "normalizedNumber":Ljava/lang/String;
    invoke-static {v11}, Landroid/telephony/PhoneNumberUtils;->toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 657
    .local v10, "minMatch":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 658
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 663
    .local v12, "numberLen":Ljava/lang/String;
    const-string v3, " Data._ID IN  (SELECT DISTINCT lookup.data_id  FROM      (SELECT data_id, normalized_number, length(normalized_number) as len      FROM phone_lookup      WHERE min_match = ?) AS lookup  WHERE  (lookup.len <= ? AND substr(?, ? - lookup.len + 1) = lookup.normalized_number) OR (PHONE_NUMBERS_EQUAL(lookup.normalized_number, ?) ) )"

    .line 664
    .local v3, "selection":Ljava/lang/String;
    const/4 v1, 0x5

    new-array v4, v1, [Ljava/lang/String;

    aput-object v10, v4, v2

    const/4 v1, 0x1

    aput-object v12, v4, v1

    const/4 v1, 0x2

    aput-object v11, v4, v1

    const/4 v1, 0x3

    aput-object v12, v4, v1

    aput-object v11, v4, v5

    .line 668
    .local v4, "args":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 669
    .local v8, "cursor":Landroid/database/Cursor;
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-static {v1}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$1100(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$800()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 673
    .local v0, "resolver":Landroid/content/ContentProviderClient;
    if-eqz v0, :cond_1

    .line 674
    :try_start_0
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$800()Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$1000()[Ljava/lang/String;

    move-result-object v2

    const-string v5, "is_sim"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 681
    :cond_1
    :goto_0
    if-nez v8, :cond_3

    .line 682
    if-eqz v0, :cond_2

    .line 683
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    :cond_2
    move-object v7, v6

    .line 698
    .end local v0    # "resolver":Landroid/content/ContentProviderClient;
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "args":[Ljava/lang/String;
    .end local v6    # "contactId":Ljava/lang/String;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v12    # "numberLen":Ljava/lang/String;
    .local v7, "contactId":Ljava/lang/String;
    :goto_1
    return-object v7

    .line 677
    .end local v7    # "contactId":Ljava/lang/String;
    .restart local v0    # "resolver":Landroid/content/ContentProviderClient;
    .restart local v3    # "selection":Ljava/lang/String;
    .restart local v4    # "args":[Ljava/lang/String;
    .restart local v6    # "contactId":Ljava/lang/String;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v12    # "numberLen":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 678
    .local v9, "e":Landroid/os/RemoteException;
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 688
    .end local v9    # "e":Landroid/os/RemoteException;
    :cond_3
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 689
    const/4 v1, 0x4

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    .line 691
    :cond_4
    if-eqz v8, :cond_5

    .line 692
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 694
    :cond_5
    if-eqz v0, :cond_6

    .line 695
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .end local v0    # "resolver":Landroid/content/ContentProviderClient;
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "args":[Ljava/lang/String;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v12    # "numberLen":Ljava/lang/String;
    :cond_6
    move-object v7, v6

    .line 698
    .end local v6    # "contactId":Ljava/lang/String;
    .restart local v7    # "contactId":Ljava/lang/String;
    goto :goto_1

    .line 691
    .end local v7    # "contactId":Ljava/lang/String;
    .restart local v0    # "resolver":Landroid/content/ContentProviderClient;
    .restart local v3    # "selection":Ljava/lang/String;
    .restart local v4    # "args":[Ljava/lang/String;
    .restart local v6    # "contactId":Ljava/lang/String;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v12    # "numberLen":Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_7

    .line 692
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 694
    :cond_7
    if-eqz v0, :cond_8

    .line 695
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    :cond_8
    throw v1
.end method

.method private getContactInfoForEmailAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 1968
    const-string v0, "SViewCoverMissedEvents"

    const-string v1, "getContactInfoForEmailAddress"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1970
    const/4 v8, 0x0

    .line 1972
    .local v8, "mEmailName":Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-static {v0}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$5100(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-static {v1}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$5200(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$5300()Landroid/net/Uri;

    move-result-object v2

    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$5400()[Ljava/lang/String;

    move-result-object v3

    const-string v4, "UPPER(data1)=UPPER(?) AND mimetype=\'vnd.android.cursor.item/email_v2\'"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    aput-object p1, v5, v6

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1978
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_3

    .line 1980
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1981
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1982
    .local v9, "name":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1983
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1985
    :cond_1
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 1986
    move-object v8, v9

    goto :goto_0

    .line 1990
    .end local v9    # "name":Ljava/lang/String;
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1993
    :cond_3
    return-object v8

    .line 1990
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getContactInfoForPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/16 v13, 0x3b

    const/4 v5, 0x3

    const/4 v2, 0x0

    .line 1906
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1908
    const/4 v8, 0x0

    .line 1913
    .local v8, "mName":Ljava/lang/String;
    invoke-virtual {p1, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_0

    .line 1914
    invoke-virtual {p1, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1919
    :cond_0
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1920
    .local v11, "normalizedNumber":Ljava/lang/String;
    invoke-static {v11}, Landroid/telephony/PhoneNumberUtils;->toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1922
    .local v10, "minMatch":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1923
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 1928
    .local v12, "numberLen":Ljava/lang/String;
    const-string v3, " Data._ID IN  (SELECT DISTINCT lookup.data_id  FROM      (SELECT data_id, normalized_number, length(normalized_number) as len      FROM phone_lookup      WHERE min_match = ?) AS lookup  WHERE  (lookup.len <= ? AND substr(?, ? - lookup.len + 1) = lookup.normalized_number) OR (PHONE_NUMBERS_EQUAL(lookup.normalized_number, ?) ) )"

    .line 1929
    .local v3, "selection":Ljava/lang/String;
    const/4 v1, 0x5

    new-array v4, v1, [Ljava/lang/String;

    aput-object v10, v4, v2

    const/4 v1, 0x1

    aput-object v12, v4, v1

    const/4 v1, 0x2

    aput-object v11, v4, v1

    aput-object v12, v4, v5

    const/4 v1, 0x4

    aput-object v11, v4, v1

    .line 1933
    .local v4, "args":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 1934
    .local v6, "cursor":Landroid/database/Cursor;
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-static {v1}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$5000(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$800()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 1938
    .local v0, "resolver":Landroid/content/ContentProviderClient;
    if-eqz v0, :cond_1

    .line 1939
    :try_start_0
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$800()Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$1000()[Ljava/lang/String;

    move-result-object v2

    const-string v5, "is_sim"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 1946
    :cond_1
    :goto_0
    if-nez v6, :cond_3

    .line 1947
    if-eqz v0, :cond_2

    .line 1948
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    :cond_2
    move-object v9, v8

    .line 1964
    .end local v0    # "resolver":Landroid/content/ContentProviderClient;
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "args":[Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v8    # "mName":Ljava/lang/String;
    .end local v12    # "numberLen":Ljava/lang/String;
    .local v9, "mName":Ljava/lang/String;
    :goto_1
    return-object v9

    .line 1942
    .end local v9    # "mName":Ljava/lang/String;
    .restart local v0    # "resolver":Landroid/content/ContentProviderClient;
    .restart local v3    # "selection":Ljava/lang/String;
    .restart local v4    # "args":[Ljava/lang/String;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "mName":Ljava/lang/String;
    .restart local v12    # "numberLen":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 1943
    .local v7, "e":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1953
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_3
    :try_start_1
    invoke-direct {p0, v6, p1}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->findBestMatch(Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1954
    const/4 v1, 0x3

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->getEmptyIfNull(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    .line 1957
    :cond_4
    if-eqz v6, :cond_5

    .line 1958
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1960
    :cond_5
    if-eqz v0, :cond_6

    .line 1961
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .end local v0    # "resolver":Landroid/content/ContentProviderClient;
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "args":[Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v12    # "numberLen":Ljava/lang/String;
    :cond_6
    move-object v9, v8

    .line 1964
    .end local v8    # "mName":Ljava/lang/String;
    .restart local v9    # "mName":Ljava/lang/String;
    goto :goto_1

    .line 1957
    .end local v9    # "mName":Ljava/lang/String;
    .restart local v0    # "resolver":Landroid/content/ContentProviderClient;
    .restart local v3    # "selection":Ljava/lang/String;
    .restart local v4    # "args":[Ljava/lang/String;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "mName":Ljava/lang/String;
    .restart local v12    # "numberLen":Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_7

    .line 1958
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1960
    :cond_7
    if-eqz v0, :cond_8

    .line 1961
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    :cond_8
    throw v1
.end method

.method private getContactNameById(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 495
    const/4 v8, 0x0

    .line 496
    .local v8, "name":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 497
    .local v3, "where":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "address"

    aput-object v1, v2, v0

    .line 500
    .local v2, "proj":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 501
    .local v6, "c":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 503
    .local v9, "phone_original":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://mms-sms/canonical-addresses"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 506
    if-nez v6, :cond_1

    .line 519
    if-eqz v6, :cond_0

    .line 520
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v0, v10

    .line 529
    :goto_0
    return-object v0

    .line 509
    :cond_1
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 510
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 519
    if-eqz v6, :cond_2

    .line 520
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v10

    goto :goto_0

    .line 514
    :cond_3
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 515
    const-string v0, "address"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v9

    .line 519
    if-eqz v6, :cond_4

    .line 520
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 523
    :cond_4
    :goto_1
    if-nez v9, :cond_6

    move-object v0, v10

    .line 524
    goto :goto_0

    .line 516
    :catch_0
    move-exception v7

    .line 517
    .local v7, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v0, "SViewCoverMissedEvents"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getContactNameById error :"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 519
    if-eqz v6, :cond_4

    .line 520
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 519
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 520
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 527
    :cond_6
    invoke-direct {p0, v9}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->getAddressString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v0, v8

    .line 529
    goto :goto_0
.end method

.method private getContactNameByIds(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ids"    # Ljava/lang/String;

    .prologue
    .line 486
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 487
    .local v1, "b":Ljava/lang/StringBuilder;
    const-string v5, " "

    invoke-virtual {p2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 488
    .local v4, "s":Ljava/lang/String;
    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    invoke-direct {p0, p1, v4}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->getContactNameById(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 491
    .end local v4    # "s":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private getContactPhotoUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x3b

    const/4 v2, 0x0

    .line 580
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 582
    const/4 v11, 0x0

    .line 587
    .local v11, "photoUri":Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_0

    .line 588
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 593
    :cond_0
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 594
    .local v9, "normalizedNumber":Ljava/lang/String;
    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 596
    .local v8, "minMatch":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 597
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 602
    .local v10, "numberLen":Ljava/lang/String;
    const-string v3, " Data._ID IN  (SELECT DISTINCT lookup.data_id  FROM      (SELECT data_id, normalized_number, length(normalized_number) as len      FROM phone_lookup      WHERE min_match = ?) AS lookup  WHERE  (lookup.len <= ? AND substr(?, ? - lookup.len + 1) = lookup.normalized_number) OR (PHONE_NUMBERS_EQUAL(lookup.normalized_number, ?) ) )"

    .line 603
    .local v3, "selection":Ljava/lang/String;
    const/4 v1, 0x5

    new-array v4, v1, [Ljava/lang/String;

    aput-object v8, v4, v2

    const/4 v1, 0x1

    aput-object v10, v4, v1

    const/4 v1, 0x2

    aput-object v9, v4, v1

    const/4 v1, 0x3

    aput-object v10, v4, v1

    const/4 v1, 0x4

    aput-object v9, v4, v1

    .line 607
    .local v4, "args":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 608
    .local v6, "cursor":Landroid/database/Cursor;
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-static {v1}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$900(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$800()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 612
    .local v0, "resolver":Landroid/content/ContentProviderClient;
    if-eqz v0, :cond_1

    .line 613
    :try_start_0
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$800()Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$1000()[Ljava/lang/String;

    move-result-object v2

    const-string v5, "is_sim"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 620
    :cond_1
    :goto_0
    if-nez v6, :cond_3

    .line 621
    if-eqz v0, :cond_2

    .line 622
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    :cond_2
    move-object v12, v11

    .line 637
    .end local v0    # "resolver":Landroid/content/ContentProviderClient;
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "args":[Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v10    # "numberLen":Ljava/lang/String;
    .end local v11    # "photoUri":Ljava/lang/String;
    .local v12, "photoUri":Ljava/lang/String;
    :goto_1
    return-object v12

    .line 616
    .end local v12    # "photoUri":Ljava/lang/String;
    .restart local v0    # "resolver":Landroid/content/ContentProviderClient;
    .restart local v3    # "selection":Ljava/lang/String;
    .restart local v4    # "args":[Ljava/lang/String;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "numberLen":Ljava/lang/String;
    .restart local v11    # "photoUri":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 617
    .local v7, "e":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 627
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_3
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 628
    const/16 v1, 0xa

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v11

    .line 630
    :cond_4
    if-eqz v6, :cond_5

    .line 631
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 633
    :cond_5
    if-eqz v0, :cond_6

    .line 634
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .end local v0    # "resolver":Landroid/content/ContentProviderClient;
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "args":[Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v10    # "numberLen":Ljava/lang/String;
    :cond_6
    move-object v12, v11

    .line 637
    .end local v11    # "photoUri":Ljava/lang/String;
    .restart local v12    # "photoUri":Ljava/lang/String;
    goto :goto_1

    .line 630
    .end local v12    # "photoUri":Ljava/lang/String;
    .restart local v0    # "resolver":Landroid/content/ContentProviderClient;
    .restart local v3    # "selection":Ljava/lang/String;
    .restart local v4    # "args":[Ljava/lang/String;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "numberLen":Ljava/lang/String;
    .restart local v11    # "photoUri":Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_7

    .line 631
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 633
    :cond_7
    if-eqz v0, :cond_8

    .line 634
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    :cond_8
    throw v1
.end method

.method private getContactPhotoUriById(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 542
    const/4 v9, 0x0

    .line 543
    .local v9, "photoUri":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 544
    .local v3, "where":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "address"

    aput-object v1, v2, v0

    .line 547
    .local v2, "proj":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 548
    .local v6, "c":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 550
    .local v8, "phone_original":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://mms-sms/canonical-addresses"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 553
    if-nez v6, :cond_1

    .line 566
    if-eqz v6, :cond_0

    .line 567
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v0, v10

    .line 576
    :goto_0
    return-object v0

    .line 556
    :cond_1
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 557
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 566
    if-eqz v6, :cond_2

    .line 567
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v10

    goto :goto_0

    .line 561
    :cond_3
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 562
    const-string v0, "address"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v8

    .line 566
    if-eqz v6, :cond_4

    .line 567
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 570
    :cond_4
    :goto_1
    if-nez v8, :cond_6

    move-object v0, v10

    .line 571
    goto :goto_0

    .line 563
    :catch_0
    move-exception v7

    .line 564
    .local v7, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v0, "SViewCoverMissedEvents"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getContactNameById error :"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 566
    if-eqz v6, :cond_4

    .line 567
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 566
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 567
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 574
    :cond_6
    invoke-direct {p0, v8}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->getContactPhotoUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v0, v9

    .line 576
    goto :goto_0
.end method

.method private getContactPhotoUriByIds(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ids"    # Ljava/lang/String;

    .prologue
    .line 533
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 534
    .local v1, "b":Ljava/lang/StringBuilder;
    const-string v5, " "

    invoke-virtual {p2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 535
    .local v4, "s":Ljava/lang/String;
    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    invoke-direct {p0, p1, v4}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->getContactPhotoUriById(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 538
    .end local v4    # "s":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private getCurrentUserContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1618
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mCurrentUserContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mCurrentUserContext:Landroid/content/Context;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-static {v0}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$4900(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Landroid/content/Context;

    move-result-object v0

    goto :goto_0
.end method

.method private getDefaultImage(J)I
    .locals 5
    .param p1, "contactId"    # J

    .prologue
    .line 702
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-static {v0}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$1200(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)[I

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-static {v1}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$1200(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)[I

    move-result-object v1

    array-length v1, v1

    int-to-long v2, v1

    rem-long v2, p1, v2

    long-to-int v1, v2

    aget v0, v0, v1

    return v0
.end method

.method private getLastNewMessageDate(Landroid/content/Context;)J
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1734
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "transport_type"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "normalized_date"

    aput-object v3, v2, v0

    .line 1738
    .local v2, "projection":[Ljava/lang/String;
    sget-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "complete-conversations"

    invoke-static {v0, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1739
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "read=0"

    const/4 v4, 0x0

    const-string v5, "normalized_date DESC LIMIT 1"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1742
    .local v6, "c":Landroid/database/Cursor;
    const-wide/16 v8, 0x0

    .line 1743
    .local v8, "date":J
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1744
    const-string v0, "transport_type"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1746
    .local v7, "transportType":Ljava/lang/String;
    const-string v0, "normalized_date"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 1749
    .end local v7    # "transportType":Ljava/lang/String;
    :cond_0
    if-eqz v6, :cond_1

    .line 1750
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1751
    const/4 v6, 0x0

    .line 1754
    :cond_1
    return-wide v8
.end method

.method private getLastNewMessageDate(Landroid/content/Context;I)J
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "simSlot"    # I

    .prologue
    .line 1758
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "transport_type"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "normalized_date"

    aput-object v3, v2, v0

    .line 1762
    .local v2, "projection":[Ljava/lang/String;
    sget-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "complete-conversations"

    invoke-static {v0, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1765
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "read=0"

    const/4 v4, 0x0

    const-string v5, "normalized_date DESC LIMIT 1"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1768
    .local v6, "c":Landroid/database/Cursor;
    const-wide/16 v8, 0x0

    .line 1769
    .local v8, "date":J
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1770
    const-string v0, "normalized_date"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 1773
    :cond_0
    if-eqz v6, :cond_1

    .line 1774
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1775
    const/4 v6, 0x0

    .line 1778
    :cond_1
    return-wide v8
.end method

.method private getLastestMessageInfo(Landroid/content/Context;JLcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;)Z
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "threadId"    # J
    .param p4, "e"    # Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;

    .prologue
    .line 1628
    const-string v2, "SViewCoverMissedEvents"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getLastestMessageInfo threadId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    const/16 v2, 0x8

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "transport_type"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "body"

    aput-object v5, v4, v2

    const/4 v2, 0x2

    const-string v5, "date"

    aput-object v5, v4, v2

    const/4 v2, 0x3

    const-string v5, "sub"

    aput-object v5, v4, v2

    const/4 v2, 0x4

    const-string v5, "sub_cs"

    aput-object v5, v4, v2

    const/4 v2, 0x5

    const-string v5, "date"

    aput-object v5, v4, v2

    const/4 v2, 0x6

    const-string v5, "text"

    aput-object v5, v4, v2

    const/4 v2, 0x7

    const-string v5, "file_name"

    aput-object v5, v4, v2

    .line 1635
    .local v4, "projection":[Ljava/lang/String;
    const-string v2, "content://mms-sms/unread-messages/first-text"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v5, "integrated"

    const-string v6, "true"

    invoke-virtual {v2, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 1638
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "thread_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND read=0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "normalized_date DESC LIMIT 1"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1642
    .local v9, "c":Landroid/database/Cursor;
    if-nez v9, :cond_0

    .line 1643
    const-string v2, "SViewCoverMissedEvents"

    const-string v5, "cursor is null"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    const/4 v2, 0x0

    .line 1690
    :goto_0
    return v2

    .line 1647
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 1648
    const-string v2, "SViewCoverMissedEvents"

    const-string v5, "cursor count is 0. return false"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1649
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1650
    const/4 v9, 0x0

    .line 1651
    const/4 v2, 0x0

    goto :goto_0

    .line 1654
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1655
    const-string v2, "transport_type"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1657
    .local v12, "transportType":Ljava/lang/String;
    const-string v2, "mms"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1659
    const-string v2, "sub_cs"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 1660
    .local v10, "sub_cs":I
    const-string v2, "sub"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1661
    .local v11, "subject":Ljava/lang/String;
    if-eqz v10, :cond_2

    .line 1662
    if-eqz v11, :cond_2

    .line 1663
    new-instance v13, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-static {v11}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v13, v10, v2}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    .line 1665
    .local v13, "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-virtual {v13}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v11

    .line 1668
    .end local v13    # "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_2
    const-string v2, "text"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1670
    .local v8, "body":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1671
    if-nez v8, :cond_3

    .line 1672
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "> "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p4

    iput-object v2, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->content:Ljava/lang/String;

    .line 1680
    :goto_1
    const-string v2, "date"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-wide/16 v14, 0x3e8

    mul-long/2addr v6, v14

    move-object/from16 v0, p4

    iput-wide v6, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->time:J

    .line 1689
    .end local v8    # "body":Ljava/lang/String;
    .end local v10    # "sub_cs":I
    .end local v11    # "subject":Ljava/lang/String;
    :goto_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1690
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1674
    .restart local v8    # "body":Ljava/lang/String;
    .restart local v10    # "sub_cs":I
    .restart local v11    # "subject":Ljava/lang/String;
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "> "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p4

    iput-object v2, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->content:Ljava/lang/String;

    goto :goto_1

    .line 1677
    :cond_4
    move-object/from16 v0, p4

    iput-object v8, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->content:Ljava/lang/String;

    goto :goto_1

    .line 1681
    .end local v8    # "body":Ljava/lang/String;
    .end local v10    # "sub_cs":I
    .end local v11    # "subject":Ljava/lang/String;
    :cond_5
    const-string v2, "ft"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1682
    const-string v2, "file_name"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p4

    iput-object v2, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->content:Ljava/lang/String;

    .line 1683
    const-string v2, "date"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    move-object/from16 v0, p4

    iput-wide v6, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->time:J

    goto :goto_2

    .line 1685
    :cond_6
    const-string v2, "body"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p4

    iput-object v2, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->content:Ljava/lang/String;

    .line 1686
    const-string v2, "date"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    move-object/from16 v0, p4

    iput-wide v6, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->time:J

    goto :goto_2
.end method

.method private getLastestMessageInfoForMultisim(Landroid/content/Context;JLcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "threadId"    # J
    .param p4, "e"    # Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;

    .prologue
    .line 1696
    const-string v1, "SViewCoverMissedEvents"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLastestMessageInfoForMultisim threadId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1697
    const/4 v0, -0x1

    .line 1730
    .local v0, "slotId":I
    return v0
.end method

.method private getMissedEventCount(Ljava/util/ArrayList;I)I
    .locals 4
    .param p2, "typeEvent"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 1378
    .local p1, "missedEventTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;>;"
    const/4 v0, 0x0

    .line 1380
    .local v0, "count":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;

    .line 1381
    .local v1, "event":Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;
    iget v3, v1, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->type:I

    if-ne v3, p2, :cond_0

    .line 1382
    iget v3, v1, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->unreadCount:I

    add-int/2addr v0, v3

    goto :goto_0

    .line 1386
    .end local v1    # "event":Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;
    :cond_1
    return v0
.end method


# virtual methods
.method public buildObserver()V
    .locals 4

    .prologue
    .line 429
    const-string v0, "SViewCoverMissedEvents"

    const-string v1, "buildObserver()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    new-instance v1, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$3;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, p0, v2}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$3;-><init>(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;Landroid/os/Handler;)V

    iput-object v1, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mMissedEventObserver:Landroid/database/ContentObserver;

    .line 444
    return-void
.end method

.method public buildReceiver()V
    .locals 2

    .prologue
    .line 447
    const-string v0, "SViewCoverMissedEvents"

    const-string v1, "buildReceiver()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    new-instance v1, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$4;

    invoke-direct {v1, p0}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$4;-><init>(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;)V

    iput-object v1, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 483
    return-void
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "numberOrEmail"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 2011
    invoke-static {p1, p2}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2012
    const/4 v0, 0x1

    .line 2014
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCMASProvider()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 1852
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    .line 1853
    .local v1, "cscFeature":Lcom/sec/android/app/CscFeature;
    const-string v2, "CscFeature_Message_CMASOperator"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1855
    .local v0, "CMASprovider":Ljava/lang/String;
    const-string v2, "us-vzw"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1856
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    const/4 v3, 0x3

    iput v3, v2, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mCmasProvider:I

    .line 1884
    :goto_0
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    iget v2, v2, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mCmasProvider:I

    return v2

    .line 1857
    :cond_0
    const-string v2, "us-usc"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1858
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    const/4 v3, 0x5

    iput v3, v2, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mCmasProvider:I

    goto :goto_0

    .line 1859
    :cond_1
    const-string v2, "us-spr"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1860
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    const/4 v3, 0x4

    iput v3, v2, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mCmasProvider:I

    goto :goto_0

    .line 1861
    :cond_2
    const-string v2, "us-att-lte"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1862
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    iput v3, v2, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mCmasProvider:I

    goto :goto_0

    .line 1863
    :cond_3
    const-string v2, "us-att-3g"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1864
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    iput v3, v2, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mCmasProvider:I

    goto :goto_0

    .line 1865
    :cond_4
    const-string v2, "us-att"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1866
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    iput v3, v2, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mCmasProvider:I

    goto :goto_0

    .line 1867
    :cond_5
    const-string v2, "us-tmo"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1868
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    const/4 v3, 0x1

    iput v3, v2, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mCmasProvider:I

    goto :goto_0

    .line 1869
    :cond_6
    const-string v2, "la-cho"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1870
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    const/4 v3, 0x6

    iput v3, v2, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mCmasProvider:I

    goto :goto_0

    .line 1871
    :cond_7
    const-string v2, "la-tfg"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1872
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    const/4 v3, 0x7

    iput v3, v2, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mCmasProvider:I

    goto :goto_0

    .line 1873
    :cond_8
    const-string v2, "skt"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1874
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    const/16 v3, 0x8

    iput v3, v2, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mCmasProvider:I

    goto :goto_0

    .line 1875
    :cond_9
    const-string v2, "kt"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1876
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    const/16 v3, 0x9

    iput v3, v2, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mCmasProvider:I

    goto/16 :goto_0

    .line 1877
    :cond_a
    const-string v2, "lgu"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1878
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    const/16 v3, 0xa

    iput v3, v2, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mCmasProvider:I

    goto/16 :goto_0

    .line 1879
    :cond_b
    const-string v2, "kor_open"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1880
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    const/16 v3, 0xb

    iput v3, v2, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mCmasProvider:I

    goto/16 :goto_0

    .line 1882
    :cond_c
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    const/4 v3, 0x0

    iput v3, v2, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mCmasProvider:I

    goto/16 :goto_0
.end method

.method public getCmasServiceCategoryStringId(Ljava/lang/String;)I
    .locals 6
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x7

    const/4 v4, 0x6

    .line 1806
    const-string v1, "Debug"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCmasServiceCategory() address is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1808
    const/4 v0, 0x0

    .line 1809
    .local v0, "type":I
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->getCMASProvider()I

    move-result v1

    if-eq v1, v4, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->getCMASProvider()I

    move-result v1

    if-ne v1, v5, :cond_1

    .line 1811
    :cond_0
    sget v0, Lcom/sec/android/sviewcover/R$string;->sae_presidential_alert:I

    .line 1813
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->getCMASProvider()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_9

    .line 1814
    const-string v1, "Presidential"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1815
    sget v0, Lcom/sec/android/sviewcover/R$string;->cmas_presidential_alert:I

    .line 1846
    :cond_2
    :goto_0
    const-string v1, "SViewCoverMissedEvents"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCmasServiceCategory() type is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1848
    return v0

    .line 1816
    :cond_3
    const-string v1, "Extreme"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1817
    sget v0, Lcom/sec/android/sviewcover/R$string;->cmas_extreme_alert:I

    goto :goto_0

    .line 1818
    :cond_4
    const-string v1, "Severe"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1819
    sget v0, Lcom/sec/android/sviewcover/R$string;->cmas_severe_alert:I

    goto :goto_0

    .line 1820
    :cond_5
    const-string v1, "Amber"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1821
    sget v0, Lcom/sec/android/sviewcover/R$string;->cmas_amber_alert:I

    goto :goto_0

    .line 1822
    :cond_6
    const-string v1, "CMASALL"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "#Emergency Alert#Alerts"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1823
    :cond_7
    sget v0, Lcom/sec/android/sviewcover/R$string;->cmas_emergency_alerts:I

    goto :goto_0

    .line 1824
    :cond_8
    const-string v1, "Test"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1825
    sget v0, Lcom/sec/android/sviewcover/R$string;->cmas_cmas_test_message:I

    goto :goto_0

    .line 1828
    :cond_9
    const-string v1, "Presidential"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1829
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->getCMASProvider()I

    move-result v1

    if-eq v1, v4, :cond_a

    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->getCMASProvider()I

    move-result v1

    if-ne v1, v5, :cond_b

    .line 1831
    :cond_a
    sget v0, Lcom/sec/android/sviewcover/R$string;->sae_presidential_alert:I

    goto :goto_0

    .line 1833
    :cond_b
    sget v0, Lcom/sec/android/sviewcover/R$string;->cmas_presidential_alerts:I

    goto :goto_0

    .line 1834
    :cond_c
    const-string v1, "Extreme"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1835
    sget v0, Lcom/sec/android/sviewcover/R$string;->cmas_extreme_alerts:I

    goto :goto_0

    .line 1836
    :cond_d
    const-string v1, "Severe"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1837
    sget v0, Lcom/sec/android/sviewcover/R$string;->cmas_severe_alerts:I

    goto/16 :goto_0

    .line 1838
    :cond_e
    const-string v1, "Amber"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1839
    sget v0, Lcom/sec/android/sviewcover/R$string;->cmas_amber_alerts:I

    goto/16 :goto_0

    .line 1840
    :cond_f
    const-string v1, "CMASALL"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string v1, "#Emergency Alert#Alerts"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1841
    :cond_10
    sget v0, Lcom/sec/android/sviewcover/R$string;->cmas_emergency_alerts:I

    goto/16 :goto_0

    .line 1842
    :cond_11
    const-string v1, "Test"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1843
    sget v0, Lcom/sec/android/sviewcover/R$string;->cmas_cmas_test_message:I

    goto/16 :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1391
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mMissedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getEmptyIfNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 2018
    if-nez p1, :cond_0

    const-string p1, ""

    .end local p1    # "s":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1396
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mMissedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1401
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPreviewMesagePreference(Landroid/content/Context;)Z
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 706
    const/4 v6, 0x0

    .line 708
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$1300()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "BOOLEAN"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v11, "pref_key_enable_statusbar_preview_message"

    aput-object v11, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 714
    const/4 v8, 0x0

    .line 715
    .local v8, "result":I
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 716
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 719
    :cond_0
    if-ne v8, v9, :cond_2

    .line 725
    if-eqz v6, :cond_1

    .line 726
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 727
    const/4 v6, 0x0

    :cond_1
    move v0, v9

    .line 730
    .end local v8    # "result":I
    :goto_0
    return v0

    .line 725
    .restart local v8    # "result":I
    :cond_2
    if-eqz v6, :cond_3

    .line 726
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 727
    const/4 v6, 0x0

    .end local v8    # "result":I
    :cond_3
    :goto_1
    move v0, v10

    .line 730
    goto :goto_0

    .line 722
    :catch_0
    move-exception v7

    .line 723
    .local v7, "e":Landroid/database/SQLException;
    :try_start_1
    const-string v0, "SViewCoverMissedEvents"

    const-string v1, "SQLException at getPreviewMesagePreference()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 725
    if-eqz v6, :cond_3

    .line 726
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 727
    const/4 v6, 0x0

    goto :goto_1

    .line 725
    .end local v7    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 726
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 727
    const/4 v6, 0x0

    :cond_4
    throw v0
.end method

.method public getPreviewMessagePreferenceForMultisim(Landroid/content/Context;)[Z
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v11, 0x1

    .line 734
    const/4 v6, 0x0

    .line 735
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x2

    new-array v8, v0, [Z

    fill-array-data v8, :array_0

    .line 739
    .local v8, "isPreview":[Z
    invoke-virtual {p0, p1}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->getPreviewMesagePreference(Landroid/content/Context;)Z

    move-result v0

    aput-boolean v0, v8, v1

    .line 741
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$1300()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "BOOLEAN"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v10, "pref_key_enable_statusbar_preview_message_sim2"

    aput-object v10, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 747
    const/4 v9, 0x0

    .line 748
    .local v9, "result":I
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 749
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 752
    :cond_0
    if-ne v9, v11, :cond_1

    .line 753
    const/4 v0, 0x1

    const/4 v1, 0x1

    aput-boolean v1, v8, v0
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 758
    :cond_1
    if-eqz v6, :cond_2

    .line 759
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 760
    const/4 v6, 0x0

    .line 764
    .end local v9    # "result":I
    :cond_2
    :goto_0
    return-object v8

    .line 755
    :catch_0
    move-exception v7

    .line 756
    .local v7, "e":Landroid/database/SQLException;
    :try_start_1
    const-string v0, "SViewCoverMissedEvents"

    const-string v1, "SQLException at getPreviewMesagePreference2()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 758
    if-eqz v6, :cond_2

    .line 759
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 760
    const/4 v6, 0x0

    goto :goto_0

    .line 758
    .end local v7    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 759
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 760
    const/4 v6, 0x0

    :cond_3
    throw v0

    .line 735
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 21
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1482
    if-nez p2, :cond_0

    .line 1483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$4400(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Landroid/content/Context;

    move-result-object v18

    const-string v19, "layout_inflater"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/LayoutInflater;

    .line 1485
    .local v11, "l":Landroid/view/LayoutInflater;
    sget v18, Lcom/sec/android/sviewcover/R$layout;->s_view_cover_missed_event:I

    const/16 v19, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p3

    move/from16 v2, v19

    invoke-virtual {v11, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1488
    .end local v11    # "l":Landroid/view/LayoutInflater;
    :cond_0
    sget v18, Lcom/sec/android/sviewcover/R$id;->s_view_cover_missed_icon:I

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 1491
    .local v10, "icon":Landroid/widget/ImageView;
    sget v18, Lcom/sec/android/sviewcover/R$id;->s_view_cover_photo_id:I

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    .line 1493
    .local v15, "photoIdImg":Landroid/widget/ImageView;
    sget v18, Lcom/sec/android/sviewcover/R$id;->s_view_cover_missed_name:I

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 1495
    .local v12, "name":Landroid/widget/TextView;
    sget v18, Lcom/sec/android/sviewcover/R$id;->s_view_cover_missed_time:I

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 1497
    .local v17, "time":Landroid/widget/TextView;
    sget v18, Lcom/sec/android/sviewcover/R$id;->s_view_cover_missed_content:I

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 1499
    .local v6, "content":Landroid/widget/TextView;
    sget v18, Lcom/sec/android/sviewcover/R$id;->s_view_cover_missed_count:I

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 1502
    .local v7, "count":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mMissedEvents:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;

    .line 1504
    .local v8, "currentEvent":Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$2500(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)I

    move-result v18

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 1507
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v13, v0, [Z

    fill-array-data v13, :array_0

    .line 1510
    .local v13, "pPreviewValue":[Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->isMultiSIMDevice()Z

    move-result v18

    if-eqz v18, :cond_1

    iget v0, v8, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->type:I

    move/from16 v18, v0

    if-nez v18, :cond_1

    .line 1511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$4500(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->getPreviewMessagePreferenceForMultisim(Landroid/content/Context;)[Z

    move-result-object v13

    .line 1514
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$1600(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Landroid/app/KeyguardManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v18

    if-eqz v18, :cond_6

    .line 1515
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1516
    const/16 v18, 0x4

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1517
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1566
    :cond_2
    :goto_0
    invoke-virtual {v15}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v16

    .line 1567
    .local v16, "photoIdImgDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v16, :cond_3

    .line 1568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    move-object/from16 v18, v0

    check-cast v16, Landroid/graphics/drawable/BitmapDrawable;

    .end local v16    # "photoIdImgDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$4800(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1572
    .end local v13    # "pPreviewValue":[Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mIcons:[I

    move-object/from16 v18, v0

    iget v0, v8, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->type:I

    move/from16 v19, v0

    aget v18, v18, v19

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1573
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverProperties;->isPreviousLook()Z

    move-result v18

    if-eqz v18, :cond_4

    .line 1574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mIcons:[I

    move-object/from16 v18, v0

    iget v0, v8, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->type:I

    move/from16 v19, v0

    aget v18, v18, v19

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1576
    :cond_4
    iget-object v0, v8, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1578
    iget-wide v0, v8, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->time:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->formatDate(J)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1579
    iget v0, v8, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->unreadCount:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1580
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1581
    iget v0, v8, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->type:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_f

    .line 1582
    iget-object v0, v8, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->number:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    sget v20, Lcom/sec/android/sviewcover/R$string;->unknown:I

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_5

    iget-object v0, v8, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->number:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    sget v20, Lcom/sec/android/sviewcover/R$string;->private_num:I

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_5

    iget-object v0, v8, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->number:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    sget v20, Lcom/sec/android/sviewcover/R$string;->payphone:I

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 1586
    :cond_5
    const-string v18, "MISSED"

    const-string v19, "content\'s gone"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1587
    iget-object v0, v8, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->number:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1588
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1602
    :goto_1
    return-object p2

    .line 1519
    .restart local v13    # "pPreviewValue":[Z
    :cond_6
    iget v0, v8, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->type:I

    move/from16 v18, v0

    if-nez v18, :cond_b

    .line 1520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->isMultiSIMDevice()Z

    move-result v18

    if-nez v18, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$4600(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->getPreviewMesagePreference(Landroid/content/Context;)Z

    move-result v18

    if-nez v18, :cond_8

    .line 1521
    const/16 v18, 0x4

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1522
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1535
    :goto_2
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1536
    const/4 v14, 0x0

    .line 1537
    .local v14, "photoId":Landroid/net/Uri;
    const/4 v5, 0x0

    .line 1539
    .local v5, "bmPhoto":Landroid/graphics/Bitmap;
    iget-object v0, v8, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->photoUri:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_7

    .line 1540
    iget-object v0, v8, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->photoUri:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 1544
    :cond_7
    if-eqz v14, :cond_c

    .line 1545
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$4700(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v0, v14}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 1556
    :goto_3
    if-eqz v5, :cond_2

    .line 1557
    invoke-virtual {v15, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1558
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    sget-object v20, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v18 .. v20}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1560
    .local v4, "bmBackground":Landroid/graphics/Bitmap;
    iget-wide v0, v8, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->id:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->getDefaultImage(J)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 1561
    new-instance v18, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v4}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$4800(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 1523
    .end local v4    # "bmBackground":Landroid/graphics/Bitmap;
    .end local v5    # "bmPhoto":Landroid/graphics/Bitmap;
    .end local v14    # "photoId":Landroid/net/Uri;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->isMultiSIMDevice()Z

    move-result v18

    if-eqz v18, :cond_a

    iget v0, v8, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->slotId:I

    move/from16 v18, v0

    if-ltz v18, :cond_9

    iget v0, v8, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->slotId:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_9

    iget v0, v8, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->slotId:I

    move/from16 v18, v0

    aget-boolean v18, v13, v18

    if-nez v18, :cond_a

    .line 1524
    :cond_9
    const/16 v18, 0x4

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1525
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 1527
    :cond_a
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1528
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 1531
    :cond_b
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1532
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 1547
    .restart local v5    # "bmPhoto":Landroid/graphics/Bitmap;
    .restart local v14    # "photoId":Landroid/net/Uri;
    :cond_c
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    sget v19, Lcom/sec/android/sviewcover/R$drawable;->contacts_default_caller_id_list:I

    invoke-static/range {v18 .. v19}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    goto/16 :goto_3

    .line 1550
    :catch_0
    move-exception v9

    .line 1551
    .local v9, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v9}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto/16 :goto_3

    .line 1552
    .end local v9    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v9

    .line 1553
    .local v9, "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 1591
    .end local v5    # "bmPhoto":Landroid/graphics/Bitmap;
    .end local v9    # "e":Ljava/io/IOException;
    .end local v13    # "pPreviewValue":[Z
    .end local v14    # "photoId":Landroid/net/Uri;
    :cond_d
    iget-object v0, v8, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    iget-object v0, v8, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->number:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->isKoreaFeature()Z

    move-result v18

    if-nez v18, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$1600(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Landroid/app/KeyguardManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v18

    if-nez v18, :cond_e

    .line 1593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    sget v19, Lcom/sec/android/sviewcover/R$string;->unsaved:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1595
    :cond_e
    iget-object v0, v8, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->number:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1600
    :cond_f
    iget-object v0, v8, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->content:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1507
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method public isEmailAddress(Ljava/lang/String;)Z
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 2022
    if-eqz p1, :cond_0

    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2025
    const/4 v0, 0x0

    .line 2027
    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1889
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v0

    .line 1891
    .local v0, "enable":I
    const/4 v3, 0x2

    if-eq v3, v0, :cond_0

    const/4 v3, 0x3

    if-ne v3, v0, :cond_1

    .line 1893
    :cond_0
    const-string v3, "SViewCoverMissedEvents"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is diabled"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1901
    .end local v0    # "enable":I
    :goto_0
    return v2

    .line 1896
    .restart local v0    # "enable":I
    :cond_1
    const-string v3, "SViewCoverMissedEvents"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is enabled"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1897
    const/4 v2, 0x1

    goto :goto_0

    .line 1899
    .end local v0    # "enable":I
    :catch_0
    move-exception v1

    .line 1900
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    const-string v3, "SViewCoverMissedEvents"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not installed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isKoreaFeature()Z
    .locals 2

    .prologue
    .line 2031
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2032
    .local v0, "SalesCode":Ljava/lang/String;
    const-string v1, "SKT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SKC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SKO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "KTT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "KTC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "KTO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "LGT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "LUC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "LUO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ANY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "KOO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2038
    :cond_0
    const/4 v1, 0x1

    .line 2040
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onItemClick(I)V
    .locals 10
    .param p1, "position"    # I

    .prologue
    const-wide/16 v8, 0xbb8

    const v7, 0x10008000

    const/4 v6, 0x1

    .line 1405
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mMissedEvents:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;

    .line 1406
    .local v0, "currentEvent":Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;
    if-eqz v0, :cond_0

    .line 1407
    const-string v3, "SViewCoverMissedEvents"

    const-string v4, "onClicked"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1409
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-static {v3}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$1600(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Landroid/app/KeyguardManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-static {v3}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$1600(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Landroid/app/KeyguardManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1411
    const-string v3, "SViewCoverMissedEvents"

    const-string v4, "onClicked - isKeyguardSecure"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-static {v3}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$1500(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Lcom/sec/android/sviewcover/SViewCoverView;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1413
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-static {v3}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$1500(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Lcom/sec/android/sviewcover/SViewCoverView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/sviewcover/SViewCoverView;->setMissedEventSecurePopup(I)V

    .line 1414
    new-instance v3, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$6;

    invoke-direct {v3, p0}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$6;-><init>(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;)V

    sput-object v3, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mSecurePopupRunnable:Ljava/lang/Runnable;

    .line 1421
    sget-object v3, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mSecurePopupHandler:Landroid/os/Handler;

    sget-object v4, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mSecurePopupRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1477
    :cond_0
    :goto_0
    return-void

    .line 1424
    :cond_1
    iget v3, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->type:I

    if-ne v3, v6, :cond_3

    .line 1425
    const-string v3, "SViewCoverMissedEvents"

    const-string v4, "Missed call view was clicked"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    const-string v3, "MISSED"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onClicked, missed call id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->callId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.android.app.dialertab.calllog.MISSED_CALL"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1430
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1432
    const-string v3, "EXTRA_CALL_LOG_IDS"

    iget-object v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->callId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1433
    const-string v3, "EXTRA_CALL_LOG_CONTACT"

    iget-object v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1434
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-static {v3}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$3600(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1435
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-static {v3}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$3700(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Landroid/widget/TextView;

    move-result-object v3

    sget v4, Lcom/sec/android/sviewcover/R$string;->clearcover_open_to_view_call:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1438
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-static {v3}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$3800(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1443
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3
    :goto_1
    iget v3, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->type:I

    if-nez v3, :cond_5

    .line 1444
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-static {v3}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$3900(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.android.mms"

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1445
    const-string v3, "SViewCoverMissedEvents"

    const-string v4, "Missed message view was clicked"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.mms.cover.MissedMsgActivity"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1448
    .restart local v2    # "intent":Landroid/content/Intent;
    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1450
    const-string v3, "thread_id"

    iget-wide v4, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->id:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1451
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-static {v3}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$3600(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1452
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-static {v3}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$3700(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Landroid/widget/TextView;

    move-result-object v3

    sget v4, Lcom/sec/android/sviewcover/R$string;->clearcover_open_to_view_message:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1455
    :cond_4
    :try_start_1
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-static {v3}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$4000(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1464
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_5
    :goto_2
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-static {v3}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$3600(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->type:I

    if-eq v3, v6, :cond_6

    iget v3, v0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$MissedEvent;->type:I

    if-nez v3, :cond_0

    .line 1466
    :cond_6
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-static {v3}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$4100(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Landroid/app/Dialog;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-static {v4}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$3700(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1467
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-static {v3}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$4100(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 1468
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    new-instance v4, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$7;

    invoke-direct {v4, p0}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$7;-><init>(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;)V

    invoke-static {v3, v4}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$4202(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 1473
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-static {v3}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$4300(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-static {v4}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$4200(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 1439
    .restart local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 1440
    .local v1, "exception":Landroid/content/ActivityNotFoundException;
    const-string v3, "SViewCoverMissedEvents"

    const-string v4, "ActivityNotFoundException !!"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1456
    .end local v1    # "exception":Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v1

    .line 1457
    .restart local v1    # "exception":Landroid/content/ActivityNotFoundException;
    const-string v3, "SViewCoverMissedEvents"

    const-string v4, "ActivityNotFoundException !!"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1460
    .end local v1    # "exception":Landroid/content/ActivityNotFoundException;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_7
    const-string v3, "SViewCoverMissedEvents"

    const-string v4, "Message apk does not exist in this target"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public setCallbacks(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsCallbacks;)V
    .locals 0
    .param p1, "c"    # Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsCallbacks;

    .prologue
    .line 1622
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mCallbacks:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsCallbacks;

    .line 1623
    return-void
.end method

.method public updateMissedEvents()V
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 768
    const-string v8, "SViewCoverMissedEvents"

    const-string v9, "updateMissedEvents()"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    const/4 v1, 0x0

    .line 772
    .local v1, "isCoverOpened":Z
    :try_start_0
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverView;->isCoverOpen()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 777
    :goto_0
    iget-object v8, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-static {v8}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$1400(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "device_provisioned"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_1

    move v4, v6

    .line 783
    .local v4, "isProvisioned":Z
    :goto_1
    if-nez v1, :cond_0

    if-nez v4, :cond_2

    .line 784
    :cond_0
    const-string v6, "SViewCoverMissedEvents"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isCoverOpened="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isProvisioned="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    :goto_2
    return-void

    .line 773
    .end local v4    # "isProvisioned":Z
    :catch_0
    move-exception v0

    .line 774
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    move v4, v7

    .line 777
    goto :goto_1

    .line 788
    .restart local v4    # "isProvisioned":Z
    :cond_2
    iget-object v8, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-static {v8}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$1500(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Lcom/sec/android/sviewcover/SViewCoverView;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 789
    iget-object v8, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-static {v8}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$1500(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Lcom/sec/android/sviewcover/SViewCoverView;

    move-result-object v8

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lcom/sec/android/sviewcover/SViewCoverView;->setMissedEventSecurePopup(I)V

    .line 792
    :cond_3
    iget-object v8, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-static {v8}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$1600(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Landroid/app/KeyguardManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v3

    .line 793
    .local v3, "isCurrentSecurity":Z
    iget-object v8, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    iget-boolean v8, v8, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mIsPreviousSecurity:Z

    if-eq v8, v3, :cond_4

    .line 794
    iget-object v8, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    iput-boolean v7, v8, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mUpdated:Z

    .line 795
    iget-object v8, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    iput-boolean v3, v8, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mIsPreviousSecurity:Z

    .line 798
    :cond_4
    iget-object v8, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-virtual {v8}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->isMultiSIMDevice()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 799
    iget-object v8, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-static {v8}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$1700(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->getPreviewMessagePreferenceForMultisim(Landroid/content/Context;)[Z

    move-result-object v5

    .line 800
    .local v5, "pPreviewValue":[Z
    aget-boolean v8, v5, v7

    iget-object v9, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mIsPreviewArray:[Z

    aget-boolean v9, v9, v7

    if-ne v8, v9, :cond_5

    aget-boolean v8, v5, v6

    iget-object v9, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mIsPreviewArray:[Z

    aget-boolean v9, v9, v6

    if-eq v8, v9, :cond_6

    .line 802
    :cond_5
    iget-object v8, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    iput-boolean v7, v8, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mUpdated:Z

    .line 803
    iget-object v8, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mIsPreviewArray:[Z

    aget-boolean v9, v5, v7

    aput-boolean v9, v8, v7

    .line 804
    iget-object v8, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mIsPreviewArray:[Z

    aget-boolean v9, v5, v6

    aput-boolean v9, v8, v6

    .line 815
    .end local v5    # "pPreviewValue":[Z
    :cond_6
    :goto_3
    iget-object v8, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    iget-boolean v8, v8, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mUpdated:Z

    if-eqz v8, :cond_8

    .line 816
    const-string v6, "SViewCoverMissedEvents"

    const-string v7, "already updated"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 808
    :cond_7
    iget-object v8, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-static {v8}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->access$1800(Lcom/sec/android/sviewcover/SViewCoverMissedEvents;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->getPreviewMesagePreference(Landroid/content/Context;)Z

    move-result v2

    .line 809
    .local v2, "isCurrentPreview":Z
    iget-boolean v8, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mIsPreview:Z

    if-eq v2, v8, :cond_6

    .line 810
    iget-object v8, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    iput-boolean v7, v8, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mUpdated:Z

    .line 811
    iput-boolean v2, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->mIsPreview:Z

    goto :goto_3

    .line 819
    .end local v2    # "isCurrentPreview":Z
    :cond_8
    const-string v8, "SViewCoverMissedEvents"

    const-string v9, "not yet updated"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    iget-object v8, p0, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;->this$0:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    iput-boolean v6, v8, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mUpdated:Z

    .line 822
    new-instance v8, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$5;

    invoke-direct {v8, p0}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$5;-><init>(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter;)V

    new-array v6, v6, [Ljava/lang/String;

    const-string v9, ""

    aput-object v9, v6, v7

    invoke-virtual {v8, v6}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsAdapter$5;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_2
.end method
