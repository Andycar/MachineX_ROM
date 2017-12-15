.class public Landroid/app/Notification;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Notification$BuilderRemoteViews;,
        Landroid/app/Notification$WearableExtender;,
        Landroid/app/Notification$Extender;,
        Landroid/app/Notification$MediaStyle;,
        Landroid/app/Notification$InboxStyle;,
        Landroid/app/Notification$BigTextStyle;,
        Landroid/app/Notification$BigPictureStyle;,
        Landroid/app/Notification$Style;,
        Landroid/app/Notification$Builder;,
        Landroid/app/Notification$Action;
    }
.end annotation


# static fields
.field public static final AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

.field public static final CATEGORY_ALARM:Ljava/lang/String; = "alarm"

.field public static final CATEGORY_CALL:Ljava/lang/String; = "call"

.field public static final CATEGORY_EMAIL:Ljava/lang/String; = "email"

.field public static final CATEGORY_ERROR:Ljava/lang/String; = "err"

.field public static final CATEGORY_EVENT:Ljava/lang/String; = "event"

.field public static final CATEGORY_MESSAGE:Ljava/lang/String; = "msg"

.field public static final CATEGORY_PROGRESS:Ljava/lang/String; = "progress"

.field public static final CATEGORY_PROMO:Ljava/lang/String; = "promo"

.field public static final CATEGORY_RECOMMENDATION:Ljava/lang/String; = "recommendation"

.field public static final CATEGORY_SERVICE:Ljava/lang/String; = "service"

.field public static final CATEGORY_SOCIAL:Ljava/lang/String; = "social"

.field public static final CATEGORY_STATUS:Ljava/lang/String; = "status"

.field public static final CATEGORY_SYSTEM:Ljava/lang/String; = "sys"

.field public static final CATEGORY_TRANSPORT:Ljava/lang/String; = "transport"

.field public static final COLOR_DEFAULT:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/Notification;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z

.field public static final DEFAULT_ALL:I = -0x1

.field public static final DEFAULT_LIGHTS:I = 0x4

.field public static final DEFAULT_SOUND:I = 0x1

.field public static final DEFAULT_VIBRATE:I = 0x2

.field public static final EXTRA_ALLOW_DURING_SETUP:Ljava/lang/String; = "android.allowDuringSetup"

.field public static final EXTRA_AS_HEADS_UP:Ljava/lang/String; = "headsup"

.field public static final EXTRA_BACKGROUND_IMAGE_URI:Ljava/lang/String; = "android.backgroundImageUri"

.field public static final EXTRA_BIG_TEXT:Ljava/lang/String; = "android.bigText"

.field public static final EXTRA_COMPACT_ACTIONS:Ljava/lang/String; = "android.compactActions"

.field public static final EXTRA_INFO_TEXT:Ljava/lang/String; = "android.infoText"

.field public static final EXTRA_LARGE_ICON:Ljava/lang/String; = "android.largeIcon"

.field public static final EXTRA_LARGE_ICON_BIG:Ljava/lang/String; = "android.largeIcon.big"

.field public static final EXTRA_MEDIA_SESSION:Ljava/lang/String; = "android.mediaSession"

.field public static final EXTRA_ORIGINATING_USERID:Ljava/lang/String; = "android.originatingUserId"

.field public static final EXTRA_PEOPLE:Ljava/lang/String; = "android.people"

.field public static final EXTRA_PICTURE:Ljava/lang/String; = "android.picture"

.field public static final EXTRA_PROGRESS:Ljava/lang/String; = "android.progress"

.field public static final EXTRA_PROGRESS_INDETERMINATE:Ljava/lang/String; = "android.progressIndeterminate"

.field public static final EXTRA_PROGRESS_MAX:Ljava/lang/String; = "android.progressMax"

.field public static final EXTRA_SHOW_CHRONOMETER:Ljava/lang/String; = "android.showChronometer"

.field public static final EXTRA_SHOW_WHEN:Ljava/lang/String; = "android.showWhen"

.field public static final EXTRA_SMALL_ICON:Ljava/lang/String; = "android.icon"

.field public static final EXTRA_SUB_TEXT:Ljava/lang/String; = "android.subText"

.field public static final EXTRA_SUMMARY_TEXT:Ljava/lang/String; = "android.summaryText"

.field public static final EXTRA_TEMPLATE:Ljava/lang/String; = "android.template"

.field public static final EXTRA_TEXT:Ljava/lang/String; = "android.text"

.field public static final EXTRA_TEXT_LINES:Ljava/lang/String; = "android.textLines"

.field public static final EXTRA_TITLE:Ljava/lang/String; = "android.title"

.field public static final EXTRA_TITLE_BIG:Ljava/lang/String; = "android.title.big"

.field public static final FLAG_AUTO_CANCEL:I = 0x10

.field public static final FLAG_DISABLE_STATUS_BAR_OPEN_FULLSCREEN:I = 0x1000

.field public static final FLAG_FOREGROUND_SERVICE:I = 0x40

.field public static final FLAG_GROUP_SUMMARY:I = 0x200

.field public static final FLAG_HIGH_PRIORITY:I = 0x80

.field public static final FLAG_INSISTENT:I = 0x4

.field public static final FLAG_IS_NEGATIVE:I = 0x2

.field public static final FLAG_IS_ZERO:I = 0x4

.field public static final FLAG_LOCAL_ONLY:I = 0x100

.field public static final FLAG_NO_CLEAR:I = 0x20

