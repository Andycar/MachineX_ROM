.class public Lcom/android/internal/app/ResolverActivity;
.super Landroid/app/Activity;
.source "ResolverActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;,
        Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;,
        Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;,
        Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListInfo;,
        Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;,
        Lcom/android/internal/app/ResolverActivity$ResolverComparator;,
        Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;,
        Lcom/android/internal/app/ResolverActivity$LoadIconTask;,
        Lcom/android/internal/app/ResolverActivity$RemoteShareListInfo;,
        Lcom/android/internal/app/ResolverActivity$ItemLongClickListener;,
        Lcom/android/internal/app/ResolverActivity$ViewHolder;,
        Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;,
        Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;,
        Lcom/android/internal/app/ResolverActivity$ActionTitle;,
        Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEV_TYPE_MOBILE:I = 0x0

.field private static final DEV_TYPE_TABLET:I = 0x1

.field private static final GUIDE_ACTIVITY:Ljava/lang/String; = "ResolverGuideActivity"

.field public static final INTENT_REQUEST_RECENT_GROUP:Ljava/lang/String; = "com.samsung.android.coreapps.rshare.requestrecentgroupcontacts"

.field private static final INTERNAL_PACKAGE:Ljava/lang/String; = "com.android.internal.app"

.field private static final MSG_INIT_RECENTLIST:I = 0x7d0

.field private static final MSG_LIST_UPDATE:I = 0x3e8

.field private static final NET_TYPE_BT:I = 0x1

.field private static final NET_TYPE_WIFIDIRECT:I = 0x0

.field private static final REQUEST_CODE_REQUEST_RECENT_CONTACTS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ResolverActivity"

.field private static final TAG_RECIPIENT_DATAIDS:Ljava/lang/String; = "recipientdataids"

.field public static final THEME_CHOOSER:Ljava/lang/String; = "theme"

.field public static final THEME_DEVICE_DEFAULT:I = 0x1

.field public static final THEME_DEVICE_DEFAULT_LIGHT:I = 0x2

.field public static final THEME_NONE:I = 0x0

.field private static final USAGE_STATS_PERIOD:J = 0x48190800L

.field private static final WIFIDIRECT_ACTIVITY_NAME:Ljava/lang/String; = "com.sec.android.app.FileShareClient.DeviceSelectActivity"

.field private static mIsEasySingUpIsCertificated:Z

.field private static mIsRemoteShareServiceDownloaded:Z


# instance fields
.field private final ACTION_AUTH_RESULT:Ljava/lang/String;

.field private final ACTION_REQ_AUTH:Ljava/lang/String;

.field private final EXTRA_AUTH_RESULT:Ljava/lang/String;

.field public final EXTRA_KEY_RECENT_GROUP_CONTACTID:Ljava/lang/String;

.field public final EXTRA_KEY_RECENT_GROUP_COUNT:Ljava/lang/String;

.field public final EXTRA_KEY_RECENT_GROUP_DATAIDS:Ljava/lang/String;

.field public final EXTRA_KEY_RECENT_GROUP_NAMES:Ljava/lang/String;

.field public final EXTRA_KEY_RECENT_GROUP_PHONENUM:Ljava/lang/String;

.field public final EXTRA_KEY_RECENT_GROUP_THUMBNAILS:Ljava/lang/String;

.field private final RECENT_CONTACTS_LIST_MAX_COUNT:I

.field private final REMOTE_SHARE_SERVICE_ID:I

.field public final RESPONSE_RECENT_GROUP_CONTACTS:Ljava/lang/String;

.field private final RESULT_FAILED:I

.field private final RESULT_SUCCESS:I

.field private mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

.field private mAlwaysButton:Landroid/widget/Button;

.field private mAlwaysUseOption:Z

.field private mApplyNearByDevice:Z

.field private mApplyRemoteShareResolver:Z

.field private mConnector:Lcom/samsung/android/sconnect/extern/QuickConnectConnector;

.field private mContext:Landroid/content/Context;

.field private mDeviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceListener:Lcom/samsung/android/sconnect/extern/QuickConnectConnector$IDeviceStatusListener;

.field private mEasySignUpReceiver:Landroid/content/BroadcastReceiver;

.field mEasySignUpReciverfilter:Landroid/content/IntentFilter;

.field private mGridRemoteShare:Landroid/widget/ExpandableHeightGridView;

.field private mGridRemoteShareRecentHistory:Landroid/widget/HorizontalListView;

.field private mGridRemoteShareRecentHistoryDefault:Landroid/widget/ExpandableHeightGridView;

.field private mGridView:Landroid/widget/GridView;

.field final mHandler:Landroid/os/Handler;

.field private mIconDpi:I

.field private mIconSize:I

.field private mIntent:Landroid/content/Intent;

.field private mIsDeviceDefault:Z

.field private mIsEasySingUpIsCertificatedChecked:Z

.field private mIsLightTheme:Z

.field private mIsRecentContactsReceiverRegistered:Z

.field private mIsRemoteShareServiceDownloadedChecked:Z

.field private mIsSupportNewFeature:Z

.field private mItemLongClicked:Z

.field private mKgm:Landroid/app/KeyguardManager;

.field private mLastSelected:I

.field private mLaunchedFromPackage:Ljava/lang/String;

.field private mLaunchedFromUid:I

.field private mListupCompleted:Z

.field private mMaxColumns:I

.field private mOnceButton:Landroid/widget/Button;

.field private mOrigIntent:Landroid/content/Intent;

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mPrivateModeSettingsValBeforeOnFocusChanged:I

.field private mPrivateModeSettingsValBeforeOnFocusChangedisChecked:Z