.field public static final FLAG_ONGOING_EVENT:I = 0x2

.field public static final FLAG_ONLY_ALERT_ONCE:I = 0x8

.field public static final FLAG_SHOW_LIGHTS:I = 0x1

.field public static final FLAG_SYNCED:I = 0x1

.field public static final FORCE_LED_BLINKING:I = 0x400

.field public static final HEADS_UP_ALLOWED:I = 0x1

.field public static final HEADS_UP_NEVER:I = 0x0

.field public static final HEADS_UP_REQUESTED:I = 0x2

.field public static final INTENT_CATEGORY_NOTIFICATION_PREFERENCES:Ljava/lang/String; = "android.intent.category.NOTIFICATION_PREFERENCES"

.field private static final MAX_CHARSEQUENCE_LENGTH:I = 0x1400

.field public static final PRIORITY_DEFAULT:I = 0x0

.field public static final PRIORITY_HIGH:I = 0x1

.field public static final PRIORITY_LOW:I = -0x1

.field public static final PRIORITY_MAX:I = 0x2

.field public static final PRIORITY_MIN:I = -0x2

.field public static final STREAM_DEFAULT:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "Notification"

.field public static final TWQUICKPANEL_NOTIFICATION_CALL:I = 0x1

.field public static final TWQUICKPANEL_NOTIFICATION_CMAS:I = 0x200

.field public static final TWQUICKPANEL_NOTIFICATION_CONTEXTAWARE:I = 0x10

.field public static final TWQUICKPANEL_NOTIFICATION_INVISIBLE_ICON:I = 0x40

.field public static final TWQUICKPANEL_NOTIFICATION_KIDSMODE:I = 0x100

.field public static final TWQUICKPANEL_NOTIFICATION_KNOXMODE:I = 0x80

.field public static final TWQUICKPANEL_NOTIFICATION_MUSIC:I = 0x2

.field public static final TWQUICKPANEL_NOTIFICATION_MUSICHUB:I = 0x20

.field public static final TWQUICKPANEL_NOTIFICATION_NETWORKBOOSTER:I = 0x108

.field public static final TWQUICKPANEL_NOTIFICATION_RADIO:I = 0x8

.field public static final TWQUICKPANEL_NOTIFICATION_SMARTREMOTE:I = 0x101

.field public static final TWQUICKPANEL_NOTIFICATION_STALKIE:I = 0x102

.field public static final TWQUICKPANEL_NOTIFICATION_TOOLBOX:I = 0x104

.field public static final TWQUICKPANEL_NOTIFICATION_VOICERECORD:I = 0x4

.field public static final VISIBILITY_PRIVATE:I = 0x0

.field public static final VISIBILITY_PUBLIC:I = 0x1

.field public static final VISIBILITY_SECRET:I = -0x1