.field private mRecentContactsId:[J

.field private mRecentContactsItemContactsCountInGroup:[I

.field private mRecentContactsItemPhoneNum:[Ljava/lang/String;

.field private mRecentContactsListCount:I

.field private mRecentContactsListName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRecentContactsListThumb:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field mRecentContactsReceiver:Landroid/content/BroadcastReceiver;

.field private mRegistered:Z

.field private mRemoteShareIndex:I

.field private mRemoteShareListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;

.field private mRemoteShareRecentHistoryDefaultIndex:I

.field private mRemoteShareRecentHistoryDefaultListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;

.field private mRemoteShareRecentHistoryIndex:I

.field private mRemoteShareRecentHistoryListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;

.field private mResolvingHome:Z

.field private mSafeForwardingMode:Z

.field private mShowExtended:Z

.field private mStats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusListener:Lcom/samsung/android/sconnect/extern/QuickConnectConnector$IServiceStatusListener;

.field private mUsm:Landroid/app/usage/UsageStatsManager;

.field private request_dataids:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 191
    sput-boolean v0, Lcom/android/internal/app/ResolverActivity;->mIsEasySingUpIsCertificated:Z

    .line 193
    sput-boolean v0, Lcom/android/internal/app/ResolverActivity;->mIsRemoteShareServiceDownloaded:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x5

    const/4 v1, 0x0

    .line 132
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 151
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->mLastSelected:I

    .line 152
    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mResolvingHome:Z

    .line 159
    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mItemLongClicked:Z

    .line 172
    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mApplyRemoteShareResolver:Z

    .line 174
    iput v1, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareIndex:I

    .line 176
    iput v1, p0, Lcom/android/internal/app/ResolverActivity;->mPrivateModeSettingsValBeforeOnFocusChanged:I

    .line 177
    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mPrivateModeSettingsValBeforeOnFocusChangedisChecked:Z

    .line 182
    iput v1, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryDefaultIndex:I

    .line 186
    iput v1, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryIndex:I

    .line 189
    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mIsLightTheme:Z

    .line 192
    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mIsEasySingUpIsCertificatedChecked:Z

    .line 194
    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mIsRemoteShareServiceDownloadedChecked:Z

    .line 195
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->REMOTE_SHARE_SERVICE_ID:I

    .line 202
    const-string v0, "com.samsung.android.coreapps.rshare.responserecentgroupcontacts"

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->RESPONSE_RECENT_GROUP_CONTACTS:Ljava/lang/String;

    .line 206
    const-string/jumbo v0, "recentgroupnames"

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->EXTRA_KEY_RECENT_GROUP_NAMES:Ljava/lang/String;

    .line 207
    const-string/jumbo v0, "recentgroupthumbnail"

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->EXTRA_KEY_RECENT_GROUP_THUMBNAILS:Ljava/lang/String;

    .line 208
    const-string/jumbo v0, "recentgroupdataids"

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->EXTRA_KEY_RECENT_GROUP_DATAIDS:Ljava/lang/String;

    .line 209
    const-string/jumbo v0, "recentgroupcontactids"

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->EXTRA_KEY_RECENT_GROUP_CONTACTID:Ljava/lang/String;

    .line 210
    const-string/jumbo v0, "recentgroupcount"

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->EXTRA_KEY_RECENT_GROUP_COUNT:Ljava/lang/String;

    .line 211
    const-string/jumbo v0, "recentphonenumbers"

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->EXTRA_KEY_RECENT_GROUP_PHONENUM:Ljava/lang/String;

    .line 215
    const-string v0, "com.samsung.android.coreapps.easysignup.ACTION_REQ_AUTH"

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->ACTION_REQ_AUTH:Ljava/lang/String;

    .line 216
    const-string v0, "com.samsung.android.coreapps.easysignup.ACTION_AUTH_RESULT"

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->ACTION_AUTH_RESULT:Ljava/lang/String;

    .line 217
    const-string v0, "extra_auth_result"

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->EXTRA_AUTH_RESULT:Ljava/lang/String;

    .line 218
    iput v1, p0, Lcom/android/internal/app/ResolverActivity;->RESULT_SUCCESS:I

    .line 219
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->RESULT_FAILED:I

    .line 222
    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mIsRecentContactsReceiverRegistered:Z

    .line 224
    iput v1, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsListCount:I

    .line 226
    iput v2, p0, Lcom/android/internal/app/ResolverActivity;->RECENT_CONTACTS_LIST_MAX_COUNT:I

    .line 228
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsListName:Ljava/util/ArrayList;

    .line 229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsListThumb:Ljava/util/List;

    .line 230
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->request_dataids:[Ljava/lang/String;

    .line 231
    new-array v0, v2, [J

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsId:[J

    .line 232
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsItemContactsCountInGroup:[I

    .line 233
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsItemPhoneNum:[Ljava/lang/String;

    .line 241
    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mIsSupportNewFeature:Z

    .line 247
    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mApplyNearByDevice:Z

    .line 248
    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mListupCompleted:Z

    .line 249
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mDeviceList:Ljava/util/List;

    .line 250
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mConnector:Lcom/samsung/android/sconnect/extern/QuickConnectConnector;

    .line 252
    new-instance v0, Lcom/android/internal/app/ResolverActivity$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ResolverActivity$1;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mHandler:Landroid/os/Handler;

    .line 278
    new-instance v0, Lcom/android/internal/app/ResolverActivity$2;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ResolverActivity$2;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mStatusListener:Lcom/samsung/android/sconnect/extern/QuickConnectConnector$IServiceStatusListener;

    .line 291
    new-instance v0, Lcom/android/internal/app/ResolverActivity$3;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ResolverActivity$3;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mDeviceListener:Lcom/samsung/android/sconnect/extern/QuickConnectConnector$IDeviceStatusListener;

    .line 384
    new-instance v0, Lcom/android/internal/app/ResolverActivity$4;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ResolverActivity$4;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsReceiver:Landroid/content/BroadcastReceiver;

    .line 433
    new-instance v0, Lcom/android/internal/app/ResolverActivity$5;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ResolverActivity$5;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mEasySignUpReceiver:Landroid/content/BroadcastReceiver;

    .line 464
    new-instance v0, Lcom/android/internal/app/ResolverActivity$6;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ResolverActivity$6;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 2320
    return-void
.end method

.method private RemoteShareRecentHistoryDefaultGridItemClick(I)V
    .registers 5
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x0

    .line 2242
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryDefaultListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;

    if-nez v1, :cond_10

    .line 2243
    const-string v1, "ResolverActivity"

    const-string v2, "mGridRemoteShareRecentHistoryDefault.onItemClick : mRemoteShareRecentHistoryDefaultListAdapter is null, finish "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2244
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 2269
    :goto_f
    return-void

    .line 2248
    :cond_10
    packed-switch p1, :pswitch_data_50

    goto :goto_f

    .line 2251
    :pswitch_14
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.coreapps.easysignup.ACTION_REQ_AUTH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2252
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "fromOOBE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2253
    const-string v1, "agreeMarketing"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2254
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2255
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2257
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mEasySignUpReciverfilter:Landroid/content/IntentFilter;

    if-nez v1, :cond_3a

    .line 2258
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mEasySignUpReciverfilter:Landroid/content/IntentFilter;

    .line 2260
    :cond_3a
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mEasySignUpReciverfilter:Landroid/content/IntentFilter;

    const-string v2, "com.samsung.android.coreapps.easysignup.ACTION_AUTH_RESULT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2261
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mEasySignUpReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mEasySignUpReciverfilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/app/ResolverActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2262
    const-string v1, "ResolverActivity"

    const-string v2, "RemoteShareRecentHistoryDefaultGridItemClick : Trying to Easy Sign-up"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 2248
    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_14
    .end packed-switch
.end method

.method private RemoteShareRecentHistoryGridItemClick(I)V
    .registers 8
    .param p1, "position"    # I

    .prologue
    .line 2398
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;

    if-nez v3, :cond_f

    .line 2399
    const-string v3, "ResolverActivity"

    const-string v4, "mGridRemoteShareRecentHistory.onItemClick : mRemoteShareRecentHistoryListAdapter is null, finish "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2400
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 2425
    :goto_e
    return-void

    .line 2403
    :cond_f
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 2404
    .local v2, "targetIntent":Landroid/content/Intent;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.android.coreapps.rshare.action.REQUESTSEND"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2405
    .local v1, "recentHistoryIntent":Landroid/content/Intent;
    const-string v3, "com.samsung.android.coreapps"

    const-string v4, "com.samsung.android.coreapps.rshare.ui.RelayActivity"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2406
    const-string v3, "android.intent.extra.INTENT"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2408
    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->getDeviceInfo(I)Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;

    move-result-object v0

    .line 2409
    .local v0, "deviceInfo":Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;
    iget-boolean v3, p0, Lcom/android/internal/app/ResolverActivity;->mIsSupportNewFeature:Z

    if-eqz v3, :cond_3d

    if-eqz v0, :cond_3d

    .line 2410
    const-string v3, "ResolverActivity"

    const-string v4, "DeviceInfo exist"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2412
    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverActivity;->deviceItemClick(Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;)V

    goto :goto_e

    .line 2414
    :cond_3d
    const-string v3, "ResolverActivity"

    const-string v4, "DeviceInfo does not exist"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2416
    if-nez p1, :cond_4d

    .line 2417
    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->startActivity(Landroid/content/Intent;)V

    .line 2418
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    goto :goto_e

    .line 2420
    :cond_4d
    const-string/jumbo v3, "recipientdataids"

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->request_dataids:[Ljava/lang/String;

    add-int/lit8 v5, p1, -0x1

    aget-object v4, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2421
    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->startActivity(Landroid/content/Intent;)V

    .line 2422
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    goto :goto_e
.end method

.method static synthetic access$000(Lcom/android/internal/app/ResolverActivity;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mDeviceList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;
    .param p1, "x1"    # Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->checkNearbyDeviceWithRecents(Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/app/ResolverActivity;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 132
    iget v0, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsListCount:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/internal/app/ResolverActivity;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;
    .param p1, "x1"    # I

    .prologue
    .line 132
    iput p1, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsListCount:I

    return p1
.end method

.method static synthetic access$1008(Lcom/android/internal/app/ResolverActivity;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 132
    iget v0, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsListCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsListCount:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/internal/app/ResolverActivity;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsListThumb:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/app/ResolverActivity;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsListName:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/app/ResolverActivity;)[Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->request_dataids:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/app/ResolverActivity;)[J
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsId:[J

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/app/ResolverActivity;)[I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsItemContactsCountInGroup:[I

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/app/ResolverActivity;)[Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsItemPhoneNum:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/HorizontalListView;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShareRecentHistory:Landroid/widget/HorizontalListView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/internal/app/ResolverActivity;)Landroid/content/Intent;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/internal/app/ResolverActivity;Landroid/content/Intent;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->addRemoteShareRecentHistoryGridView(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;
    .param p1, "x1"    # Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->addDeviceItemToList(Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;)V

    return-void
.end method

.method static synthetic access$2002(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 132
    sput-boolean p0, Lcom/android/internal/app/ResolverActivity;->mIsEasySingUpIsCertificated:Z

    return p0
.end method

.method static synthetic access$2100(Lcom/android/internal/app/ResolverActivity;)Landroid/content/BroadcastReceiver;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mEasySignUpReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/internal/app/ResolverActivity;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->sendRequesRecentContactsHistoryList()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/internal/app/ResolverActivity;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mShowExtended:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/android/internal/app/ResolverActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 132
    iput-boolean p1, p0, Lcom/android/internal/app/ResolverActivity;->mShowExtended:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/internal/app/ResolverActivity;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mApplyRemoteShareResolver:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/android/internal/app/ResolverActivity;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsDeviceDefault:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/android/internal/app/ResolverActivity;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 132
    iget v0, p0, Lcom/android/internal/app/ResolverActivity;->mIconSize:I

    return v0
.end method

.method static synthetic access$2902(Lcom/android/internal/app/ResolverActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 132
    iput-boolean p1, p0, Lcom/android/internal/app/ResolverActivity;->mItemLongClicked:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/internal/app/ResolverActivity;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mStats:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/app/ResolverActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->initRemoteShareRecentHistoryList()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/app/ResolverActivity;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;
    .param p1, "x1"    # I

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->setVisibilityGridRemoteShareRecentHistoryDefault(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/app/ResolverActivity;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;
    .param p1, "x1"    # I

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->setVisibilityGridRemoteShareRecentHistory(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/app/ResolverActivity;)Lcom/samsung/android/sconnect/extern/QuickConnectConnector$IDeviceStatusListener;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mDeviceListener:Lcom/samsung/android/sconnect/extern/QuickConnectConnector$IDeviceStatusListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/app/ResolverActivity;)Lcom/samsung/android/sconnect/extern/QuickConnectConnector;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mConnector:Lcom/samsung/android/sconnect/extern/QuickConnectConnector;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/app/ResolverActivity;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mListupCompleted:Z

    return v0
.end method

.method private addApplicationGridView(Landroid/content/Intent;)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1694
    const v1, 0x102049a

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1696
    .local v0, "text":Landroid/widget/TextView;
    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverActivity;->setSubtitleBackgroundNoSpace(Landroid/widget/TextView;)V

    .line 1697
    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverActivity;->setSubtitleColor(Landroid/widget/TextView;)V

    .line 1699
    const v1, 0x102049b

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ExpandableHeightGridView;

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mGridView:Landroid/widget/GridView;

    .line 1700
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mGridView:Landroid/widget/GridView;

    check-cast v1, Landroid/widget/ExpandableHeightGridView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableHeightGridView;->setExpanded(Z)V

    .line 1701
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mGridView:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1702
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1703
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mGridView:Landroid/widget/GridView;

    new-instance v2, Lcom/android/internal/app/ResolverActivity$ItemLongClickListener;

    invoke-direct {v2, p0}, Lcom/android/internal/app/ResolverActivity$ItemLongClickListener;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 1705
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->resizeGrid()V

    .line 1706
    return-void
.end method

.method private addDeviceItemToList(Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;)V
    .registers 8
    .param p1, "deviceInfo"    # Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;

    .prologue
    .line 2627
    new-instance v0, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;

    iget-object v2, p1, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;->deviceName:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;)V

    .line 2628
    .local v0, "DeviceItem":Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;

    # getter for: Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;->mRemoteShareRecentHistoryList:Ljava/util/List;
    invoke-static {v1}, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;->access$3200(Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryIndex:I

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2629
    iget v1, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryIndex:I

    .line 2630
    return-void
.end method

.method private addRemoteShareGridView(Landroid/content/Intent;)V
    .registers 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1750
    const v0, 0x1020494

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 1751
    .local v7, "titleText":Landroid/widget/TextView;
    invoke-direct {p0, v7}, Lcom/android/internal/app/ResolverActivity;->setSubtitleBackground(Landroid/widget/TextView;)V

    .line 1752
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10407c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 1753
    .local v6, "cText":Ljava/lang/CharSequence;
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1755
    invoke-direct {p0, v7}, Lcom/android/internal/app/ResolverActivity;->setSubtitleColor(Landroid/widget/TextView;)V

    .line 1757
    new-instance v0, Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;Landroid/content/Intent;[Landroid/content/Intent;I)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;

    .line 1759
    const v0, 0x1020495

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableHeightGridView;

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShare:Landroid/widget/ExpandableHeightGridView;

    .line 1760
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShare:Landroid/widget/ExpandableHeightGridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableHeightGridView;->setExpanded(Z)V

    .line 1761
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShare:Landroid/widget/ExpandableHeightGridView;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableHeightGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1763
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShare:Landroid/widget/ExpandableHeightGridView;

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableHeightGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1764
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShare:Landroid/widget/ExpandableHeightGridView;

    iget v1, p0, Lcom/android/internal/app/ResolverActivity;->mMaxColumns:I

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableHeightGridView;->setNumColumns(I)V

    .line 1766
    return-void
.end method

.method private addRemoteShareRecentHistoryDefaultGridView(Landroid/content/Intent;)V
    .registers 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1770
    const v0, 0x1020496

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 1771
    .local v7, "titleText":Landroid/widget/TextView;
    invoke-direct {p0, v7}, Lcom/android/internal/app/ResolverActivity;->setSubtitleBackground(Landroid/widget/TextView;)V

    .line 1772
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10407c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 1773
    .local v6, "cText":Ljava/lang/CharSequence;
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1774
    invoke-direct {p0, v7}, Lcom/android/internal/app/ResolverActivity;->setSubtitleColor(Landroid/widget/TextView;)V

    .line 1776
    new-instance v0, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;Landroid/content/Intent;[Landroid/content/Intent;I)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryDefaultListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;

    .line 1778
    const v0, 0x1020497

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableHeightGridView;

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShareRecentHistoryDefault:Landroid/widget/ExpandableHeightGridView;

    .line 1779
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShareRecentHistoryDefault:Landroid/widget/ExpandableHeightGridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableHeightGridView;->setExpanded(Z)V

    .line 1780
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShareRecentHistoryDefault:Landroid/widget/ExpandableHeightGridView;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryDefaultListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableHeightGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1782
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShareRecentHistoryDefault:Landroid/widget/ExpandableHeightGridView;

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableHeightGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1783
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShareRecentHistoryDefault:Landroid/widget/ExpandableHeightGridView;

    iget v1, p0, Lcom/android/internal/app/ResolverActivity;->mMaxColumns:I

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableHeightGridView;->setNumColumns(I)V

    .line 1785
    return-void
.end method

.method private addRemoteShareRecentHistoryGridView(Landroid/content/Intent;)V
    .registers 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1789
    const v0, 0x1020498

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 1790
    .local v7, "titleText":Landroid/widget/TextView;
    invoke-direct {p0, v7}, Lcom/android/internal/app/ResolverActivity;->setSubtitleBackground(Landroid/widget/TextView;)V

    .line 1791
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10407c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 1792
    .local v6, "cText":Ljava/lang/CharSequence;
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1793
    invoke-direct {p0, v7}, Lcom/android/internal/app/ResolverActivity;->setSubtitleColor(Landroid/widget/TextView;)V

    .line 1795
    new-instance v0, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;Landroid/content/Intent;[Landroid/content/Intent;I)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;

    .line 1797
    const v0, 0x1020499

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalListView;

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShareRecentHistory:Landroid/widget/HorizontalListView;

    .line 1798
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShareRecentHistory:Landroid/widget/HorizontalListView;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1800
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShareRecentHistory:Landroid/widget/HorizontalListView;

    invoke-virtual {v0, p0}, Landroid/widget/HorizontalListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1801
    return-void
.end method

.method private applyRemoteShareResolver(Landroid/content/Intent;)V
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 1917
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    .line 1918
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/internal/app/ResolverActivity;->mMaxColumns:I

    .line 1919
    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->checkThemeType(Landroid/content/Intent;)V

    .line 1921
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x1090135

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 1922
    .local v0, "layout":Landroid/widget/ScrollView;
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->setContentView(Landroid/view/View;)V

    .line 1928
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mGridView:Landroid/widget/GridView;

    if-nez v1, :cond_27

    .line 1929
    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->addApplicationGridView(Landroid/content/Intent;)V

    .line 1931
    :cond_27
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShare:Landroid/widget/ExpandableHeightGridView;

    if-nez v1, :cond_2e

    .line 1932
    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->addRemoteShareGridView(Landroid/content/Intent;)V

    .line 1934
    :cond_2e
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->isEasySingUpIsCertificated()Z

    move-result v1

    if-nez v1, :cond_66

    .line 1935
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShareRecentHistoryDefault:Landroid/widget/ExpandableHeightGridView;

    if-nez v1, :cond_3b

    .line 1936
    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->addRemoteShareRecentHistoryDefaultGridView(Landroid/content/Intent;)V

    .line 1938
    :cond_3b
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->initRemoteShareRecentHistoryDefaultList()V

    .line 1939
    invoke-direct {p0, v5}, Lcom/android/internal/app/ResolverActivity;->setVisibilityGridRemoteShareRecentHistoryDefault(I)V

    .line 1940
    invoke-direct {p0, v4}, Lcom/android/internal/app/ResolverActivity;->setVisibilityGridRemoteShareRecentHistory(I)V

    .line 1951
    :goto_44
    invoke-direct {p0, v4}, Lcom/android/internal/app/ResolverActivity;->setVisibilityGridRemoteShare(I)V

    .line 1954
    const v1, 0x102049a

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1956
    const v1, 0x1020496

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1958
    const v1, 0x1020498

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1960
    return-void

    .line 1942
    :cond_66
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShareRecentHistory:Landroid/widget/HorizontalListView;

    if-nez v1, :cond_6d

    .line 1943
    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->addRemoteShareRecentHistoryGridView(Landroid/content/Intent;)V

    .line 1946
    :cond_6d
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x7d0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_44
.end method

.method private checkNearbyDeviceWithRecents(Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;)Z
    .registers 11
    .param p1, "deviceInfo"    # Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;

    .prologue
    const/4 v6, 0x0

    .line 2633
    if-eqz p1, :cond_7

    iget-object v7, p1, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;->number:Ljava/lang/CharSequence;

    if-nez v7, :cond_8

    .line 2654
    :cond_7
    :goto_7
    return v6

    .line 2637
    :cond_8
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    iget v7, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsListCount:I

    if-ge v1, v7, :cond_7

    .line 2638
    iget-object v7, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsItemPhoneNum:[Ljava/lang/String;

    aget-object v4, v7, v1

    .line 2639
    .local v4, "recentPhoneNum":Ljava/lang/String;
    if-eqz v4, :cond_5c

    .line 2640
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 2641
    .local v5, "value":Ljava/lang/String;
    const-string v7, ";"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2643
    .local v3, "phoneNumbers":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_24
    array-length v7, v3

    if-ge v2, v7, :cond_5c

    .line 2644
    iget-object v7, p1, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;->number:Ljava/lang/CharSequence;

    aget-object v8, v3, v2

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_59

    .line 2645
    const-string v6, "ResolverActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Matched phoneNumber is  = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;->number:Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2646
    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v6, v7}, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;

    .line 2647
    .local v0, "data":Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;
    iput-object p1, v0, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;->deviceInfo:Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;

    .line 2648
    const/4 v6, 0x1

    goto :goto_7

    .line 2643
    .end local v0    # "data":Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;
    :cond_59
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 2637
    .end local v2    # "j":I
    .end local v3    # "phoneNumbers":[Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_5c
    add-int/lit8 v1, v1, 0x1

    goto :goto_9
.end method

.method private checkProductSupport()V
    .registers 4

    .prologue
    .line 2658
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    if-eqz v0, :cond_32

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string/jumbo v1, "zero"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 2660
    const-string v0, "ResolverActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Build.PRODUCT = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Zero concept enable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2661
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsSupportNewFeature:Z

    .line 2663
    :cond_32
    return-void
.end method

.method private checkThemeType(Landroid/content/Intent;)V
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1890
    const/4 v1, 0x0

    .line 1892
    .local v1, "theme":I
    :try_start_3
    const-string/jumbo v2, "theme"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_a} :catch_f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_a} :catch_18

    move-result v1

    .line 1899
    :goto_b
    packed-switch v1, :pswitch_data_3c

    .line 1914
    :goto_e
    return-void

    .line 1893
    :catch_f
    move-exception v0

    .line 1894
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ResolverActivity"

    const-string v3, "checkedItemPosition is invalid position"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 1895
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_18
    move-exception v0

    .line 1896
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    const-string v2, "ResolverActivity"

    const-string v3, " intent.getIntExtra(THEME_CHOOSER, TYPE_NONE), OutOfMemoryError"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 1901
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :pswitch_21
    const-string v2, "black"

    const-string/jumbo v3, "ro.build.scafe.cream"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 1902
    iput-boolean v4, p0, Lcom/android/internal/app/ResolverActivity;->mIsLightTheme:Z

    goto :goto_e

    .line 1904
    :cond_33
    iput-boolean v5, p0, Lcom/android/internal/app/ResolverActivity;->mIsLightTheme:Z

    goto :goto_e

    .line 1908
    :pswitch_36
    iput-boolean v4, p0, Lcom/android/internal/app/ResolverActivity;->mIsLightTheme:Z

    goto :goto_e

    .line 1911
    :pswitch_39
    iput-boolean v5, p0, Lcom/android/internal/app/ResolverActivity;->mIsLightTheme:Z

    goto :goto_e

    .line 1899
    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_21
        :pswitch_36
        :pswitch_39
    .end packed-switch
.end method

.method private clearRemoteShareRecentHistoryList(Z)V
    .registers 3
    .param p1, "bClearAll"    # Z

    .prologue
    .line 2612
    if-eqz p1, :cond_1a

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;

    # getter for: Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;->mRemoteShareRecentHistoryList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;->access$3200(Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 2613
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;

    # getter for: Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;->mRemoteShareRecentHistoryList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;->access$3200(Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2614
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mListupCompleted:Z

    .line 2616
    :cond_1a
    return-void
.end method

.method private deviceItemClick(Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;)V
    .registers 12
    .param p1, "deviceInfo"    # Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;

    .prologue
    .line 2740
    iget-object v7, p0, Lcom/android/internal/app/ResolverActivity;->mOrigIntent:Landroid/content/Intent;

    if-eqz v7, :cond_e

    iget-object v7, p0, Lcom/android/internal/app/ResolverActivity;->mOrigIntent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_e

    if-nez p1, :cond_19

    .line 2741
    :cond_e
    const-string v7, "ResolverActivity"

    const-string v8, "deviceItemClick: info is null, finish "

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2742
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 2802
    :goto_18
    return-void

    .line 2746
    :cond_19
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mOrigIntent:Landroid/content/Intent;

    .line 2748
    .local v1, "intent":Landroid/content/Intent;
    const-string v7, "ResolverActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "deviceItemClick: deviceName= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;->deviceName:Ljava/lang/CharSequence;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " deviceId= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;->deviceId:Ljava/lang/CharSequence;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " netType= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;->netType:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mime= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2751
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c8

    .line 2752
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2753
    .local v3, "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2754
    .local v6, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const-string v7, "android.intent.extra.STREAM"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 2756
    if-eqz v6, :cond_ad

    .line 2757
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_7d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 2758
    .local v5, "uri":Landroid/net/Uri;
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2759
    const-string v7, "ResolverActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "deviceItemClick: uri = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7d

    .line 2762
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_ad
    const-string v7, "ResolverActivity"

    const-string v8, "deviceItemClick: uris = null"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2765
    :cond_b4
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_c3

    .line 2766
    iget-object v8, p0, Lcom/android/internal/app/ResolverActivity;->mConnector:Lcom/samsung/android/sconnect/extern/QuickConnectConnector;

    iget-object v7, p1, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;->deviceId:Ljava/lang/CharSequence;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7, v6}, Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->sendFiles(Ljava/lang/String;Ljava/util/ArrayList;)Z

    .line 2801
    .end local v3    # "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_c3
    :goto_c3
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    goto/16 :goto_18

    .line 2768
    :cond_c8
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.intent.action.SEND"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_190

    .line 2769
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2770
    .restart local v3    # "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2771
    .restart local v6    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const-string v7, "android.intent.extra.STREAM"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 2773
    .local v2, "stream":Landroid/net/Uri;
    if-eqz v2, :cond_11f

    .line 2774
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2776
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_ef
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_17f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 2777
    .restart local v5    # "uri":Landroid/net/Uri;
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2778
    const-string v7, "ResolverActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "deviceItemClick:stream = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ef

    .line 2781
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_11f
    const-string v7, "android.intent.extra.TEXT"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    .line 2782
    .local v4, "text":Ljava/lang/CharSequence;
    if-eqz v4, :cond_178

    .line 2783
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "text://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2785
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_148
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_17f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 2786
    .restart local v5    # "uri":Landroid/net/Uri;
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2787
    const-string v7, "ResolverActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "deviceItemClick:text = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_148

    .line 2790
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_178
    const-string v7, "ResolverActivity"

    const-string v8, "deviceItemClick: extra empty!!"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2794
    .end local v4    # "text":Ljava/lang/CharSequence;
    :cond_17f
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_c3

    .line 2795
    iget-object v8, p0, Lcom/android/internal/app/ResolverActivity;->mConnector:Lcom/samsung/android/sconnect/extern/QuickConnectConnector;

    iget-object v7, p1, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;->deviceId:Ljava/lang/CharSequence;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7, v6}, Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->sendFiles(Ljava/lang/String;Ljava/util/ArrayList;)Z

    goto/16 :goto_c3

    .line 2798
    .end local v2    # "stream":Landroid/net/Uri;
    .end local v3    # "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_190
    const-string v7, "ResolverActivity"

    const-string v8, "deviceItemClick: Action is wrong!!"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c3
.end method

.method private getDevType(I)I
    .registers 3
    .param p1, "deviceType"    # I

    .prologue
    .line 2730
    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    .line 2731
    const/4 v0, 0x1

    .line 2733
    :goto_4
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_4
.end method

.method private getDeviceInfo(I)Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 2622
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;

    invoke-virtual {v1, p1}, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;

    .line 2623
    .local v0, "data":Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;
    iget-object v1, v0, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;->deviceInfo:Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;

    return-object v1
.end method

.method private getNetType(I)I
    .registers 3
    .param p1, "netType"    # I

    .prologue
    .line 2717
    and-int/lit8 v0, p1, 0x4

    if-lez v0, :cond_6

    .line 2718
    const/4 v0, 0x1

    .line 2720
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private hasManagedProfile()Z
    .registers 8

    .prologue
    const/4 v5, 0x0

    .line 982
    const-string/jumbo v6, "user"

    invoke-virtual {p0, v6}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 983
    .local v4, "userManager":Landroid/os/UserManager;
    if-nez v4, :cond_d

    .line 997
    :cond_c
    :goto_c
    return v5

    .line 988
    :cond_d
    :try_start_d
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getUserId()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    .line 989
    .local v2, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 990
    .local v3, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v3, :cond_19

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v6

    if-eqz v6, :cond_19

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z
    :try_end_30
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_30} :catch_35

    move-result v6

    if-nez v6, :cond_19

    .line 991
    const/4 v5, 0x1

    goto :goto_c

    .line 994
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v3    # "userInfo":Landroid/content/pm/UserInfo;
    :catch_35
    move-exception v0

    .line 995
    .local v0, "e":Ljava/lang/SecurityException;
    goto :goto_c
.end method

.method private initRemoteShareRecentHistoryDefaultList()V
    .registers 7

    .prologue
    .line 2271
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryDefaultListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;

    if-nez v4, :cond_c

    .line 2272
    const-string v4, "ResolverActivity"

    const-string v5, "initRemoteShareRecentHistoryDefaultList : mRemoteShareRecentHistoryDefaultListAdapter is null "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2289
    :goto_b
    return-void

    .line 2275
    :cond_c
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryDefaultListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;

    if-eqz v4, :cond_21

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryDefaultListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;

    # getter for: Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;->mRemoteShareRecentHistoryDefaultList:Ljava/util/List;
    invoke-static {v4}, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;->access$3100(Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_21

    .line 2276
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryDefaultListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;

    # getter for: Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;->mRemoteShareRecentHistoryDefaultList:Ljava/util/List;
    invoke-static {v4}, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;->access$3100(Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 2278
    :cond_21
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryDefaultIndex:I

    .line 2279
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShareRecentHistoryDefault:Landroid/widget/ExpandableHeightGridView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/ExpandableHeightGridView;->setNumColumns(I)V

    .line 2281
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10407ca

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2282
    .local v1, "recentHistoryDefaultDisplayLabel":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x108053f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2283
    .local v0, "recentHistoryDefaultDisplayIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10407cb

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 2284
    .local v2, "recentHistoryDefaultIconDisplayLabel":Ljava/lang/CharSequence;
    new-instance v3, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListInfo;

    invoke-direct {v3, p0, v1, v0, v2}, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 2285
    .local v3, "recentHistoryDefaultItem":Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListInfo;
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryDefaultListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;

    # getter for: Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;->mRemoteShareRecentHistoryDefaultList:Ljava/util/List;
    invoke-static {v4}, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;->access$3100(Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;)Ljava/util/List;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryDefaultIndex:I

    invoke-interface {v4, v5, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2286
    iget v4, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryDefaultIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryDefaultIndex:I

    .line 2288
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryDefaultListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;

    invoke-virtual {v4}, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;->notifyDataSetChanged()V

    goto :goto_b
.end method

.method private initRemoteShareRecentHistoryList()V
    .registers 23

    .prologue
    .line 2537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;

    move-object/from16 v18, v0

    if-nez v18, :cond_10

    .line 2538
    const-string v18, "ResolverActivity"

    const-string v19, "initRemoteShareRecentHistoryList : mRemoteShareRecentHistoryListAdapter is null "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2610
    :goto_f
    return-void

    .line 2541
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;->mRemoteShareRecentHistoryList:Ljava/util/List;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;->access$3200(Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;)Ljava/util/List;

    move-result-object v18

    if-eqz v18, :cond_2d

    .line 2542
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/app/ResolverActivity;->clearRemoteShareRecentHistoryList(Z)V

    .line 2544
    :cond_2d
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryIndex:I

    .line 2546
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsListCount:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_1df

    .line 2547
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x10407cb

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    .line 2548
    .local v15, "remoteShareDisplayLabel":Ljava/lang/CharSequence;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x108053f

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 2549
    .local v14, "remoteShareDisplayIcon":Landroid/graphics/drawable/Drawable;
    new-instance v16, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v15, v14, v2}, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 2550
    .local v16, "remoteShareItem":Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;->mRemoteShareRecentHistoryList:Ljava/util/List;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;->access$3200(Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;)Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryIndex:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2551
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryIndex:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryIndex:I

    .line 2553
    const/16 v17, 0x0

    .local v17, "tempContactsIndex":I
    :goto_8f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsListCount:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_22d

    const/16 v18, 0x5

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_22d

    .line 2554
    const/4 v11, 0x0

    .line 2555
    .local v11, "recentHistoryDisplayLabel":Ljava/lang/CharSequence;
    const/4 v12, 0x0

    .line 2558
    .local v12, "recentHistoryDisplayLabel2":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsItemContactsCountInGroup:[I

    move-object/from16 v18, v0

    aget v18, v18, v17

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_177

    .line 2559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsListName:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "recentHistoryDisplayLabel":Ljava/lang/CharSequence;
    check-cast v11, Ljava/lang/CharSequence;

    .line 2560
    .restart local v11    # "recentHistoryDisplayLabel":Ljava/lang/CharSequence;
    const v18, 0x10407cc

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2561
    .local v8, "groupNameOrg":Ljava/lang/String;
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsItemContactsCountInGroup:[I

    move-object/from16 v20, v0

    aget v20, v20, v17

    add-int/lit8 v20, v20, -0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-static {v8, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 2562
    .local v7, "groupName":Ljava/lang/String;
    move-object v12, v7

    .line 2569
    .end local v7    # "groupName":Ljava/lang/String;
    .end local v8    # "groupNameOrg":Ljava/lang/String;
    :goto_f1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsListThumb:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    if-nez v18, :cond_1b0

    .line 2570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsItemContactsCountInGroup:[I

    move-object/from16 v18, v0

    aget v18, v18, v17

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_189

    .line 2571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsListThumb:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [B

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsId:[J

    move-object/from16 v19, v0

    aget-wide v20, v19, v17

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    move/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/app/ResolverActivity;->makeContactsThumbnailImage([BJZ)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 2580
    .local v10, "recentHistoryDisplayIcon":Landroid/graphics/drawable/Drawable;
    :goto_137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsItemContactsCountInGroup:[I

    move-object/from16 v18, v0

    aget v18, v18, v17

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_1d2

    .line 2581
    new-instance v13, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v11, v10, v12}, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 2585
    .local v13, "recentHistoryItem":Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;
    :goto_14e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;->mRemoteShareRecentHistoryList:Ljava/util/List;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;->access$3200(Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;)Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryIndex:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v0, v1, v13}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2586
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryIndex:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryIndex:I

    .line 2553
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_8f

    .line 2565
    .end local v10    # "recentHistoryDisplayIcon":Landroid/graphics/drawable/Drawable;
    .end local v13    # "recentHistoryItem":Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;
    :cond_177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsListName:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "recentHistoryDisplayLabel":Ljava/lang/CharSequence;
    check-cast v11, Ljava/lang/CharSequence;

    .restart local v11    # "recentHistoryDisplayLabel":Ljava/lang/CharSequence;
    goto/16 :goto_f1

    .line 2573
    :cond_189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsListThumb:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [B

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsId:[J

    move-object/from16 v19, v0

    aget-wide v20, v19, v17

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    move/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/app/ResolverActivity;->makeContactsThumbnailImage([BJZ)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .restart local v10    # "recentHistoryDisplayIcon":Landroid/graphics/drawable/Drawable;
    goto :goto_137

    .line 2576
    .end local v10    # "recentHistoryDisplayIcon":Landroid/graphics/drawable/Drawable;
    :cond_1b0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsListThumb:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [B

    const-wide/16 v20, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    move/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/app/ResolverActivity;->makeContactsThumbnailImage([BJZ)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .restart local v10    # "recentHistoryDisplayIcon":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_137

    .line 2583
    :cond_1d2
    new-instance v13, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v13, v0, v11, v10, v1}, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .restart local v13    # "recentHistoryItem":Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;
    goto/16 :goto_14e

    .line 2589
    .end local v10    # "recentHistoryDisplayIcon":Landroid/graphics/drawable/Drawable;
    .end local v11    # "recentHistoryDisplayLabel":Ljava/lang/CharSequence;
    .end local v12    # "recentHistoryDisplayLabel2":Ljava/lang/CharSequence;
    .end local v13    # "recentHistoryItem":Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;
    .end local v14    # "remoteShareDisplayIcon":Landroid/graphics/drawable/Drawable;
    .end local v15    # "remoteShareDisplayLabel":Ljava/lang/CharSequence;
    .end local v16    # "remoteShareItem":Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;
    .end local v17    # "tempContactsIndex":I
    :cond_1df
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsListCount:I

    move/from16 v18, v0

    if-nez v18, :cond_22d

    .line 2590
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x10407cb

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    .line 2591
    .restart local v11    # "recentHistoryDisplayLabel":Ljava/lang/CharSequence;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x108053f

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 2592
    .restart local v10    # "recentHistoryDisplayIcon":Landroid/graphics/drawable/Drawable;
    new-instance v13, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v13, v0, v11, v10, v1}, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 2593
    .restart local v13    # "recentHistoryItem":Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;->mRemoteShareRecentHistoryList:Ljava/util/List;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;->access$3200(Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;)Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryIndex:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v0, v1, v13}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2594
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryIndex:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryIndex:I

    .line 2597
    .end local v10    # "recentHistoryDisplayIcon":Landroid/graphics/drawable/Drawable;
    .end local v11    # "recentHistoryDisplayLabel":Ljava/lang/CharSequence;
    .end local v13    # "recentHistoryItem":Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;
    :cond_22d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/ResolverActivity;->mIsSupportNewFeature:Z

    move/from16 v18, v0

    if-eqz v18, :cond_293

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/ResolverActivity;->mApplyNearByDevice:Z

    move/from16 v18, v0

    if-eqz v18, :cond_293

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mDeviceList:Ljava/util/List;

    move-object/from16 v18, v0

    if-eqz v18, :cond_293

    .line 2598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mDeviceList:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_24f
    :goto_24f
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_293

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;

    .line 2599
    .local v6, "dr":Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;
    const-string v18, "ResolverActivity"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "initRemoteShareRecentHistoryList: deviceName="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v6, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;->deviceName:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " displayIcon="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v6, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2601
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/internal/app/ResolverActivity;->checkNearbyDeviceWithRecents(Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;)Z

    move-result v18

    if-nez v18, :cond_24f

    .line 2604
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/internal/app/ResolverActivity;->addDeviceItemToList(Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;)V

    goto :goto_24f

    .line 2608
    .end local v6    # "dr":Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;
    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;->notifyDataSetChanged()V

    .line 2609
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/app/ResolverActivity;->mListupCompleted:Z

    goto/16 :goto_f
.end method

.method private isEasySingUpIsCertificated()Z
    .registers 2

    .prologue
    .line 1963
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    .line 1964
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsEasySingUpIsCertificatedChecked:Z

    if-nez v0, :cond_15

    .line 1965
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/coreapps/sdk/easysignup/EasySignUpManager;->isAuth(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/app/ResolverActivity;->mIsEasySingUpIsCertificated:Z

    .line 1966
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsEasySingUpIsCertificatedChecked:Z

    .line 1968
    :cond_15
    sget-boolean v0, Lcom/android/internal/app/ResolverActivity;->mIsEasySingUpIsCertificated:Z

    return v0
.end method

.method private isEmergencyOrUPSModeEnabled()Z
    .registers 10

    .prologue
    const/16 v7, 0x200

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1670
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    .line 1671
    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    if-nez v6, :cond_16

    .line 1672
    const-string v4, "ResolverActivity"

    const-string v6, "isEmergencyOrUPSModeEnabled : mContext is null"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1688
    :cond_15
    :goto_15
    return v5

    .line 1675
    :cond_16
    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v0

    .line 1676
    .local v0, "em":Lcom/sec/android/emergencymode/EmergencyManager;
    const/4 v1, 0x0

    .line 1677
    .local v1, "isEmergencyMode":Z
    const/4 v3, 0x0

    .line 1678
    .local v3, "isUltraPowerSavingMode":Z
    const/4 v2, 0x0

    .line 1679
    .local v2, "isEmergencyOrUPSM":Z
    if-eqz v0, :cond_6b

    .line 1680
    invoke-virtual {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v6

    if-eqz v6, :cond_72

    invoke-virtual {v0, v7}, Lcom/sec/android/emergencymode/EmergencyManager;->checkModeType(I)Z

    move-result v6

    if-nez v6, :cond_72

    move v1, v4

    .line 1681
    :goto_2e
    invoke-virtual {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v6

    if-eqz v6, :cond_74

    invoke-virtual {v0, v7}, Lcom/sec/android/emergencymode/EmergencyManager;->checkModeType(I)Z

    move-result v6

    if-eqz v6, :cond_74

    move v3, v4

    .line 1683
    :goto_3b
    invoke-virtual {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v2

    .line 1684
    const-string v6, "ResolverActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isEmergencyMode :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isUltraPowerSavingMode:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isEmergencyOrUPSM:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1687
    :cond_6b
    const/4 v0, 0x0

    .line 1688
    if-nez v1, :cond_70

    if-eqz v3, :cond_15

    :cond_70
    move v5, v4

    goto :goto_15

    :cond_72
    move v1, v5

    .line 1680
    goto :goto_2e

    :cond_74
    move v3, v5

    .line 1681
    goto :goto_3b
.end method

.method private isIntentTypeSupportRemoteShare(Landroid/content/Intent;)Z
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1829
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1830
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string v1, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    :cond_14
    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->isIntentUriDataIValidCheck(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1832
    const/4 v1, 0x1

    .line 1834
    :goto_1b
    return v1

    :cond_1c
    const/4 v1, 0x0

    goto :goto_1b
.end method

.method private isIntentUriDataIValidCheck(Landroid/content/Intent;)Z
    .registers 12
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 1839
    const-string v8, "ResolverActivity"

    const-string v9, "isIntentUriDataNotNullCheck"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1840
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1841
    .local v0, "action":Ljava/lang/String;
    const-string v8, "android.intent.action.SEND"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_44

    .line 1842
    const/4 v5, 0x0

    .line 1843
    .local v5, "uri":Landroid/net/Uri;
    const/4 v1, 0x0

    .line 1844
    .local v1, "extraBundle":Landroid/os/Bundle;
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 1845
    if-eqz v1, :cond_25

    .line 1846
    const-string v8, "android.intent.extra.STREAM"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    .end local v5    # "uri":Landroid/net/Uri;
    check-cast v5, Landroid/net/Uri;

    .line 1849
    .restart local v5    # "uri":Landroid/net/Uri;
    :cond_25
    if-nez v5, :cond_2f

    .line 1850
    const-string v7, "ResolverActivity"

    const-string v8, "isIntentUriDataNotNullCheck: uri == null "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1886
    .end local v1    # "extraBundle":Landroid/os/Bundle;
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_2e
    :goto_2e
    return v3

    .line 1852
    .restart local v1    # "extraBundle":Landroid/os/Bundle;
    .restart local v5    # "uri":Landroid/net/Uri;
    :cond_2f
    const-string v8, "com.android.contacts"

    invoke-virtual {v5}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_da

    .line 1853
    const-string v8, "ResolverActivity"

    const-string v9, "isIntentUriDataNotNullCheck: com.android.contacts.equals(uri.getEncodedAuthority()) == TRUE "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    .line 1854
    goto :goto_2e

    .line 1857
    .end local v1    # "extraBundle":Landroid/os/Bundle;
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_44
    const-string v8, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_da

    .line 1858
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1859
    .local v6, "uriArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const-string v7, "android.intent.extra.STREAM"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 1860
    if-nez v6, :cond_61

    .line 1861
    const-string v7, "ResolverActivity"

    const-string v8, "intent.getParcelableArrayListExtra(Intent.EXTRA_STREAM) returns NULL "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    .line 1864
    :cond_61
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1865
    .local v4, "numOfUri":I
    const/4 v3, 0x0

    .line 1866
    .local v3, "isNotNullAtLeastOne":Z
    const-string v7, "ResolverActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isIntentUriDataNotNullCheck, uriArray.size : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1867
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7f
    if-ge v2, v4, :cond_2e

    .line 1868
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_be

    .line 1869
    const-string v8, "com.android.contacts"

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a2

    .line 1870
    const-string v7, "ResolverActivity"

    const-string v8, "isIntentUriDataNotNullCheck: com.android.contacts.equals(uriArray.get(i).getEncodedAuthority()) == TRUE "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1871
    const/4 v3, 0x1

    .line 1872
    goto :goto_2e

    .line 1874
    :cond_a2
    const-string v7, "ResolverActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "uriArray.get(n) != null , n is :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1875
    const/4 v3, 0x1

    .line 1876
    goto/16 :goto_2e

    .line 1879
    :cond_be
    const-string v7, "ResolverActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "uriArray.get(n) == null , n is :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1867
    add-int/lit8 v2, v2, 0x1

    goto :goto_7f

    .end local v2    # "i":I
    .end local v3    # "isNotNullAtLeastOne":Z
    .end local v4    # "numOfUri":I
    .end local v6    # "uriArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_da
    move v3, v7

    .line 1886
    goto/16 :goto_2e
.end method

.method private isKnoxModeEnabled()Z
    .registers 4

    .prologue
    .line 1664
    iget v1, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const/16 v2, 0x64

    if-lt v1, v2, :cond_c

    const/4 v0, 0x1

    .line 1665
    .local v0, "isKnoxMode":Z
    :goto_b
    return v0

    .line 1664
    .end local v0    # "isKnoxMode":Z
    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private isRemoteShareServiceDownloaded()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 1650
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    .line 1651
    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mIsRemoteShareServiceDownloadedChecked:Z

    if-nez v1, :cond_1a

    .line 1652
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/sdk/easysignup/EasySignUpManager;->getSupportedFeatures(Landroid/content/Context;I)I

    move-result v0

    .line 1653
    .local v0, "retVal":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1d

    .line 1654
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/internal/app/ResolverActivity;->mIsRemoteShareServiceDownloaded:Z

    .line 1658
    :goto_18
    iput-boolean v3, p0, Lcom/android/internal/app/ResolverActivity;->mIsRemoteShareServiceDownloadedChecked:Z

    .line 1660
    .end local v0    # "retVal":I
    :cond_1a
    sget-boolean v1, Lcom/android/internal/app/ResolverActivity;->mIsRemoteShareServiceDownloaded:Z

    return v1

    .line 1656
    .restart local v0    # "retVal":I
    :cond_1d
    sput-boolean v3, Lcom/android/internal/app/ResolverActivity;->mIsRemoteShareServiceDownloaded:Z

    goto :goto_18
.end method

.method private isSupportNearByDevice(Landroid/content/Intent;)Z
    .registers 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2666
    iget-boolean v5, p0, Lcom/android/internal/app/ResolverActivity;->mIsDeviceDefault:Z

    if-eqz v5, :cond_52

    iget-boolean v5, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    if-nez v5, :cond_52

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->isSupportSConnect()Z

    move-result v5

    if-eqz v5, :cond_52

    .line 2667
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 2668
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2669
    .local v2, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const-string v5, "android.intent.extra.STREAM"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2671
    if-eqz v2, :cond_52

    .line 2672
    iput-boolean v3, p0, Lcom/android/internal/app/ResolverActivity;->mApplyNearByDevice:Z

    .line 2692
    .end local v2    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :goto_2b
    return v3

    .line 2675
    :cond_2c
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.intent.action.SEND"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_52

    .line 2676
    const-string v5, "android.intent.extra.STREAM"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 2678
    .local v0, "stream":Landroid/net/Uri;
    if-eqz v0, :cond_45

    .line 2679
    iput-boolean v3, p0, Lcom/android/internal/app/ResolverActivity;->mApplyNearByDevice:Z

    goto :goto_2b

    .line 2682
    :cond_45
    const-string v5, "android.intent.extra.TEXT"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 2683
    .local v1, "text":Ljava/lang/CharSequence;
    if-eqz v1, :cond_52

    .line 2684
    iput-boolean v3, p0, Lcom/android/internal/app/ResolverActivity;->mApplyNearByDevice:Z

    goto :goto_2b

    .line 2691
    .end local v0    # "stream":Landroid/net/Uri;
    .end local v1    # "text":Ljava/lang/CharSequence;
    :cond_52
    iput-boolean v4, p0, Lcom/android/internal/app/ResolverActivity;->mApplyNearByDevice:Z

    move v3, v4

    .line 2692
    goto :goto_2b
.end method

.method private isSupportRemoteShare(Landroid/content/Intent;)Z
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1817
    iget-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mIsDeviceDefault:Z

    if-eqz v2, :cond_25

    iget-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    if-nez v2, :cond_25

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->isRemoteShareServiceDownloaded()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->isIntentTypeSupportRemoteShare(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->isKnoxModeEnabled()Z

    move-result v2

    if-nez v2, :cond_25

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->isEmergencyOrUPSModeEnabled()Z

    move-result v2

    if-nez v2, :cond_25

    .line 1820
    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mApplyRemoteShareResolver:Z

    .line 1824
    :goto_24
    return v0

    .line 1823
    :cond_25
    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mApplyRemoteShareResolver:Z

    move v0, v1

    .line 1824
    goto :goto_24
.end method

.method private isSupportSConnect()Z
    .registers 5

    .prologue
    .line 2697
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2698
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const-string v2, "com.samsung.android.sconnect"

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_d

    .line 2702
    const/4 v2, 0x1

    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :goto_c
    return v2

    .line 2699
    :catch_d
    move-exception v0

    .line 2700
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_c
.end method

.method private makeContactsThumbnailImage([BJZ)Landroid/graphics/drawable/Drawable;
    .registers 25
    .param p1, "contactsThumbnailByteArray"    # [B
    .param p2, "contactId"    # J
    .param p4, "isGroup"    # Z

    .prologue
    .line 2431
    if-eqz p1, :cond_7f

    .line 2432
    const/4 v10, 0x0

    .line 2433
    .local v10, "mask":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 2434
    .local v3, "bm":Landroid/graphics/Bitmap;
    const/4 v14, 0x0

    .line 2435
    .local v14, "photo":Landroid/graphics/Bitmap;
    const/4 v12, 0x0

    .line 2436
    .local v12, "orgThumb":Landroid/graphics/Bitmap;
    const/4 v8, 0x0

    .line 2438
    .local v8, "drawableIcon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x108053b

    invoke-static/range {v15 .. v16}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 2441
    const/4 v15, 0x0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v15, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 2443
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v12, v15, v0, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 2445
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    sget-object v17, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v15 .. v17}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 2447
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2448
    .local v4, "canvas":Landroid/graphics/Canvas;
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v14, v15, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2450
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    .line 2451
    .local v13, "paint":Landroid/graphics/Paint;
    new-instance v15, Landroid/graphics/PorterDuffXfermode;

    sget-object v16, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v15 .. v16}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v13, v15}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 2452
    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v10, v15, v0, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2453
    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 2455
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    .end local v8    # "drawableIcon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-direct {v8, v15, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .restart local v8    # "drawableIcon":Landroid/graphics/drawable/Drawable;
    move-object v9, v8

    .line 2529
    .end local v8    # "drawableIcon":Landroid/graphics/drawable/Drawable;
    .end local v12    # "orgThumb":Landroid/graphics/Bitmap;
    .local v9, "drawableIcon":Ljava/lang/Object;
    :goto_7e
    return-object v9

    .line 2457
    .end local v3    # "bm":Landroid/graphics/Bitmap;
    .end local v4    # "canvas":Landroid/graphics/Canvas;
    .end local v9    # "drawableIcon":Ljava/lang/Object;
    .end local v10    # "mask":Landroid/graphics/Bitmap;
    .end local v13    # "paint":Landroid/graphics/Paint;
    .end local v14    # "photo":Landroid/graphics/Bitmap;
    :cond_7f
    if-nez p4, :cond_15c

    .line 2458
    const-string v15, "ResolverActivity"

    const-string v16, "makeContactsThumbnailImage:  contactsThumbnailByteArray == null and isGroup==false, show default image"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2459
    const/4 v10, 0x0

    .line 2460
    .restart local v10    # "mask":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 2461
    .restart local v3    # "bm":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x1080542

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/BitmapDrawable;

    .line 2462
    .local v7, "defaultPhotoDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 2463
    .local v6, "defaultPhoto":Landroid/graphics/Bitmap;
    const/4 v8, 0x0

    .line 2464
    .restart local v8    # "drawableIcon":Landroid/graphics/drawable/Drawable;
    const/4 v14, 0x0

    .line 2465
    .restart local v14    # "photo":Landroid/graphics/Bitmap;
    const/4 v11, 0x5

    .line 2466
    .local v11, "numOfContactsThumbnailBgColor":I
    int-to-long v0, v11

    move-wide/from16 v16, v0

    rem-long v16, p2, v16

    const-wide/16 v18, 0x1

    add-long v16, v16, v18

    move-wide/from16 v0, v16

    long-to-int v5, v0

    .line 2467
    .local v5, "contactsThumbnailIndex":I
    const/4 v2, 0x0

    .line 2469
    .local v2, "bgColorOfContactsThumbnail":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x108053b

    invoke-static/range {v15 .. v16}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 2472
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v6, v15, v0, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 2474
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    sget-object v17, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v15 .. v17}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 2476
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2477
    .restart local v4    # "canvas":Landroid/graphics/Canvas;
    packed-switch v5, :pswitch_data_1e8

    .line 2494
    :goto_e6
    invoke-virtual {v4, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 2495
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v14, v15, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2497
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    .line 2498
    .restart local v13    # "paint":Landroid/graphics/Paint;
    new-instance v15, Landroid/graphics/PorterDuffXfermode;

    sget-object v16, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v15 .. v16}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v13, v15}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 2499
    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v10, v15, v0, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2500
    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 2502
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    .end local v8    # "drawableIcon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-direct {v8, v15, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .restart local v8    # "drawableIcon":Landroid/graphics/drawable/Drawable;
    move-object v9, v8

    .line 2503
    .restart local v9    # "drawableIcon":Ljava/lang/Object;
    goto/16 :goto_7e

    .line 2479
    .end local v9    # "drawableIcon":Ljava/lang/Object;
    .end local v13    # "paint":Landroid/graphics/Paint;
    :pswitch_120
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x1060126

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 2480
    goto :goto_e6

    .line 2482
    :pswitch_12c
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x1060127

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 2483
    goto :goto_e6

    .line 2485
    :pswitch_138
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x1060128

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 2486
    goto :goto_e6

    .line 2488
    :pswitch_144
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x1060129

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 2489
    goto :goto_e6

    .line 2491
    :pswitch_150
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x106012a

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    goto :goto_e6

    .line 2506
    .end local v2    # "bgColorOfContactsThumbnail":I
    .end local v3    # "bm":Landroid/graphics/Bitmap;
    .end local v4    # "canvas":Landroid/graphics/Canvas;
    .end local v5    # "contactsThumbnailIndex":I
    .end local v6    # "defaultPhoto":Landroid/graphics/Bitmap;
    .end local v7    # "defaultPhotoDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v8    # "drawableIcon":Landroid/graphics/drawable/Drawable;
    .end local v10    # "mask":Landroid/graphics/Bitmap;
    .end local v11    # "numOfContactsThumbnailBgColor":I
    .end local v14    # "photo":Landroid/graphics/Bitmap;
    :cond_15c
    const-string v15, "ResolverActivity"

    const-string v16, "makeContactsThumbnailImage:  contactsThumbnailByteArray == null and isGroup==true, show group image"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2507
    const/4 v10, 0x0

    .line 2508
    .restart local v10    # "mask":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 2509
    .restart local v3    # "bm":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x1080541

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/BitmapDrawable;

    .line 2510
    .restart local v7    # "defaultPhotoDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 2511
    .restart local v6    # "defaultPhoto":Landroid/graphics/Bitmap;
    const/4 v8, 0x0

    .line 2512
    .restart local v8    # "drawableIcon":Landroid/graphics/drawable/Drawable;
    const/4 v14, 0x0

    .line 2515
    .restart local v14    # "photo":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x108053b

    invoke-static/range {v15 .. v16}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 2517
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v6, v15, v0, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 2518
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    sget-object v17, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v15 .. v17}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 2520
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2521
    .restart local v4    # "canvas":Landroid/graphics/Canvas;
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v14, v15, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2523
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    .line 2524
    .restart local v13    # "paint":Landroid/graphics/Paint;
    new-instance v15, Landroid/graphics/PorterDuffXfermode;

    sget-object v16, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v15 .. v16}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v13, v15}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 2525
    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v10, v15, v0, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2526
    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 2528
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    .end local v8    # "drawableIcon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-direct {v8, v15, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .restart local v8    # "drawableIcon":Landroid/graphics/drawable/Drawable;
    move-object v9, v8

    .line 2529
    .restart local v9    # "drawableIcon":Ljava/lang/Object;
    goto/16 :goto_7e

    .line 2477
    nop

    :pswitch_data_1e8
    .packed-switch 0x1
        :pswitch_120
        :pswitch_12c
        :pswitch_138
        :pswitch_144
        :pswitch_150
    .end packed-switch
.end method

.method private makeMyIntent()Landroid/content/Intent;
    .registers 4

    .prologue
    .line 514
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 515
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 521
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const v2, -0x800001

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 522
    return-object v0
.end method

.method private registerRecentContactsReceiver()V
    .registers 3

    .prologue
    .line 1979
    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mApplyRemoteShareResolver:Z

    if-eqz v1, :cond_1e

    sget-boolean v1, Lcom/android/internal/app/ResolverActivity;->mIsEasySingUpIsCertificated:Z

    if-eqz v1, :cond_1e

    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mIsRecentContactsReceiverRegistered:Z

    if-nez v1, :cond_1e

    .line 1980
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1981
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.android.coreapps.rshare.responserecentgroupcontacts"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1982
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/app/ResolverActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1983
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mIsRecentContactsReceiverRegistered:Z

    .line 1986
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1e
    return-void
.end method

.method private sendRequesRecentContactsHistoryList()Z
    .registers 3

    .prologue
    .line 1972
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.coreapps.rshare.requestrecentgroupcontacts"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1973
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1974
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->registerRecentContactsReceiver()V

    .line 1975
    const/4 v1, 0x1

    return v1
.end method

.method private setAlwaysButtonEnabled(ZIZ)V
    .registers 8
    .param p1, "hasValidSelection"    # Z
    .param p2, "checkedPos"    # I
    .param p3, "filtered"    # Z

    .prologue
    .line 1016
    const/4 v0, 0x0

    .line 1017
    .local v0, "enabled":Z
    if-eqz p1, :cond_f

    .line 1018
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v2, p2, p3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 1019
    .local v1, "ri":Landroid/content/pm/ResolveInfo;
    iget v2, v1, Landroid/content/pm/ResolveInfo;->targetUserId:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_f

    .line 1020
    const/4 v0, 0x1

    .line 1023
    .end local v1    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_f
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1024
    return-void
.end method

.method private setSubtitleBackground(Landroid/widget/TextView;)V
    .registers 4
    .param p1, "text"    # Landroid/widget/TextView;

    .prologue
    const/4 v1, 0x0

    .line 1724
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsLightTheme:Z

    if-eqz v0, :cond_f

    .line 1725
    const v0, 0x1080ad4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1730
    :goto_b
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1731
    return-void

    .line 1727
    :cond_f
    const v0, 0x1080ad3

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_b
.end method

.method private setSubtitleBackgroundNoSpace(Landroid/widget/TextView;)V
    .registers 4
    .param p1, "text"    # Landroid/widget/TextView;

    .prologue
    const/4 v1, 0x0

    .line 1739
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsLightTheme:Z

    if-eqz v0, :cond_f

    .line 1740
    const v0, 0x1080ad6

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1745
    :goto_b
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1746
    return-void

    .line 1742
    :cond_f
    const v0, 0x1080ad5

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_b
.end method

.method private setSubtitleColor(Landroid/widget/TextView;)V
    .registers 4
    .param p1, "text"    # Landroid/widget/TextView;

    .prologue
    .line 1710
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsLightTheme:Z

    if-eqz v0, :cond_13

    .line 1711
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060124

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1715
    :goto_12
    return-void

    .line 1713
    :cond_13
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060125

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_12
.end method

.method private setVisibilityGridRemoteShare(I)V
    .registers 3
    .param p1, "iVisible"    # I

    .prologue
    .line 1812
    const v0, 0x1020494

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1813
    const v0, 0x1020495

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1814
    return-void
.end method

.method private setVisibilityGridRemoteShareRecentHistory(I)V
    .registers 3
    .param p1, "iVisible"    # I

    .prologue
    .line 1808
    const v0, 0x1020499

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1809
    return-void
.end method

.method private setVisibilityGridRemoteShareRecentHistoryDefault(I)V
    .registers 3
    .param p1, "iVisible"    # I

    .prologue
    .line 1804
    const v0, 0x1020497

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1805
    return-void
.end method

.method private supportsManagedProfiles(Landroid/content/pm/ResolveInfo;)Z
    .registers 8
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .prologue
    const/4 v2, 0x0

    .line 1002
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1004
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-direct {p0, v3}, Lcom/android/internal/app/ResolverActivity;->versionNumberAtLeastL(I)Z
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_13} :catch_15

    move-result v2

    .line 1006
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_14
    return v2

    .line 1005
    :catch_15
    move-exception v1

    .line 1006
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_14
.end method

.method private versionNumberAtLeastL(I)Z
    .registers 3
    .param p1, "versionNumber"    # I

    .prologue
    .line 1011
    const/16 v0, 0x15

    if-lt p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method dismiss()V
    .registers 2

    .prologue
    .line 795
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_9

    .line 796
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 798
    :cond_9
    return-void
.end method

.method getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .registers 6
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resId"    # I

    .prologue
    .line 803
    :try_start_0
    iget v2, p0, Lcom/android/internal/app/ResolverActivity;->mIconDpi:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 808
    .local v1, "result":Landroid/graphics/drawable/Drawable;
    :goto_6
    return-object v1

    .line 804
    .end local v1    # "result":Landroid/graphics/drawable/Drawable;
    :catch_7
    move-exception v0

    .line 805
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    .restart local v1    # "result":Landroid/graphics/drawable/Drawable;
    goto :goto_6
.end method

.method public getReplacementIntent(Ljava/lang/String;Landroid/content/Intent;)Landroid/content/Intent;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "defIntent"    # Landroid/content/Intent;

    .prologue
    .line 1053
    return-object p2
.end method

.method protected getTitleForAction(Ljava/lang/String;I)Ljava/lang/CharSequence;
    .registers 9
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "defaultTitleRes"    # I

    .prologue
    .line 779
    iget-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mResolvingHome:Z

    if-eqz v2, :cond_17

    sget-object v1, Lcom/android/internal/app/ResolverActivity$ActionTitle;->HOME:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    .line 780
    .local v1, "title":Lcom/android/internal/app/ResolverActivity$ActionTitle;
    :goto_6
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->hasFilteredItem()Z

    move-result v0

    .line 781
    .local v0, "named":Z
    sget-object v2, Lcom/android/internal/app/ResolverActivity$ActionTitle;->DEFAULT:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    if-ne v1, v2, :cond_1c

    if-eqz p2, :cond_1c

    .line 782
    invoke-virtual {p0, p2}, Lcom/android/internal/app/ResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 784
    :goto_16
    return-object v2

    .line 779
    .end local v0    # "named":Z
    .end local v1    # "title":Lcom/android/internal/app/ResolverActivity$ActionTitle;
    :cond_17
    invoke-static {p1}, Lcom/android/internal/app/ResolverActivity$ActionTitle;->forAction(Ljava/lang/String;)Lcom/android/internal/app/ResolverActivity$ActionTitle;

    move-result-object v1

    goto :goto_6

    .line 784
    .restart local v0    # "named":Z
    .restart local v1    # "title":Lcom/android/internal/app/ResolverActivity$ActionTitle;
    :cond_1c
    if-eqz v0, :cond_33

    iget v2, v1, Lcom/android/internal/app/ResolverActivity$ActionTitle;->namedTitleRes:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v5}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getFilteredItem()Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->displayLabel:Ljava/lang/CharSequence;

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/app/ResolverActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_16

    :cond_33
    iget v2, v1, Lcom/android/internal/app/ResolverActivity$ActionTitle;->titleRes:I

    invoke-virtual {p0, v2}, Lcom/android/internal/app/ResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_16
.end method

.method loadIconForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .registers 7
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 814
    :try_start_0
    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    if-eqz v3, :cond_19

    iget v3, p1, Landroid/content/pm/ResolveInfo;->icon:I

    if-eqz v3, :cond_19

    .line 815
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p1, Landroid/content/pm/ResolveInfo;->icon:I

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/app/ResolverActivity;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 816
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_19

    .line 830
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_18
    :goto_18
    return-object v0

    .line 820
    :cond_19
    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v2

    .line 821
    .local v2, "iconRes":I
    if-eqz v2, :cond_2f

    .line 822
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/app/ResolverActivity;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    :try_end_2c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_2c} :catch_36

    move-result-object v0

    .line 823
    .restart local v0    # "dr":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_18

    .line 830
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v2    # "iconRes":I
    :cond_2f
    :goto_2f
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_18

    .line 827
    :catch_36
    move-exception v1

    .line 828
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "ResolverActivity"

    const-string v4, "Couldn\'t find resources for package"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2f
.end method

.method public onButtonClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1027
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1028
    .local v0, "id":I
    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getCheckedItemPosition()I

    move-result v1

    move v2, v1

    :goto_f
    const v1, 0x102041b

    if-ne v0, v1, :cond_26

    const/4 v1, 0x1

    :goto_15
    iget-boolean v3, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    invoke-virtual {p0, v2, v1, v3}, Lcom/android/internal/app/ResolverActivity;->startSelected(IZZ)V

    .line 1032
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->dismiss()V

    .line 1033
    return-void

    .line 1028
    :cond_1e
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getFilteredPosition()I

    move-result v1

    move v2, v1

    goto :goto_f

    :cond_26
    const/4 v1, 0x0

    goto :goto_15
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    .line 528
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->makeMyIntent()Landroid/content/Intent;

    move-result-object v2

    .line 529
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v8

    .line 530
    .local v8, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    if-eqz v8, :cond_28

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v0

    if-ne v0, v7, :cond_28

    const-string v0, "android.intent.category.HOME"

    invoke-interface {v8, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 535
    iput-boolean v7, p0, Lcom/android/internal/app/ResolverActivity;->mResolvingHome:Z

    .line 538
    :cond_28
    invoke-virtual {p0, v7}, Lcom/android/internal/app/ResolverActivity;->setSafeForwardingMode(Z)V

    .line 540
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V

    .line 541
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V
    .registers 33
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "defaultTitleRes"    # I
    .param p5, "initialIntents"    # [Landroid/content/Intent;
    .param p7, "alwaysUseOption"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/content/Intent;",
            "Ljava/lang/CharSequence;",
            "I[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 556
    .local p6, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const v2, 0x103048f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ResolverActivity;->setTheme(I)V

    .line 557
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 559
    :try_start_b
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_1b} :catch_158

    .line 567
    :goto_1b
    :try_start_1b
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromPackage:Ljava/lang/String;

    .line 569
    const-string v2, "ResolverActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mLaunchedFromPackage="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_47} :catch_160

    .line 577
    :goto_47
    new-instance v2, Landroid/content/Intent;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mIntent:Landroid/content/Intent;

    .line 579
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    .line 580
    const-string/jumbo v2, "usagestats"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/UsageStatsManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mUsm:Landroid/app/usage/UsageStatsManager;

    .line 581
    const-string v2, "keyguard"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mKgm:Landroid/app/KeyguardManager;

    .line 583
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x48190800

    sub-long v22, v2, v4

    .line 584
    .local v22, "sinceTime":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mUsm:Landroid/app/usage/UsageStatsManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-wide/from16 v0, v22

    invoke-virtual {v2, v0, v1, v4, v5}, Landroid/app/usage/UsageStatsManager;->queryAndAggregateUsageStats(JJ)Ljava/util/Map;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mStats:Ljava/util/Map;

    .line 585
    const-string v2, "ResolverActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sinceTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v22

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e006e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/app/ResolverActivity;->mMaxColumns:I

    .line 589
    new-instance v19, Landroid/util/TypedValue;

    invoke-direct/range {v19 .. v19}, Landroid/util/TypedValue;-><init>()V

    .line 594
    .local v19, "outValue":Landroid/util/TypedValue;
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/app/ResolverActivity;->mIsDeviceDefault:Z

    .line 599
    const/16 v21, 0x0

    .line 602
    .local v21, "theme":I
    :try_start_c8
    const-string/jumbo v2, "theme"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_d1} :catch_16f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_c8 .. :try_end_d1} :catch_179

    move-result v21

    .line 609
    :goto_d2
    packed-switch v21, :pswitch_data_392

    .line 626
    :goto_d5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 627
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    .line 629
    const-string v2, "activity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/ActivityManager;

    .line 630
    .local v11, "am":Landroid/app/ActivityManager;
    invoke-virtual {v11}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/app/ResolverActivity;->mIconDpi:I

    .line 631
    invoke-virtual {v11}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/app/ResolverActivity;->mIconSize:I

    .line 635
    new-instance v2, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromPackage:Ljava/lang/String;

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v10, p7

    invoke-direct/range {v2 .. v10}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;Landroid/content/Intent;[Landroid/content/Intent;Ljava/util/List;ILjava/lang/String;Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    .line 644
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->hasFilteredItem()Z

    move-result v2

    if-eqz v2, :cond_1bf

    .line 645
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/app/ResolverActivity;->mIsDeviceDefault:Z

    if-eqz v2, :cond_1ba

    .line 646
    const v18, 0x1090132

    .line 650
    .local v18, "layoutId":I
    :goto_132
    const/16 p7, 0x0

    .line 658
    :goto_134
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    .line 661
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    iget-object v2, v2, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    .line 662
    .local v13, "count":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    if-ltz v2, :cond_154

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v2

    if-eqz v2, :cond_1cf

    .line 664
    :cond_154
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 760
    :cond_157
    :goto_157
    return-void

    .line 561
    .end local v11    # "am":Landroid/app/ActivityManager;
    .end local v13    # "count":I
    .end local v18    # "layoutId":I
    .end local v19    # "outValue":Landroid/util/TypedValue;
    .end local v21    # "theme":I
    .end local v22    # "sinceTime":J
    :catch_158
    move-exception v14

    .line 562
    .local v14, "e":Landroid/os/RemoteException;
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    goto/16 :goto_1b

    .line 570
    .end local v14    # "e":Landroid/os/RemoteException;
    :catch_160
    move-exception v14

    .line 571
    .restart local v14    # "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromPackage:Ljava/lang/String;

    .line 572
    const-string v2, "ResolverActivity"

    const-string v3, "mLaunchedFromPackage=null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_47

    .line 603
    .end local v14    # "e":Landroid/os/RemoteException;
    .restart local v19    # "outValue":Landroid/util/TypedValue;
    .restart local v21    # "theme":I
    .restart local v22    # "sinceTime":J
    :catch_16f
    move-exception v14

    .line 604
    .local v14, "e":Ljava/lang/Exception;
    const-string v2, "ResolverActivity"

    const-string v3, "checkedItemPosition is invalid position"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d2

    .line 605
    .end local v14    # "e":Ljava/lang/Exception;
    :catch_179
    move-exception v14

    .line 606
    .local v14, "e":Ljava/lang/OutOfMemoryError;
    const-string v2, "ResolverActivity"

    const-string v3, " intent.getIntExtra(THEME_CHOOSER, TYPE_NONE), OutOfMemoryError"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d2

    .line 611
    .end local v14    # "e":Ljava/lang/OutOfMemoryError;
    :pswitch_183
    const-string v2, "black"

    const-string/jumbo v3, "ro.build.scafe.cream"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19c

    .line 612
    const v2, 0x103048f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ResolverActivity;->setTheme(I)V

    goto/16 :goto_d5

    .line 614
    :cond_19c
    const v2, 0x103048f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ResolverActivity;->setTheme(I)V

    goto/16 :goto_d5

    .line 618
    :pswitch_1a6
    const v2, 0x103048f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ResolverActivity;->setTheme(I)V

    goto/16 :goto_d5

    .line 621
    :pswitch_1b0
    const v2, 0x103048f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ResolverActivity;->setTheme(I)V

    goto/16 :goto_d5

    .line 648
    .restart local v11    # "am":Landroid/app/ActivityManager;
    :cond_1ba
    const v18, 0x10900c3

    .restart local v18    # "layoutId":I
    goto/16 :goto_132

    .line 652
    .end local v18    # "layoutId":I
    :cond_1bf
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/app/ResolverActivity;->mIsDeviceDefault:Z

    if-eqz v2, :cond_1ca

    .line 653
    const v18, 0x1090131

    .restart local v18    # "layoutId":I
    goto/16 :goto_134

    .line 655
    .end local v18    # "layoutId":I
    :cond_1ca
    const v18, 0x10900c2

    .restart local v18    # "layoutId":I
    goto/16 :goto_134

    .line 666
    .restart local v13    # "count":I
    :cond_1cf
    const/4 v2, 0x1

    if-le v13, v2, :cond_328

    .line 668
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->checkProductSupport()V

    .line 669
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/app/ResolverActivity;->isSupportRemoteShare(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_218

    .line 670
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->isEasySingUpIsCertificated()Z

    move-result v2

    if-eqz v2, :cond_20f

    .line 671
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->sendRequesRecentContactsHistoryList()Z

    .line 673
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/app/ResolverActivity;->mIsSupportNewFeature:Z

    if-eqz v2, :cond_20f

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/app/ResolverActivity;->isSupportNearByDevice(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_20f

    .line 674
    new-instance v2, Lcom/samsung/android/sconnect/extern/QuickConnectConnector;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity;->mStatusListener:Lcom/samsung/android/sconnect/extern/QuickConnectConnector$IServiceStatusListener;

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/sconnect/extern/QuickConnectConnector;-><init>(Landroid/content/Context;Lcom/samsung/android/sconnect/extern/QuickConnectConnector$IServiceStatusListener;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mConnector:Lcom/samsung/android/sconnect/extern/QuickConnectConnector;

    .line 675
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/app/ResolverActivity;->mOrigIntent:Landroid/content/Intent;

    .line 679
    :cond_20f
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/app/ResolverActivity;->applyRemoteShareResolver(Landroid/content/Intent;)V

    goto/16 :goto_157

    .line 684
    :cond_218
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity;->setContentView(I)V

    .line 685
    const v2, 0x102041d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mGridView:Landroid/widget/GridView;

    .line 690
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mGridView:Landroid/widget/GridView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 691
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mGridView:Landroid/widget/GridView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 692
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mGridView:Landroid/widget/GridView;

    new-instance v3, Lcom/android/internal/app/ResolverActivity$ItemLongClickListener;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/internal/app/ResolverActivity$ItemLongClickListener;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 694
    if-eqz p7, :cond_25a

    .line 695
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mGridView:Landroid/widget/GridView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setChoiceMode(I)V

    .line 698
    :cond_25a
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->resizeGrid()V

    .line 718
    :goto_25d
    const v2, 0x102033f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/android/internal/widget/ResolverDrawerLayout;

    .line 719
    .local v20, "rdl":Lcom/android/internal/widget/ResolverDrawerLayout;
    if-eqz v20, :cond_276

    .line 720
    new-instance v2, Lcom/android/internal/app/ResolverActivity$7;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/internal/app/ResolverActivity$7;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/ResolverDrawerLayout;->setOnClickOutsideListener(Landroid/view/View$OnClickListener;)V

    .line 728
    :cond_276
    if-nez p3, :cond_284

    .line 729
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/app/ResolverActivity;->getTitleForAction(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object p3

    .line 731
    :cond_284
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2a5

    .line 732
    const v2, 0x1020016

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    .line 733
    .local v24, "titleView":Landroid/widget/TextView;
    if-eqz v24, :cond_29e

    .line 734
    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 736
    :cond_29e
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 739
    .end local v24    # "titleView":Landroid/widget/TextView;
    :cond_2a5
    const v2, 0x1020006

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    .line 740
    .local v17, "iconView":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getFilteredItem()Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v16

    .line 741
    .local v16, "iconInfo":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    if-eqz v17, :cond_2ce

    if-eqz v16, :cond_2ce

    .line 742
    new-instance v2, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v2, v0, v1}, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/widget/ImageView;)V

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    const/4 v4, 0x0

    aput-object v16, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 745
    :cond_2ce
    if-nez p7, :cond_2da

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->hasFilteredItem()Z

    move-result v2

    if-eqz v2, :cond_305

    .line 746
    :cond_2da
    const v2, 0x102034d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    .line 747
    .local v12, "buttonLayout":Landroid/view/ViewGroup;
    if-eqz v12, :cond_38b

    .line 748
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 749
    const v2, 0x102041b

    invoke-virtual {v12, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    .line 750
    const v2, 0x102041c

    invoke-virtual {v12, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    .line 756
    .end local v12    # "buttonLayout":Landroid/view/ViewGroup;
    :cond_305
    :goto_305
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->hasFilteredItem()Z

    move-result v2

    if-eqz v2, :cond_157

    .line 757
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getFilteredPosition()I

    move-result v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/android/internal/app/ResolverActivity;->setAlwaysButtonEnabled(ZIZ)V

    .line 758
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_157

    .line 699
    .end local v16    # "iconInfo":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .end local v17    # "iconView":Landroid/widget/ImageView;
    .end local v20    # "rdl":Lcom/android/internal/widget/ResolverDrawerLayout;
    :cond_328
    const/4 v2, 0x1

    if-ne v13, v2, :cond_34b

    .line 700
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->intentForPosition(IZ)Landroid/content/Intent;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ResolverActivity;->safelyStartActivity(Landroid/content/Intent;)V

    .line 701
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v2}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 702
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    .line 703
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    goto/16 :goto_157

    .line 706
    :cond_34b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/app/ResolverActivity;->mIsDeviceDefault:Z

    if-eqz v2, :cond_382

    .line 707
    const v2, 0x1090131

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ResolverActivity;->setContentView(I)V

    .line 711
    :goto_359
    const v2, 0x1020004

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 712
    .local v15, "empty":Landroid/widget/TextView;
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 714
    const v2, 0x102041d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mGridView:Landroid/widget/GridView;

    .line 715
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mGridView:Landroid/widget/GridView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setVisibility(I)V

    goto/16 :goto_25d

    .line 709
    .end local v15    # "empty":Landroid/widget/TextView;
    :cond_382
    const v2, 0x10900c2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ResolverActivity;->setContentView(I)V

    goto :goto_359

    .line 752
    .restart local v12    # "buttonLayout":Landroid/view/ViewGroup;
    .restart local v16    # "iconInfo":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .restart local v17    # "iconView":Landroid/widget/ImageView;
    .restart local v20    # "rdl":Lcom/android/internal/widget/ResolverDrawerLayout;
    :cond_38b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    goto/16 :goto_305

    .line 609
    :pswitch_data_392
    .packed-switch 0x0
        :pswitch_183
        :pswitch_1a6
        :pswitch_1b0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Ljava/util/List;Z)V
    .registers 15
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "initialIntents"    # [Landroid/content/Intent;
    .param p6, "alwaysUseOption"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/content/Intent;",
            "Ljava/lang/CharSequence;",
            "[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 550
    .local p5, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V

    .line 551
    return-void
.end method

.method protected onIntentSelected(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;Z)V
    .registers 34
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "alwaysCheck"    # Z

    .prologue
    .line 1057
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    if-nez v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->hasFilteredItem()Z

    move-result v2

    if-eqz v2, :cond_188

    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    iget-object v2, v2, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    if-eqz v2, :cond_188

    .line 1059
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 1061
    .local v6, "filter":Landroid/content/IntentFilter;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2a

    .line 1062
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1064
    :cond_2a
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v13

    .line 1065
    .local v13, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v13, :cond_44

    .line 1066
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i$":Ljava/util/Iterator;
    :goto_34
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 1067
    .local v12, "cat":Ljava/lang/String;
    invoke-virtual {v6, v12}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    goto :goto_34

    .line 1070
    .end local v12    # "cat":Ljava/lang/String;
    .end local v18    # "i$":Ljava/util/Iterator;
    :cond_44
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v6, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 1072
    move-object/from16 v0, p1

    iget v2, v0, Landroid/content/pm/ResolveInfo;->match:I

    const/high16 v3, 0xfff0000

    and-int v12, v2, v3

    .line 1073
    .local v12, "cat":I
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v15

    .line 1074
    .local v15, "data":Landroid/net/Uri;
    const/high16 v2, 0x600000

    if-ne v12, v2, :cond_68

    .line 1075
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    .line 1076
    .local v19, "mimeType":Ljava/lang/String;
    if-eqz v19, :cond_68

    .line 1078
    :try_start_63
    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_68
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_63 .. :try_end_68} :catch_16b

    .line 1085
    .end local v19    # "mimeType":Ljava/lang/String;
    :cond_68
    :goto_68
    if-eqz v15, :cond_122

    invoke-virtual {v15}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_122

    .line 1089
    const/high16 v2, 0x600000

    if-ne v12, v2, :cond_8c

    const-string v2, "file"

    invoke-virtual {v15}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_122

    const-string v2, "content"

    invoke-virtual {v15}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_122

    .line 1092
    :cond_8c
    invoke-virtual {v15}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1096
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v2}, Landroid/content/IntentFilter;->schemeSpecificPartsIterator()Ljava/util/Iterator;

    move-result-object v23

    .line 1097
    .local v23, "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    if-eqz v23, :cond_c4

    .line 1098
    invoke-virtual {v15}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v29

    .line 1099
    .local v29, "ssp":Ljava/lang/String;
    :cond_a1
    if-eqz v29, :cond_c4

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c4

    .line 1100
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/os/PatternMatcher;

    .line 1101
    .local v22, "p":Landroid/os/PatternMatcher;
    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a1

    .line 1102
    invoke-virtual/range {v22 .. v22}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v22 .. v22}, Landroid/os/PatternMatcher;->getType()I

    move-result v3

    invoke-virtual {v6, v2, v3}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 1107
    .end local v22    # "p":Landroid/os/PatternMatcher;
    .end local v29    # "ssp":Ljava/lang/String;
    :cond_c4
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v2}, Landroid/content/IntentFilter;->authoritiesIterator()Ljava/util/Iterator;

    move-result-object v11

    .line 1108
    .local v11, "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    if-eqz v11, :cond_f1

    .line 1109
    :cond_ce
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f1

    .line 1110
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/IntentFilter$AuthorityEntry;

    .line 1111
    .local v10, "a":Landroid/content/IntentFilter$AuthorityEntry;
    invoke-virtual {v10, v15}, Landroid/content/IntentFilter$AuthorityEntry;->match(Landroid/net/Uri;)I

    move-result v2

    if-ltz v2, :cond_ce

    .line 1112
    invoke-virtual {v10}, Landroid/content/IntentFilter$AuthorityEntry;->getPort()I

    move-result v25

    .line 1113
    .local v25, "port":I
    invoke-virtual {v10}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v3

    if-ltz v25, :cond_176

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    :goto_ee
    invoke-virtual {v6, v3, v2}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    .end local v10    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .end local v25    # "port":I
    :cond_f1
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v2}, Landroid/content/IntentFilter;->pathsIterator()Ljava/util/Iterator;

    move-result-object v23

    .line 1120
    if-eqz v23, :cond_122

    .line 1121
    invoke-virtual {v15}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v24

    .line 1122
    .local v24, "path":Ljava/lang/String;
    :cond_ff
    if-eqz v24, :cond_122

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_122

    .line 1123
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/os/PatternMatcher;

    .line 1124
    .restart local v22    # "p":Landroid/os/PatternMatcher;
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ff

    .line 1125
    invoke-virtual/range {v22 .. v22}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v22 .. v22}, Landroid/os/PatternMatcher;->getType()I

    move-result v3

    invoke-virtual {v6, v2, v3}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 1133
    .end local v11    # "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .end local v22    # "p":Landroid/os/PatternMatcher;
    .end local v23    # "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    .end local v24    # "path":Ljava/lang/String;
    :cond_122
    if-eqz v6, :cond_188

    .line 1134
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    iget-object v2, v2, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    .line 1135
    .local v9, "N":I
    new-array v0, v9, [Landroid/content/ComponentName;

    move-object/from16 v28, v0

    .line 1136
    .local v28, "set":[Landroid/content/ComponentName;
    const/4 v7, 0x0

    .line 1137
    .local v7, "bestMatch":I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_135
    move/from16 v0, v17

    if-ge v0, v9, :cond_179

    .line 1138
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    iget-object v2, v2, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    move/from16 v0, v17

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    iget-object v0, v2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    move-object/from16 v26, v0

    .line 1139
    .local v26, "r":Landroid/content/pm/ResolveInfo;
    new-instance v2, Landroid/content/ComponentName;

    move-object/from16 v0, v26

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v26

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v28, v17

    .line 1141
    move-object/from16 v0, v26

    iget v2, v0, Landroid/content/pm/ResolveInfo;->match:I

    if-le v2, v7, :cond_168

    move-object/from16 v0, v26

    iget v7, v0, Landroid/content/pm/ResolveInfo;->match:I

    .line 1137
    :cond_168
    add-int/lit8 v17, v17, 0x1

    goto :goto_135

    .line 1079
    .end local v7    # "bestMatch":I
    .end local v9    # "N":I
    .end local v17    # "i":I
    .end local v26    # "r":Landroid/content/pm/ResolveInfo;
    .end local v28    # "set":[Landroid/content/ComponentName;
    .restart local v19    # "mimeType":Ljava/lang/String;
    :catch_16b
    move-exception v16

    .line 1080
    .local v16, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    const-string v2, "ResolverActivity"

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1081
    const/4 v6, 0x0

    goto/16 :goto_68

    .line 1113
    .end local v16    # "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    .end local v19    # "mimeType":Ljava/lang/String;
    .restart local v10    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .restart local v11    # "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .restart local v23    # "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    .restart local v25    # "port":I
    :cond_176
    const/4 v2, 0x0

    goto/16 :goto_ee

    .line 1143
    .end local v10    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .end local v11    # "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .end local v23    # "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    .end local v25    # "port":I
    .restart local v7    # "bestMatch":I
    .restart local v9    # "N":I
    .restart local v17    # "i":I
    .restart local v28    # "set":[Landroid/content/ComponentName;
    :cond_179
    if-eqz p3, :cond_1d0

    .line 1144
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v2, v6, v7, v0, v3}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 1159
    .end local v6    # "filter":Landroid/content/IntentFilter;
    .end local v7    # "bestMatch":I
    .end local v9    # "N":I
    .end local v12    # "cat":I
    .end local v13    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v15    # "data":Landroid/net/Uri;
    .end local v17    # "i":I
    .end local v28    # "set":[Landroid/content/ComponentName;
    :cond_188
    :goto_188
    if-eqz p2, :cond_1cf

    .line 1160
    if-eqz p3, :cond_21f

    .line 1162
    :try_start_18c
    new-instance v21, Landroid/content/Intent;

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1163
    .local v21, "newIntent":Landroid/content/Intent;
    new-instance v14, Landroid/content/ComponentName;

    const-string v2, "android"

    const-string v3, "com.android.internal.app.ResolverGuideActivity"

    invoke-direct {v14, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1165
    .local v14, "cn":Landroid/content/ComponentName;
    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1166
    const-string v2, "android.intent.extra.INTENT"

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1167
    const/high16 v2, 0x800000

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1170
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v20

    .line 1171
    .local v20, "mws":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    if-nez v20, :cond_1be

    .line 1172
    new-instance v20, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .end local v20    # "mws":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-direct/range {v20 .. v20}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>()V

    .line 1174
    .restart local v20    # "mws":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_1be
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 1175
    invoke-static/range {v21 .. v21}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->skipMultiWindowLaunch(Landroid/content/Intent;)V

    .line 1178
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1cf
    .catch Landroid/content/ActivityNotFoundException; {:try_start_18c .. :try_end_1cf} :catch_206
    .catch Ljava/lang/Exception; {:try_start_18c .. :try_end_1cf} :catch_20f

    .line 1197
    .end local v14    # "cn":Landroid/content/ComponentName;
    .end local v20    # "mws":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v21    # "newIntent":Landroid/content/Intent;
    :cond_1cf
    :goto_1cf
    return-void

    .line 1148
    .restart local v6    # "filter":Landroid/content/IntentFilter;
    .restart local v7    # "bestMatch":I
    .restart local v9    # "N":I
    .restart local v12    # "cat":I
    .restart local v13    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v15    # "data":Landroid/net/Uri;
    .restart local v17    # "i":I
    .restart local v28    # "set":[Landroid/content/ComponentName;
    :cond_1d0
    :try_start_1d0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x10000

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    move-object/from16 v3, p2

    invoke-interface/range {v2 .. v8}, Landroid/content/pm/IPackageManager;->setLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/IntentFilter;ILandroid/content/ComponentName;)V
    :try_end_1e9
    .catch Landroid/os/RemoteException; {:try_start_1d0 .. :try_end_1e9} :catch_1ea

    goto :goto_188

    .line 1152
    :catch_1ea
    move-exception v27

    .line 1153
    .local v27, "re":Landroid/os/RemoteException;
    const-string v2, "ResolverActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error calling setLastChosenActivity\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_188

    .line 1182
    .end local v6    # "filter":Landroid/content/IntentFilter;
    .end local v7    # "bestMatch":I
    .end local v9    # "N":I
    .end local v12    # "cat":I
    .end local v13    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v15    # "data":Landroid/net/Uri;
    .end local v17    # "i":I
    .end local v27    # "re":Landroid/os/RemoteException;
    .end local v28    # "set":[Landroid/content/ComponentName;
    :catch_206
    move-exception v16

    .line 1183
    .local v16, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "ResolverActivity"

    const-string v3, "Activity Not Found"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1cf

    .line 1184
    .end local v16    # "e":Landroid/content/ActivityNotFoundException;
    :catch_20f
    move-exception v16

    .line 1185
    .local v16, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity;->startActivity(Landroid/content/Intent;)V

    .line 1186
    const-string v2, "ResolverActivity"

    const-string v3, "Class Not Found"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1cf

    .line 1191
    .end local v16    # "e":Ljava/lang/Exception;
    :cond_21f
    :try_start_21f
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_226
    .catch Landroid/content/ActivityNotFoundException; {:try_start_21f .. :try_end_226} :catch_227

    goto :goto_1cf

    .line 1192
    :catch_227
    move-exception v16

    .line 1193
    .local v16, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "ResolverActivity"

    const-string v3, "Activity Not Found"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1cf
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 15
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 949
    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v5, p3, v3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 950
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-boolean v5, p0, Lcom/android/internal/app/ResolverActivity;->mResolvingHome:Z

    if-eqz v5, :cond_41

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->hasManagedProfile()Z

    move-result v5

    if-eqz v5, :cond_41

    invoke-direct {p0, v2}, Lcom/android/internal/app/ResolverActivity;->supportsManagedProfiles(Landroid/content/pm/ResolveInfo;)Z

    move-result v5

    if-nez v5, :cond_41

    .line 952
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10405cd

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    iget-object v7, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 979
    :goto_40
    return-void

    .line 959
    :cond_41
    iget-boolean v5, p0, Lcom/android/internal/app/ResolverActivity;->mApplyRemoteShareResolver:Z

    if-eqz v5, :cond_4f

    if-eqz p1, :cond_4f

    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShareRecentHistoryDefault:Landroid/widget/ExpandableHeightGridView;

    if-ne p1, v5, :cond_4f

    .line 960
    invoke-direct {p0, p3}, Lcom/android/internal/app/ResolverActivity;->RemoteShareRecentHistoryDefaultGridItemClick(I)V

    goto :goto_40

    .line 962
    :cond_4f
    iget-boolean v5, p0, Lcom/android/internal/app/ResolverActivity;->mApplyRemoteShareResolver:Z

    if-eqz v5, :cond_5d

    if-eqz p1, :cond_5d

    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShareRecentHistory:Landroid/widget/HorizontalListView;

    if-ne p1, v5, :cond_5d

    .line 963
    invoke-direct {p0, p3}, Lcom/android/internal/app/ResolverActivity;->RemoteShareRecentHistoryGridItemClick(I)V

    goto :goto_40

    .line 967
    :cond_5d
    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v5}, Landroid/widget/GridView;->getCheckedItemPosition()I

    move-result v0

    .line 968
    .local v0, "checkedPos":I
    const/4 v5, -0x1

    if-eq v0, v5, :cond_83

    move v1, v3

    .line 969
    .local v1, "hasValidSelection":Z
    :goto_67
    iget-boolean v5, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    if-eqz v5, :cond_85

    if-eqz v1, :cond_71

    iget v5, p0, Lcom/android/internal/app/ResolverActivity;->mLastSelected:I

    if-eq v5, v0, :cond_85

    .line 970
    :cond_71
    invoke-direct {p0, v1, v0, v3}, Lcom/android/internal/app/ResolverActivity;->setAlwaysButtonEnabled(ZIZ)V

    .line 971
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 972
    if-eqz v1, :cond_80

    .line 973
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v3, v0}, Landroid/widget/GridView;->smoothScrollToPosition(I)V

    .line 975
    :cond_80
    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->mLastSelected:I

    goto :goto_40

    .end local v1    # "hasValidSelection":Z
    :cond_83
    move v1, v4

    .line 968
    goto :goto_67

    .line 977
    .restart local v1    # "hasValidSelection":Z
    :cond_85
    invoke-virtual {p0, p3, v4, v3}, Lcom/android/internal/app/ResolverActivity;->startSelected(IZZ)V

    goto :goto_40
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 848
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 849
    const-string v0, "ResolverActivity"

    const-string v1, "onPause registered unreceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mApplyRemoteShareResolver:Z

    if-eqz v0, :cond_24

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->isRemoteShareServiceDownloaded()Z

    move-result v0

    if-eqz v0, :cond_24

    sget-boolean v0, Lcom/android/internal/app/ResolverActivity;->mIsEasySingUpIsCertificated:Z

    if-eqz v0, :cond_24

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsRecentContactsReceiverRegistered:Z

    if-eqz v0, :cond_24

    .line 851
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 852
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsRecentContactsReceiverRegistered:Z

    .line 854
    :cond_24
    return-void
.end method

.method protected onRestart()V
    .registers 6

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 877
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 878
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mIntent:Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverActivity;->isSupportRemoteShare(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 880
    sget-boolean v0, Lcom/android/internal/app/ResolverActivity;->mIsEasySingUpIsCertificated:Z

    if-ne v0, v3, :cond_3e

    .line 881
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->sendRequesRecentContactsHistoryList()Z

    .line 882
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShareRecentHistory:Landroid/widget/HorizontalListView;

    if-nez v0, :cond_1f

    .line 883
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mIntent:Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverActivity;->addRemoteShareRecentHistoryGridView(Landroid/content/Intent;)V

    .line 886
    :cond_1f
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 896
    :goto_26
    invoke-direct {p0, v4}, Lcom/android/internal/app/ResolverActivity;->setVisibilityGridRemoteShare(I)V

    .line 898
    :cond_29
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    if-nez v0, :cond_38

    .line 899
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 900
    iput-boolean v3, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    .line 902
    :cond_38
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->handlePackagesChanged()V

    .line 903
    return-void

    .line 890
    :cond_3e
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShareRecentHistoryDefault:Landroid/widget/ExpandableHeightGridView;

    if-nez v0, :cond_47

    .line 891
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mIntent:Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverActivity;->addRemoteShareRecentHistoryDefaultGridView(Landroid/content/Intent;)V

    .line 893
    :cond_47
    invoke-direct {p0, v2}, Lcom/android/internal/app/ResolverActivity;->setVisibilityGridRemoteShareRecentHistoryDefault(I)V

    .line 894
    invoke-direct {p0, v4}, Lcom/android/internal/app/ResolverActivity;->setVisibilityGridRemoteShareRecentHistory(I)V

    goto :goto_26
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 931
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getCount()I

    move-result v3

    if-nez v3, :cond_16

    .line 932
    if-eqz p1, :cond_16

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mKgm:Landroid/app/KeyguardManager;

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 934
    :cond_16
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 935
    iget-boolean v3, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    if-eqz v3, :cond_38

    .line 936
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->getCheckedItemPosition()I

    move-result v0

    .line 937
    .local v0, "checkedPos":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_39

    move v1, v2

    .line 938
    .local v1, "hasValidSelection":Z
    :goto_27
    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->mLastSelected:I

    .line 939
    invoke-direct {p0, v1, v0, v2}, Lcom/android/internal/app/ResolverActivity;->setAlwaysButtonEnabled(ZIZ)V

    .line 940
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 941
    if-eqz v1, :cond_38

    .line 942
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2, v0}, Landroid/widget/GridView;->setSelection(I)V

    .line 945
    .end local v0    # "checkedPos":I
    .end local v1    # "hasValidSelection":Z
    :cond_38
    return-void

    .line 937
    .restart local v0    # "checkedPos":I
    :cond_39
    const/4 v1, 0x0

    goto :goto_27
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 836
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 837
    const-string v0, "ResolverActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mItemLongClicked:Z

    .line 839
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mApplyRemoteShareResolver:Z

    if-eqz v0, :cond_22

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->isRemoteShareServiceDownloaded()Z

    move-result v0

    if-eqz v0, :cond_22

    sget-boolean v0, Lcom/android/internal/app/ResolverActivity;->mIsEasySingUpIsCertificated:Z

    if-eqz v0, :cond_22

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsRecentContactsReceiverRegistered:Z

    if-nez v0, :cond_22

    .line 840
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->registerRecentContactsReceiver()V

    .line 843
    :cond_22
    return-void
.end method

.method protected onStop()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 907
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 908
    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    if-eqz v1, :cond_f

    .line 909
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v1}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 910
    iput-boolean v3, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    .line 912
    :cond_f
    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mItemLongClicked:Z

    if-nez v1, :cond_35

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x10000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_35

    .line 922
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "fromUsbSettingsManager"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 923
    .local v0, "fromUsb":Z
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isChangingConfigurations()Z

    move-result v1

    if-nez v1, :cond_35

    if-nez v0, :cond_35

    .line 924
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 927
    .end local v0    # "fromUsb":Z
    :cond_35
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 7
    .param p1, "hasFocus"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x3

    .line 859
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 860
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    .line 861
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    if-nez v0, :cond_10

    .line 873
    :cond_f
    :goto_f
    return-void

    .line 864
    :cond_10
    if-nez p1, :cond_25

    .line 865
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "personal_mode_enabled"

    invoke-static {v0, v1, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->mPrivateModeSettingsValBeforeOnFocusChanged:I

    .line 866
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mPrivateModeSettingsValBeforeOnFocusChangedisChecked:Z

    goto :goto_f

    .line 868
    :cond_25
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mPrivateModeSettingsValBeforeOnFocusChangedisChecked:Z

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/android/internal/app/ResolverActivity;->mPrivateModeSettingsValBeforeOnFocusChanged:I

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "personal_mode_enabled"

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eq v0, v1, :cond_f

    .line 870
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->handlePackagesChanged()V

    goto :goto_f
.end method

.method resizeGrid()V
    .registers 4

    .prologue
    .line 790
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getCount()I

    move-result v0

    .line 791
    .local v0, "itemCount":I
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mGridView:Landroid/widget/GridView;

    iget v2, p0, Lcom/android/internal/app/ResolverActivity;->mMaxColumns:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 792
    return-void
.end method

.method public safelyStartActivity(Landroid/content/Intent;)V
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1200
    iget-boolean v3, p0, Lcom/android/internal/app/ResolverActivity;->mSafeForwardingMode:Z

    if-nez v3, :cond_8

    .line 1201
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity;->startActivity(Landroid/content/Intent;)V

    .line 1218
    :goto_7
    return-void

    .line 1205
    :cond_8
    const/4 v3, 0x0

    const/16 v4, -0x2710

    :try_start_b
    invoke-virtual {p0, p1, v3, v4}, Lcom/android/internal/app/ResolverActivity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;I)V
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_e} :catch_f

    goto :goto_7

    .line 1206
    :catch_f
    move-exception v0

    .line 1209
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_10
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1b} :catch_4f

    move-result-object v2

    .line 1214
    .local v2, "launchedFromPackage":Ljava/lang/String;
    :goto_1c
    const-string v3, "ResolverActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to launch as uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", while running in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 1211
    .end local v2    # "launchedFromPackage":Ljava/lang/String;
    :catch_4f
    move-exception v1

    .line 1212
    .local v1, "e2":Landroid/os/RemoteException;
    const-string v2, "??"

    .restart local v2    # "launchedFromPackage":Ljava/lang/String;
    goto :goto_1c
.end method

.method public setSafeForwardingMode(Z)V
    .registers 2
    .param p1, "safeForwarding"    # Z

    .prologue
    .line 775
    iput-boolean p1, p0, Lcom/android/internal/app/ResolverActivity;->mSafeForwardingMode:Z

    .line 776
    return-void
.end method

.method showAppDetails(Landroid/content/pm/ResolveInfo;)V
    .registers 7
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 1221
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "package"

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x80000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 1224
    .local v0, "in":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->startActivity(Landroid/content/Intent;)V

    .line 1225
    return-void
.end method

.method startSelected(IZZ)V
    .registers 9
    .param p1, "which"    # I
    .param p2, "always"    # Z
    .param p3, "filtered"    # Z

    .prologue
    .line 1036
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1047
    :goto_6
    return-void

    .line 1039
    :cond_7
    if-gez p1, :cond_23

    .line 1040
    const-string v2, "ResolverActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "position is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1043
    :cond_23
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v2, p1, p3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 1044
    .local v1, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v2, p1, p3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->intentForPosition(IZ)Landroid/content/Intent;

    move-result-object v0

    .line 1045
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1, v0, p2}, Lcom/android/internal/app/ResolverActivity;->onIntentSelected(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;Z)V

    .line 1046
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    goto :goto_6
.end method