# instance fields
.field public actions:[Landroid/app/Notification$Action;

.field public audioAttributes:Landroid/media/AudioAttributes;

.field public audioStreamType:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public bigContentView:Landroid/widget/RemoteViews;

.field public category:Ljava/lang/String;

.field public color:I

.field public commonValue:I

.field public contactCharSeq:Ljava/lang/CharSequence;

.field public contentIntent:Landroid/app/PendingIntent;

.field public contentView:Landroid/widget/RemoteViews;

.field public defaults:I

.field public deleteIntent:Landroid/app/PendingIntent;

.field public extras:Landroid/os/Bundle;

.field public flags:I

.field public fullScreenIntent:Landroid/app/PendingIntent;

.field public haptic:I

.field public headsUpContentView:Landroid/widget/RemoteViews;

.field public icon:I

.field public iconLevel:I

.field public knoxFlags:I

.field public largeIcon:Landroid/graphics/Bitmap;

.field public ledARGB:I

.field public ledOffMS:I

.field public ledOnMS:I

.field private mGroupKey:Ljava/lang/String;

.field private mSortKey:Ljava/lang/String;

.field public missedCount:I

.field public number:I

.field public originalPackageName:Ljava/lang/CharSequence;

.field public originalUserId:I

.field public priority:I

.field public publicVersion:Landroid/app/Notification;

.field public sound:Landroid/net/Uri;

.field private stringNamesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field public threadId:J

.field public tickerText:Ljava/lang/CharSequence;

.field public tickerView:Landroid/widget/RemoteViews;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public twQuickPanelEvent:I

.field public vibrate:[J

.field public visibility:I

.field public when:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 84
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_8

    const/4 v0, 0x0

    :cond_8
    sput-boolean v0, Landroid/app/Notification;->DEBUG:Z

    .line 324
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    .line 1913
    new-instance v0, Landroid/app/Notification$1;

    invoke-direct {v0}, Landroid/app/Notification$1;-><init>()V

    sput-object v0, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    sget-boolean v0, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v0, :cond_2a

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_d
    iput-object v0, p0, Landroid/app/Notification;->stringNamesMap:Ljava/util/Map;

    .line 318
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/Notification;->audioStreamType:I

    .line 332
    sget-object v0, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    iput-object v0, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 553
    iput v2, p0, Landroid/app/Notification;->color:I

    .line 717
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 1063
    iput v2, p0, Landroid/app/Notification;->knoxFlags:I

    .line 1422
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/Notification;->when:J

    .line 1423
    iput v2, p0, Landroid/app/Notification;->priority:I

    .line 1424
    return-void

    .line 94
    :cond_2a
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public constructor <init>(ILjava/lang/CharSequence;J)V
    .registers 8
    .param p1, "icon"    # I
    .param p2, "tickerText"    # Ljava/lang/CharSequence;
    .param p3, "when"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    sget-boolean v0, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v0, :cond_28

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_d
    iput-object v0, p0, Landroid/app/Notification;->stringNamesMap:Ljava/util/Map;

    .line 318
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/Notification;->audioStreamType:I

    .line 332
    sget-object v0, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    iput-object v0, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 553
    iput v1, p0, Landroid/app/Notification;->color:I

    .line 717
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 1063
    iput v1, p0, Landroid/app/Notification;->knoxFlags:I

    .line 1454
    iput p1, p0, Landroid/app/Notification;->icon:I

    .line 1455
    iput-object p2, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1456
    iput-wide p3, p0, Landroid/app/Notification;->when:J

    .line 1457
    return-void

    .line 94
    :cond_28
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/CharSequence;JLjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "icon"    # I
    .param p3, "tickerText"    # Ljava/lang/CharSequence;
    .param p4, "when"    # J
    .param p6, "contentTitle"    # Ljava/lang/CharSequence;
    .param p7, "contentText"    # Ljava/lang/CharSequence;
    .param p8, "contentIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 1431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    sget-boolean v0, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v0, :cond_2f

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_d
    iput-object v0, p0, Landroid/app/Notification;->stringNamesMap:Ljava/util/Map;

    .line 318
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/Notification;->audioStreamType:I

    .line 332
    sget-object v0, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    iput-object v0, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 553
    iput v1, p0, Landroid/app/Notification;->color:I

    .line 717
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 1063
    iput v1, p0, Landroid/app/Notification;->knoxFlags:I

    .line 1432
    iput-wide p4, p0, Landroid/app/Notification;->when:J

    .line 1433
    iput p2, p0, Landroid/app/Notification;->icon:I

    .line 1434
    iput-object p3, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1435
    invoke-static {p1, v1, p8, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p0, p1, p6, p7, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1437
    return-void

    .line 94
    :cond_2f
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 10
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v6, 0x0

    .line 1463
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    sget-boolean v5, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v5, :cond_1c0

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    :goto_d
    iput-object v5, p0, Landroid/app/Notification;->stringNamesMap:Ljava/util/Map;

    .line 318
    const/4 v5, -0x1

    iput v5, p0, Landroid/app/Notification;->audioStreamType:I

    .line 332
    sget-object v5, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    iput-object v5, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 553
    iput v6, p0, Landroid/app/Notification;->color:I

    .line 717
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    iput-object v5, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 1063
    iput v6, p0, Landroid/app/Notification;->knoxFlags:I

    .line 1464
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1466
    .local v4, "version":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/app/Notification;->when:J

    .line 1467
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/app/Notification;->icon:I

    .line 1468
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/app/Notification;->number:I

    .line 1470
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_47

    .line 1471
    sget-object v5, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    iput-object v5, p0, Landroid/app/Notification;->originalPackageName:Ljava/lang/CharSequence;

    .line 1473
    :cond_47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/app/Notification;->originalUserId:I

    .line 1474
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5d

    .line 1475
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/PendingIntent;

    iput-object v5, p0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1477
    :cond_5d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6d

    .line 1478
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/PendingIntent;

    iput-object v5, p0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 1480
    :cond_6d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7d

    .line 1481
    sget-object v5, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    iput-object v5, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1483
    :cond_7d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_8d

    .line 1484
    sget-object v5, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/RemoteViews;

    iput-object v5, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    .line 1486
    :cond_8d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_9d

    .line 1487
    sget-object v5, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/RemoteViews;

    iput-object v5, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1489
    :cond_9d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_ad

    .line 1490
    sget-object v5, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    iput-object v5, p0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    .line 1492
    :cond_ad
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/app/Notification;->defaults:I

    .line 1493
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/app/Notification;->flags:I

    .line 1494
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_c9

    .line 1495
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    iput-object v5, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 1498
    :cond_c9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/app/Notification;->audioStreamType:I

    .line 1499
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_df

    .line 1500
    sget-object v5, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioAttributes;

    iput-object v5, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 1502
    :cond_df
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v5

    iput-object v5, p0, Landroid/app/Notification;->vibrate:[J

    .line 1503
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/app/Notification;->ledARGB:I

    .line 1504
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/app/Notification;->ledOnMS:I

    .line 1505
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/app/Notification;->ledOffMS:I

    .line 1506
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/app/Notification;->iconLevel:I

    .line 1508
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/app/Notification;->knoxFlags:I

    .line 1511
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_113

    .line 1512
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/PendingIntent;

    iput-object v5, p0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 1515
    :cond_113
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/app/Notification;->priority:I

    .line 1517
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 1519
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    .line 1521
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    .line 1523
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v5

    iput-object v5, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 1525
    sget-object v5, Landroid/app/Notification$Action;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/app/Notification$Action;

    iput-object v5, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 1527
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_14b

    .line 1528
    sget-object v5, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/RemoteViews;

    iput-object v5, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 1531
    :cond_14b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_15b

    .line 1532
    sget-object v5, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/RemoteViews;

    iput-object v5, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 1535
    :cond_15b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/app/Notification;->visibility:I

    .line 1537
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_171

    .line 1538
    sget-object v5, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Notification;

    iput-object v5, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    .line 1541
    :cond_171
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/app/Notification;->color:I

    .line 1544
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/app/Notification;->twQuickPanelEvent:I

    .line 1546
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/app/Notification;->commonValue:I

    .line 1547
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/app/Notification;->missedCount:I

    .line 1548
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_199

    .line 1549
    sget-object v5, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    iput-object v5, p0, Landroid/app/Notification;->contactCharSeq:Ljava/lang/CharSequence;

    .line 1554
    :cond_199
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/app/Notification;->haptic:I

    .line 1556
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/app/Notification;->threadId:J

    .line 1558
    sget-boolean v5, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v5, :cond_1c3

    .line 1559
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1560
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1ae
    if-ge v0, v2, :cond_1c3

    .line 1561
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1562
    .local v1, "key":Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v3

    .line 1563
    .local v3, "value":Ljava/lang/CharSequence;
    iget-object v5, p0, Landroid/app/Notification;->stringNamesMap:Ljava/util/Map;

    invoke-interface {v5, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1560
    add-int/lit8 v0, v0, 0x1

    goto :goto_1ae

    .line 94
    .end local v0    # "i":I
    .end local v1    # "key":Ljava/lang/CharSequence;
    .end local v2    # "size":I
    .end local v3    # "value":Ljava/lang/CharSequence;
    .end local v4    # "version":I
    :cond_1c0
    const/4 v5, 0x0

    goto/16 :goto_d

    .line 1566
    .restart local v4    # "version":I
    :cond_1c3
    return-void
.end method

.method static synthetic access$2500(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/app/Notification;
    .registers 3
    .param p0, "x0"    # Landroid/os/Bundle;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-static {p0, p1}, Landroid/app/Notification;->getNotificationArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Landroid/app/Notification;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroid/app/Notification;

    .prologue
    .line 80
    iget-object v0, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Landroid/app/Notification;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroid/app/Notification;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Landroid/app/Notification;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroid/app/Notification;

    .prologue
    .line 80
    iget-object v0, p0, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Landroid/app/Notification;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroid/app/Notification;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Landroid/app/Notification;Ljava/util/Map;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Landroid/app/Notification;
    .param p1, "x1"    # Ljava/util/Map;

    .prologue
    .line 80
    iput-object p1, p0, Landroid/app/Notification;->stringNamesMap:Ljava/util/Map;

    return-object p1
.end method

.method private static getNotificationArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/app/Notification;
    .registers 6
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 5292
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 5293
    .local v0, "array":[Landroid/os/Parcelable;
    instance-of v2, v0, [Landroid/app/Notification;

    if-nez v2, :cond_a

    if-nez v0, :cond_10

    .line 5294
    :cond_a
    check-cast v0, [Landroid/app/Notification;

    .end local v0    # "array":[Landroid/os/Parcelable;
    check-cast v0, [Landroid/app/Notification;

    move-object v1, v0

    .line 5299
    :goto_f
    return-object v1

    .line 5296
    .restart local v0    # "array":[Landroid/os/Parcelable;
    :cond_10
    array-length v2, v0

    const-class v3, [Landroid/app/Notification;

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/app/Notification;

    .line 5298
    .local v1, "typedArray":[Landroid/app/Notification;
    invoke-virtual {p0, p1, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_f
.end method

.method public static safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 4
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v1, 0x1400

    .line 1738
    if-nez p0, :cond_5

    .line 1748
    .end local p0    # "cs":Ljava/lang/CharSequence;
    :cond_4
    :goto_4
    return-object p0

    .line 1739
    .restart local p0    # "cs":Ljava/lang/CharSequence;
    :cond_5
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le v0, v1, :cond_10

    .line 1740
    const/4 v0, 0x0

    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    .line 1742
    :cond_10
    instance-of v0, p0, Landroid/os/Parcelable;

    if-eqz v0, :cond_4

    .line 1743
    const-string v0, "Notification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "warning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " instance is a custom Parcelable and not allowed in Notification"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_4
.end method

.method public static visibilityToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "vis"    # I

    .prologue
    .line 2059
    packed-switch p0, :pswitch_data_2a

    .line 2067
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_20
    return-object v0

    .line 2061
    :pswitch_21
    const-string v0, "PRIVATE"

    goto :goto_20

    .line 2063
    :pswitch_24
    const-string v0, "PUBLIC"

    goto :goto_20

    .line 2065
    :pswitch_27
    const-string v0, "SECRET"

    goto :goto_20

    .line 2059
    :pswitch_data_2a
    .packed-switch -0x1
        :pswitch_27
        :pswitch_21
        :pswitch_24
    .end packed-switch
.end method


# virtual methods
.method public clone()Landroid/app/Notification;
    .registers 3

    .prologue
    .line 1570
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 1571
    .local v0, "that":Landroid/app/Notification;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/Notification;->cloneInto(Landroid/app/Notification;Z)V

    .line 1572
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-virtual {p0}, Landroid/app/Notification;->clone()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public cloneInto(Landroid/app/Notification;Z)V
    .registers 12
    .param p1, "that"    # Landroid/app/Notification;
    .param p2, "heavy"    # Z

    .prologue
    const/4 v8, 0x0

    .line 1581
    iget-wide v6, p0, Landroid/app/Notification;->when:J

    iput-wide v6, p1, Landroid/app/Notification;->when:J

    .line 1582
    iget v5, p0, Landroid/app/Notification;->icon:I

    iput v5, p1, Landroid/app/Notification;->icon:I

    .line 1583
    iget v5, p0, Landroid/app/Notification;->number:I

    iput v5, p1, Landroid/app/Notification;->number:I

    .line 1585
    iget-object v5, p0, Landroid/app/Notification;->originalPackageName:Ljava/lang/CharSequence;

    iput-object v5, p1, Landroid/app/Notification;->originalPackageName:Ljava/lang/CharSequence;

    .line 1586
    iget v5, p0, Landroid/app/Notification;->originalUserId:I

    iput v5, p1, Landroid/app/Notification;->originalUserId:I

    .line 1589
    iget-object v5, p0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    iput-object v5, p1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1590
    iget-object v5, p0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    iput-object v5, p1, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 1591
    iget-object v5, p0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    iput-object v5, p1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 1593
    iget-object v5, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v5, :cond_2d

    .line 1594
    iget-object v5, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1596
    :cond_2d
    if-eqz p2, :cond_3b

    iget-object v5, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    if-eqz v5, :cond_3b

    .line 1597
    iget-object v5, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    invoke-virtual {v5}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object v5

    iput-object v5, p1, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    .line 1599
    :cond_3b
    if-eqz p2, :cond_49

    iget-object v5, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eqz v5, :cond_49

    .line 1600
    iget-object v5, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v5}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object v5

    iput-object v5, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1602
    :cond_49
    if-eqz p2, :cond_57

    iget-object v5, p0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_57

    .line 1603
    iget-object v5, p0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    invoke-static {v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p1, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    .line 1605
    :cond_57
    iget v5, p0, Landroid/app/Notification;->iconLevel:I

    iput v5, p1, Landroid/app/Notification;->iconLevel:I

    .line 1606
    iget-object v5, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iput-object v5, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 1607
    iget v5, p0, Landroid/app/Notification;->audioStreamType:I

    iput v5, p1, Landroid/app/Notification;->audioStreamType:I

    .line 1608
    iget-object v5, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    if-eqz v5, :cond_74

    .line 1609
    new-instance v5, Landroid/media/AudioAttributes$Builder;

    iget-object v6, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    invoke-direct {v5, v6}, Landroid/media/AudioAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    invoke-virtual {v5}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v5

    iput-object v5, p1, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 1612
    :cond_74
    iget-object v4, p0, Landroid/app/Notification;->vibrate:[J

    .line 1613
    .local v4, "vibrate":[J
    if-eqz v4, :cond_80

    .line 1614
    array-length v0, v4

    .line 1615
    .local v0, "N":I
    new-array v3, v0, [J

    iput-object v3, p1, Landroid/app/Notification;->vibrate:[J

    .line 1616
    .local v3, "vib":[J
    invoke-static {v4, v8, v3, v8, v0}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 1619
    .end local v0    # "N":I
    .end local v3    # "vib":[J
    :cond_80
    iget v5, p0, Landroid/app/Notification;->ledARGB:I

    iput v5, p1, Landroid/app/Notification;->ledARGB:I

    .line 1620
    iget v5, p0, Landroid/app/Notification;->ledOnMS:I

    iput v5, p1, Landroid/app/Notification;->ledOnMS:I

    .line 1621
    iget v5, p0, Landroid/app/Notification;->ledOffMS:I

    iput v5, p1, Landroid/app/Notification;->ledOffMS:I

    .line 1622
    iget v5, p0, Landroid/app/Notification;->defaults:I

    iput v5, p1, Landroid/app/Notification;->defaults:I

    .line 1624
    iget v5, p0, Landroid/app/Notification;->flags:I

    iput v5, p1, Landroid/app/Notification;->flags:I

    .line 1626
    iget v5, p0, Landroid/app/Notification;->priority:I

    iput v5, p1, Landroid/app/Notification;->priority:I

    .line 1628
    iget-object v5, p0, Landroid/app/Notification;->category:Ljava/lang/String;

    iput-object v5, p1, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 1630
    iget-object v5, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    iput-object v5, p1, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    .line 1632
    iget-object v5, p0, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    iput-object v5, p1, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    .line 1634
    iget-object v5, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v5, :cond_b6

    .line 1636
    :try_start_a8
    new-instance v5, Landroid/os/Bundle;

    iget-object v6, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-direct {v5, v6}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v5, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 1638
    iget-object v5, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v5}, Landroid/os/Bundle;->size()I
    :try_end_b6
    .catch Landroid/os/BadParcelableException; {:try_start_a8 .. :try_end_b6} :catch_d6

    .line 1645
    :cond_b6
    :goto_b6
    iget-object v5, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v5, :cond_f3

    .line 1646
    iget-object v5, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v5, v5

    new-array v5, v5, [Landroid/app/Notification$Action;

    iput-object v5, p1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 1647
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c2
    iget-object v5, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v5, v5

    if-ge v2, v5, :cond_f3

    .line 1648
    iget-object v5, p1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    iget-object v6, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    aget-object v6, v6, v2

    invoke-virtual {v6}, Landroid/app/Notification$Action;->clone()Landroid/app/Notification$Action;

    move-result-object v6

    aput-object v6, v5, v2

    .line 1647
    add-int/lit8 v2, v2, 0x1

    goto :goto_c2

    .line 1639
    .end local v2    # "i":I
    :catch_d6
    move-exception v1

    .line 1640
    .local v1, "e":Landroid/os/BadParcelableException;
    const-string v5, "Notification"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "could not unparcel extras from notification: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1641
    const/4 v5, 0x0

    iput-object v5, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    goto :goto_b6

    .line 1652
    .end local v1    # "e":Landroid/os/BadParcelableException;
    :cond_f3
    if-eqz p2, :cond_101

    iget-object v5, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-eqz v5, :cond_101

    .line 1653
    iget-object v5, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v5}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object v5

    iput-object v5, p1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 1656
    :cond_101
    if-eqz p2, :cond_10f

    iget-object v5, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v5, :cond_10f

    .line 1657
    iget-object v5, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v5}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object v5

    iput-object v5, p1, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 1660
    :cond_10f
    iget v5, p0, Landroid/app/Notification;->visibility:I

    iput v5, p1, Landroid/app/Notification;->visibility:I

    .line 1662
    iget-object v5, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    if-eqz v5, :cond_125

    .line 1663
    new-instance v5, Landroid/app/Notification;

    invoke-direct {v5}, Landroid/app/Notification;-><init>()V

    iput-object v5, p1, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    .line 1664
    iget-object v5, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    iget-object v6, p1, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    invoke-virtual {v5, v6, p2}, Landroid/app/Notification;->cloneInto(Landroid/app/Notification;Z)V

    .line 1667
    :cond_125
    iget v5, p0, Landroid/app/Notification;->color:I

    iput v5, p1, Landroid/app/Notification;->color:I

    .line 1669
    if-nez p2, :cond_12e

    .line 1670
    invoke-virtual {p1}, Landroid/app/Notification;->lightenPayload()V

    .line 1674
    :cond_12e
    iget v5, p0, Landroid/app/Notification;->twQuickPanelEvent:I

    iput v5, p1, Landroid/app/Notification;->twQuickPanelEvent:I

    .line 1677
    iget v5, p0, Landroid/app/Notification;->commonValue:I

    iput v5, p1, Landroid/app/Notification;->commonValue:I

    .line 1678
    iget v5, p0, Landroid/app/Notification;->missedCount:I

    iput v5, p1, Landroid/app/Notification;->missedCount:I

    .line 1679
    iget-object v5, p0, Landroid/app/Notification;->contactCharSeq:Ljava/lang/CharSequence;

    iput-object v5, p1, Landroid/app/Notification;->contactCharSeq:Ljava/lang/CharSequence;

    .line 1683
    iget v5, p0, Landroid/app/Notification;->haptic:I

    iput v5, p1, Landroid/app/Notification;->haptic:I

    .line 1685
    iget-wide v6, p0, Landroid/app/Notification;->threadId:J

    iput-wide v6, p1, Landroid/app/Notification;->threadId:J

    .line 1686
    return-void
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 1752
    const/4 v0, 0x0

    return v0
.end method

.method public getGroup()Ljava/lang/String;
    .registers 2

    .prologue
    .line 688
    iget-object v0, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSortKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 706
    iget-object v0, p0, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    return-object v0
.end method

.method public isGroupChild()Z
    .registers 2

    .prologue
    .line 2091
    iget-object v0, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget v0, p0, Landroid/app/Notification;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isGroupSummary()Z
    .registers 2

    .prologue
    .line 2084
    iget-object v0, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget v0, p0, Landroid/app/Notification;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isValid()Z
    .registers 3

    .prologue
    .line 2077
    iget-object v0, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_e

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.rebuild.contentView"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public final lightenPayload()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 1717
    iput-object v0, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    .line 1718
    iput-object v0, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1719
    iput-object v0, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 1720
    iput-object v0, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 1721
    iput-object v0, p0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    .line 1722
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_32

    .line 1723
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.largeIcon"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1724
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.largeIcon.big"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1725
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.picture"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1726
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.bigText"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1728
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.rebuild"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1730
    :cond_32
    return-void
.end method

.method public setKnoxFlag(I)V
    .registers 3
    .param p1, "flag"    # I

    .prologue
    .line 1693
    iget v0, p0, Landroid/app/Notification;->knoxFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/app/Notification;->knoxFlags:I

    .line 1694
    return-void
.end method

.method public setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentTitle"    # Ljava/lang/CharSequence;
    .param p3, "contentText"    # Ljava/lang/CharSequence;
    .param p4, "contentIntent"    # Landroid/app/PendingIntent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1948
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1952
    .local v0, "builder":Landroid/app/Notification$Builder;
    iget-wide v2, p0, Landroid/app/Notification;->when:J

    invoke-virtual {v0, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 1953
    iget v1, p0, Landroid/app/Notification;->icon:I

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1954
    iget v1, p0, Landroid/app/Notification;->priority:I

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 1955
    iget-object v1, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1956
    iget v1, p0, Landroid/app/Notification;->number:I

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    .line 1957
    iget v1, p0, Landroid/app/Notification;->color:I

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 1958
    iget v1, p0, Landroid/app/Notification;->flags:I

    # setter for: Landroid/app/Notification$Builder;->mFlags:I
    invoke-static {v0, v1}, Landroid/app/Notification$Builder;->access$302(Landroid/app/Notification$Builder;I)I

    .line 1959
    iget-object v1, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget v2, p0, Landroid/app/Notification;->audioStreamType:I

    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;

    .line 1960
    iget v1, p0, Landroid/app/Notification;->defaults:I

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 1961
    iget-object v1, p0, Landroid/app/Notification;->vibrate:[J

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    .line 1964
    if-eqz p2, :cond_3e

    .line 1965
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1967
    :cond_3e
    if-eqz p3, :cond_43

    .line 1968
    invoke-virtual {v0, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1970
    :cond_43
    invoke-virtual {v0, p4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1971
    invoke-virtual {v0, p0}, Landroid/app/Notification$Builder;->buildInto(Landroid/app/Notification;)Landroid/app/Notification;

    .line 1972
    return-void
.end method

.method public setOriginalPackageName(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "packageName"    # Ljava/lang/CharSequence;

    .prologue
    .line 1700
    iput-object p1, p0, Landroid/app/Notification;->originalPackageName:Ljava/lang/CharSequence;

    .line 1701
    return-void
.end method

.method public setOriginalUserId(I)V
    .registers 2
    .param p1, "userId"    # I

    .prologue
    .line 1707
    iput p1, p0, Landroid/app/Notification;->originalUserId:I

    .line 1708
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    .prologue
    .line 1976
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1977
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v3, "Notification(pri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1978
    iget v3, p0, Landroid/app/Notification;->priority:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1979
    const-string v3, " contentView="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1980
    iget-object v3, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eqz v3, :cond_107

    .line 1981
    iget-object v3, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v3}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1982
    const-string v3, "/0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1983
    iget-object v3, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v3}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1987
    :goto_33
    const-string v3, " vibrate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1988
    iget v3, p0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_10e

    .line 1989
    const-string v3, "default"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2004
    :goto_43
    const-string v3, " sound="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2005
    iget v3, p0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_146

    .line 2006
    const-string v3, "default"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2012
    :goto_53
    const-string v3, " defaults=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2013
    iget v3, p0, Landroid/app/Notification;->defaults:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2014
    const-string v3, " flags=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2015
    iget v3, p0, Landroid/app/Notification;->flags:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2016
    const-string v3, " color=0x%08x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Landroid/app/Notification;->color:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2017
    iget-object v3, p0, Landroid/app/Notification;->category:Ljava/lang/String;

    if-eqz v3, :cond_92

    .line 2018
    const-string v3, " category="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2019
    iget-object v3, p0, Landroid/app/Notification;->category:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2021
    :cond_92
    iget-object v3, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    if-eqz v3, :cond_a0

    .line 2022
    const-string v3, " groupKey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2023
    iget-object v3, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2025
    :cond_a0
    iget-object v3, p0, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    if-eqz v3, :cond_ae

    .line 2026
    const-string v3, " sortKey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2027
    iget-object v3, p0, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2029
    :cond_ae
    iget-object v3, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v3, :cond_bd

    .line 2030
    const-string v3, " actions="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2031
    iget-object v3, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2033
    :cond_bd
    const-string v3, " originalPackageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2034
    iget-object v3, p0, Landroid/app/Notification;->originalPackageName:Ljava/lang/CharSequence;

    if-eqz v3, :cond_167

    .line 2035
    sget-boolean v3, Landroid/app/Notification;->DEBUG:Z

    if-eqz v3, :cond_15c

    .line 2036
    iget-object v3, p0, Landroid/app/Notification;->originalPackageName:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2043
    :goto_d3
    const-string v3, " originalUserId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2044
    iget v3, p0, Landroid/app/Notification;->originalUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2045
    const-string v3, " vis="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2046
    iget v3, p0, Landroid/app/Notification;->visibility:I

    invoke-static {v3}, Landroid/app/Notification;->visibilityToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2047
    iget-object v3, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    if-eqz v3, :cond_fd

    .line 2048
    const-string v3, " publicVersion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2049
    iget-object v3, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    invoke-virtual {v3}, Landroid/app/Notification;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2051
    :cond_fd
    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2052
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1985
    :cond_107
    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_33

    .line 1990
    :cond_10e
    iget-object v3, p0, Landroid/app/Notification;->vibrate:[J

    if-eqz v3, :cond_13f

    .line 1991
    iget-object v3, p0, Landroid/app/Notification;->vibrate:[J

    array-length v3, v3

    add-int/lit8 v0, v3, -0x1

    .line 1992
    .local v0, "N":I
    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1993
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11d
    if-ge v1, v0, :cond_12e

    .line 1994
    iget-object v3, p0, Landroid/app/Notification;->vibrate:[J

    aget-wide v4, v3, v1

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1995
    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1993
    add-int/lit8 v1, v1, 0x1

    goto :goto_11d

    .line 1997
    :cond_12e
    const/4 v3, -0x1

    if-eq v0, v3, :cond_138

    .line 1998
    iget-object v3, p0, Landroid/app/Notification;->vibrate:[J

    aget-wide v4, v3, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2000
    :cond_138
    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_43

    .line 2002
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_13f
    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_43

    .line 2007
    :cond_146
    iget-object v3, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-eqz v3, :cond_155

    .line 2008
    iget-object v3, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_53

    .line 2010
    :cond_155
    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_53

    .line 2038
    :cond_15c
    iget-object v3, p0, Landroid/app/Notification;->originalPackageName:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_d3

    .line 2041
    :cond_167
    const-string v3, "N"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 11
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1760
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1762
    iget-wide v4, p0, Landroid/app/Notification;->when:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 1763
    iget v3, p0, Landroid/app/Notification;->icon:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1764
    iget v3, p0, Landroid/app/Notification;->number:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1767
    iget-object v3, p0, Landroid/app/Notification;->originalPackageName:Ljava/lang/CharSequence;

    if-eqz v3, :cond_161

    .line 1768
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1769
    iget-object v3, p0, Landroid/app/Notification;->originalPackageName:Ljava/lang/CharSequence;

    invoke-static {v3, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 1773
    :goto_20
    iget v3, p0, Landroid/app/Notification;->originalUserId:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1774
    iget-object v3, p0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-eqz v3, :cond_166

    .line 1775
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1776
    iget-object v3, p0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, p1, v6}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1780
    :goto_31
    iget-object v3, p0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    if-eqz v3, :cond_16b

    .line 1781
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1782
    iget-object v3, p0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, p1, v6}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1786
    :goto_3d
    iget-object v3, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v3, :cond_170

    .line 1787
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1788
    iget-object v3, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-static {v3, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 1792
    :goto_49
    iget-object v3, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    if-eqz v3, :cond_175

    .line 1793
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1794
    iget-object v3, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    invoke-virtual {v3, p1, v6}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1798
    :goto_55
    iget-object v3, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eqz v3, :cond_17a

    .line 1799
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1800
    iget-object v3, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v3, p1, v6}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1804
    :goto_61
    iget-object v3, p0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_17f

    .line 1805
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1806
    iget-object v3, p0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v3, p1, v6}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1811
    :goto_6d
    iget v3, p0, Landroid/app/Notification;->defaults:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1812
    iget v3, p0, Landroid/app/Notification;->flags:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1814
    iget-object v3, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-eqz v3, :cond_184

    .line 1815
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1816
    iget-object v3, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    invoke-virtual {v3, p1, v6}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1820
    :goto_83
    iget v3, p0, Landroid/app/Notification;->audioStreamType:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1822
    iget-object v3, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    if-eqz v3, :cond_189

    .line 1823
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1824
    iget-object v3, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v3, p1, v6}, Landroid/media/AudioAttributes;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1829
    :goto_94
    iget-object v3, p0, Landroid/app/Notification;->vibrate:[J

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 1830
    iget v3, p0, Landroid/app/Notification;->ledARGB:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1831
    iget v3, p0, Landroid/app/Notification;->ledOnMS:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1832
    iget v3, p0, Landroid/app/Notification;->ledOffMS:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1833
    iget v3, p0, Landroid/app/Notification;->iconLevel:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1835
    iget v3, p0, Landroid/app/Notification;->knoxFlags:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1838
    iget-object v3, p0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v3, :cond_18e

    .line 1839
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1840
    iget-object v3, p0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, p1, v6}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1845
    :goto_be
    iget v3, p0, Landroid/app/Notification;->priority:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1847
    iget-object v3, p0, Landroid/app/Notification;->category:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1849
    iget-object v3, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1851
    iget-object v3, p0, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1853
    iget-object v3, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 1855
    iget-object v3, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    invoke-virtual {p1, v3, v6}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1857
    iget-object v3, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-eqz v3, :cond_193

    .line 1858
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1859
    iget-object v3, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v3, p1, v6}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1864
    :goto_e8
    iget-object v3, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v3, :cond_198

    .line 1865
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1866
    iget-object v3, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v3, p1, v6}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1871
    :goto_f4
    iget v3, p0, Landroid/app/Notification;->visibility:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1873
    iget-object v3, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    if-eqz v3, :cond_19d

    .line 1874
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1875
    iget-object v3, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    invoke-virtual {v3, p1, v6}, Landroid/app/Notification;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1880
    :goto_105
    iget v3, p0, Landroid/app/Notification;->color:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1883
    iget v3, p0, Landroid/app/Notification;->twQuickPanelEvent:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1885
    iget v3, p0, Landroid/app/Notification;->commonValue:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1886
    iget v3, p0, Landroid/app/Notification;->missedCount:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1887
    iget-object v3, p0, Landroid/app/Notification;->contactCharSeq:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1a2

    .line 1888
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1889
    iget-object v3, p0, Landroid/app/Notification;->contactCharSeq:Ljava/lang/CharSequence;

    invoke-static {v3, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 1896
    :goto_125
    iget v3, p0, Landroid/app/Notification;->haptic:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1898
    iget-wide v4, p0, Landroid/app/Notification;->threadId:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 1900
    sget-boolean v3, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v3, :cond_1a6

    .line 1901
    iget-object v3, p0, Landroid/app/Notification;->stringNamesMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v2

    .line 1902
    .local v2, "size":I
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1903
    iget-object v3, p0, Landroid/app/Notification;->stringNamesMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_146
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 1904
    .local v1, "key":Ljava/lang/CharSequence;
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 1905
    iget-object v3, p0, Landroid/app/Notification;->stringNamesMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    goto :goto_146

    .line 1771
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "key":Ljava/lang/CharSequence;
    .end local v2    # "size":I
    :cond_161
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_20

    .line 1778
    :cond_166
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_31

    .line 1784
    :cond_16b
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_3d

    .line 1790
    :cond_170
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_49

    .line 1796
    :cond_175
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_55

    .line 1802
    :cond_17a
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_61

    .line 1808
    :cond_17f
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_6d

    .line 1818
    :cond_184
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_83

    .line 1826
    :cond_189
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_94

    .line 1842
    :cond_18e
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_be

    .line 1861
    :cond_193
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_e8

    .line 1868
    :cond_198
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_f4

    .line 1877
    :cond_19d
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_105

    .line 1891
    :cond_1a2
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_125

    .line 1908
    :cond_1a6
    return-void
.end method
