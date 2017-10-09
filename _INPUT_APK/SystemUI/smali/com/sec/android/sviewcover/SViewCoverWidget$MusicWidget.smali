.class public Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;
.super Landroid/widget/LinearLayout;
.source "SViewCoverWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/sviewcover/SViewCoverWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MusicWidget"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$UpdateSeekBarRunnable;,
        Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$FutureSeekRunnable;,
        Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;
    }
.end annotation


# static fields
.field private static final ANIMATE_TRANSITIONS:Z = true

.field protected static final QUIESCENT_PLAYBACK_FACTOR:J = 0x3e8L

.field private static final RESET_TO_METADATA_DELAY:I = 0x1388

.field protected static final SVIEWCOVER_PLAYLIST:Ljava/lang/String; = "com.samsung.musicplus.action.SVIEWCOVER_PLAYLIST"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mBadge:Landroid/widget/ImageView;

.field private mBtnNext:Landroid/widget/ImageView;

.field private mBtnPlay:Landroid/widget/ImageView;

.field private mBtnPrev:Landroid/widget/ImageView;

.field private mBtnVolume:Landroid/widget/ImageView;

.field private mCurrentPlayState:I

.field private mFormat:Ljava/text/DateFormat;

.field private final mFutureSeekRunnable:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$FutureSeekRunnable;

.field private mInfoContainer:Landroid/view/ViewGroup;

.field private mMetadata:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;

.field private mMetadataContainer:Landroid/view/ViewGroup;

.field private mMusicHomeWidgetLayout:Landroid/view/View;

.field private final mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mPMS:Landroid/os/PowerManager;

.field private mPlayList:Landroid/widget/ImageView;

.field private mPopulateMetadataWhenAttached:Landroid/media/RemoteController$MetadataEditor;

.field private mRCClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

.field private mRemoteController:Landroid/media/RemoteController;

.field private final mResetToMetadata:Ljava/lang/Runnable;

.field private mSeekEnabled:Z

.field private mSviewCoverView:Lcom/sec/android/sviewcover/SViewCoverView;

.field private mTempDate:Ljava/util/Date;

.field private mTrackArtistAlbum:Landroid/widget/TextView;

.field private mTrackTitle:Landroid/widget/TextView;

.field private mTransientSeek:Landroid/view/View;

.field private mTransientSeekBar:Landroid/widget/SeekBar;

.field private mTransientSeekTimeElapsed:Landroid/widget/TextView;

.field private mTransientSeekTimeTotal:Landroid/widget/TextView;

.field private final mTransportCommandListener:Landroid/view/View$OnClickListener;

.field private mTransportControlFlags:I

.field private final mUpdateSeekBars:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$UpdateSeekBarRunnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 2957
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2886
    new-instance v2, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;

    invoke-direct {v2, p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;-><init>(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;)V

    iput-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mMetadata:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;

    .line 2887
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    iput-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mTempDate:Ljava/util/Date;

    .line 2893
    new-instance v2, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$UpdateSeekBarRunnable;

    invoke-direct {v2, p0, v3}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$UpdateSeekBarRunnable;-><init>(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;Lcom/sec/android/sviewcover/SViewCoverWidget$1;)V

    iput-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mUpdateSeekBars:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$UpdateSeekBarRunnable;

    .line 2908
    iput-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mSviewCoverView:Lcom/sec/android/sviewcover/SViewCoverView;

    .line 2988
    iput-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mPopulateMetadataWhenAttached:Landroid/media/RemoteController$MetadataEditor;

    .line 2990
    new-instance v2, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$1;

    invoke-direct {v2, p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$1;-><init>(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;)V

    iput-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mRCClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    .line 3045
    new-instance v2, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$2;

    invoke-direct {v2, p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$2;-><init>(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;)V

    iput-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mResetToMetadata:Ljava/lang/Runnable;

    .line 3068
    new-instance v2, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$3;

    invoke-direct {v2, p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$3;-><init>(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;)V

    iput-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mTransportCommandListener:Landroid/view/View$OnClickListener;

    .line 3091
    new-instance v2, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$FutureSeekRunnable;

    invoke-direct {v2, p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$FutureSeekRunnable;-><init>(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;)V

    iput-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mFutureSeekRunnable:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$FutureSeekRunnable;

    .line 3093
    new-instance v2, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$4;

    invoke-direct {v2, p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$4;-><init>(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;)V

    iput-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 2959
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MusicWidget"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2960
    new-instance v2, Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/media/AudioManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mAudioManager:Landroid/media/AudioManager;

    .line 2961
    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mCurrentPlayState:I

    .line 2964
    new-instance v2, Landroid/media/RemoteController;

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mRCClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    invoke-direct {v2, p1, v3}, Landroid/media/RemoteController;-><init>(Landroid/content/Context;Landroid/media/RemoteController$OnClientUpdateListener;)V

    iput-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mRemoteController:Landroid/media/RemoteController;

    .line 2966
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 2967
    .local v1, "dm":Landroid/util/DisplayMetrics;
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2968
    .local v0, "dim":I
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mRemoteController:Landroid/media/RemoteController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0, v0}, Landroid/media/RemoteController;->setArtworkConfiguration(ZII)Z

    .line 2970
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mPMS:Landroid/os/PowerManager;

    .line 2972
    return-void
.end method

.method static synthetic access$2000(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;
    .param p1, "x1"    # I

    .prologue
    .line 2870
    invoke-direct {p0, p1}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->updatePlayPauseState(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;

    .prologue
    .line 2870
    iget v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mCurrentPlayState:I

    return v0
.end method

.method static synthetic access$2200(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;)Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$UpdateSeekBarRunnable;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;

    .prologue
    .line 2870
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mUpdateSeekBars:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$UpdateSeekBarRunnable;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;
    .param p1, "x1"    # I

    .prologue
    .line 2870
    invoke-direct {p0, p1}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->updateTransportControls(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;

    .prologue
    .line 2870
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mBtnPrev:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;

    .prologue
    .line 2870
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mBtnNext:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;

    .prologue
    .line 2870
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mBtnPlay:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;)Lcom/sec/android/sviewcover/SViewCoverView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;

    .prologue
    .line 2870
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mSviewCoverView:Lcom/sec/android/sviewcover/SViewCoverView;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;
    .param p1, "x1"    # I

    .prologue
    .line 2870
    invoke-direct {p0, p1}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->sendMediaButtonClick(I)V

    return-void
.end method

.method static synthetic access$2900(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;)Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$FutureSeekRunnable;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;

    .prologue
    .line 2870
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mFutureSeekRunnable:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$FutureSeekRunnable;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;)Ljava/util/Date;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;

    .prologue
    .line 2870
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mTempDate:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;)Ljava/text/DateFormat;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;

    .prologue
    .line 2870
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mFormat:Ljava/text/DateFormat;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;

    .prologue
    .line 2870
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mTransientSeekTimeElapsed:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;)Landroid/os/PowerManager;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;

    .prologue
    .line 2870
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mPMS:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;

    .prologue
    .line 2870
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;

    .prologue
    .line 2870
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;

    .prologue
    .line 2870
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private dispatchSetBackground(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 3429
    if-eqz p1, :cond_0

    .line 3431
    :try_start_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 3432
    .local v0, "draw":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mMusicHomeWidgetLayout:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3438
    .end local v0    # "draw":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-void

    .line 3433
    :catch_0
    move-exception v1

    .line 3434
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static final playbackPositionShouldMove(I)Z
    .locals 1
    .param p0, "playstate"    # I

    .prologue
    .line 3052
    packed-switch p0, :pswitch_data_0

    .line 3064
    :pswitch_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 3059
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 3052
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private populateMetadata()V
    .locals 11

    .prologue
    const/4 v6, 0x0

    const/4 v10, 0x1

    .line 3366
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mTrackTitle:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 3367
    iget-object v7, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mTrackTitle:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mMetadata:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;

    invoke-static {v5}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;->access$3500(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mMetadata:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;

    invoke-static {v5}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;->access$3500(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;)Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3370
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3371
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mMetadata:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;

    invoke-static {v5}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;->access$3400(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 3372
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_1

    .line 3373
    const-string v5, " - "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3375
    :cond_1
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mMetadata:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;

    invoke-static {v5}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;->access$3400(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3377
    :cond_2
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mMetadata:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;

    invoke-static {v5}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;->access$3600(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 3378
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_3

    .line 3379
    const-string v5, " - "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3381
    :cond_3
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mMetadata:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;

    invoke-static {v5}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;->access$3600(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3384
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3385
    .local v4, "trackArtistAlbum":Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mTrackArtistAlbum:Landroid/widget/TextView;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    .end local v4    # "trackArtistAlbum":Ljava/lang/String;
    :goto_1
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3387
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mTrackTitle:Landroid/widget/TextView;

    if-eqz v5, :cond_5

    .line 3388
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mTrackTitle:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mTrackArtistAlbum:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3390
    .local v0, "contentDescription":Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mMetadataContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3392
    .end local v0    # "contentDescription":Ljava/lang/CharSequence;
    :cond_5
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mMetadata:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;

    invoke-static {v5}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;->access$3700(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-ltz v5, :cond_a

    .line 3393
    invoke-virtual {p0, v10}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->setSeekBarsEnabled(Z)V

    .line 3394
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mMetadata:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;

    invoke-static {v5}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;->access$3700(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;)J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->setSeekBarDuration(J)V

    .line 3398
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mMetadata:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;

    invoke-static {v5}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;->access$3700(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;)J

    move-result-wide v6

    const-wide/32 v8, 0x5265c00

    cmp-long v5, v6, v8

    if-ltz v5, :cond_8

    .line 3399
    const-string v3, "DDD kk mm ss"

    .line 3405
    .local v3, "skeleton":Ljava/lang/String;
    :goto_2
    new-instance v5, Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v6, v3}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mFormat:Ljava/text/DateFormat;

    .line 3408
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "new SimpleDateFormat(DateFormat.getBestDateTimePattern : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mFormat:Ljava/text/DateFormat;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3409
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mFormat:Ljava/text/DateFormat;

    const-string v6, "GMT+0"

    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 3415
    .end local v3    # "skeleton":Ljava/lang/String;
    :goto_3
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mMetadata:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;

    invoke-static {v5}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;->access$3800(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->dispatchSetBackground(Landroid/graphics/Bitmap;)V

    .line 3416
    iget v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mTransportControlFlags:I

    .line 3417
    .local v1, "flags":I
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mBtnPrev:Landroid/widget/ImageView;

    invoke-static {v5, v1, v10}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->setVisibilityBasedOnFlag(Landroid/view/View;II)V

    .line 3418
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mBtnNext:Landroid/widget/ImageView;

    const/16 v6, 0x80

    invoke-static {v5, v1, v6}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->setVisibilityBasedOnFlag(Landroid/view/View;II)V

    .line 3419
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mBtnPlay:Landroid/widget/ImageView;

    const/16 v6, 0x3c

    invoke-static {v5, v1, v6}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->setVisibilityBasedOnFlag(Landroid/view/View;II)V

    .line 3425
    iget v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mCurrentPlayState:I

    invoke-direct {p0, v5}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->updatePlayPauseState(I)V

    .line 3426
    return-void

    .end local v1    # "flags":I
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_6
    move-object v5, v6

    .line 3367
    goto/16 :goto_0

    .restart local v2    # "sb":Ljava/lang/StringBuilder;
    .restart local v4    # "trackArtistAlbum":Ljava/lang/String;
    :cond_7
    move-object v4, v6

    .line 3385
    goto/16 :goto_1

    .line 3400
    .end local v4    # "trackArtistAlbum":Ljava/lang/String;
    :cond_8
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mMetadata:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;

    invoke-static {v5}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;->access$3700(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;)J

    move-result-wide v6

    const-wide/32 v8, 0x36ee80

    cmp-long v5, v6, v8

    if-ltz v5, :cond_9

    .line 3401
    const-string v3, "kk mm ss"

    .restart local v3    # "skeleton":Ljava/lang/String;
    goto :goto_2

    .line 3403
    .end local v3    # "skeleton":Ljava/lang/String;
    :cond_9
    const-string v3, "mm ss"

    .restart local v3    # "skeleton":Ljava/lang/String;
    goto :goto_2

    .line 3411
    .end local v3    # "skeleton":Ljava/lang/String;
    :cond_a
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->setSeekBarsEnabled(Z)V

    goto :goto_3
.end method

.method private sendMediaButtonClick(I)V
    .locals 3
    .param p1, "keyCode"    # I

    .prologue
    .line 3341
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mRemoteController:Landroid/media/RemoteController;

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/media/RemoteController;->sendMediaKeyEvent(Landroid/view/KeyEvent;)Z

    .line 3342
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mRemoteController:Landroid/media/RemoteController;

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/media/RemoteController;->sendMediaKeyEvent(Landroid/view/KeyEvent;)Z

    .line 3344
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMediaButtonClick :  keyCode - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3346
    return-void
.end method

.method private static setVisibilityBasedOnFlag(Landroid/view/View;II)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "flags"    # I
    .param p2, "flag"    # I

    .prologue
    .line 3441
    and-int v0, p1, p2

    if-eqz v0, :cond_0

    .line 3442
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3446
    :goto_0
    return-void

    .line 3444
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updatePlayPauseState(I)V
    .locals 8
    .param p1, "state"    # I

    .prologue
    .line 3453
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updatePlayPauseState(), old="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mCurrentPlayState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3455
    iget v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mCurrentPlayState:I

    if-ne p1, v3, :cond_0

    .line 3509
    :goto_0
    return-void

    .line 3460
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 3495
    sget v2, Lcom/sec/android/sviewcover/R$drawable;->music_control_btn_play:I

    .line 3499
    .local v2, "imageResId":I
    sget v1, Lcom/sec/android/sviewcover/R$string;->s_view_cover_transport_play_description:I

    .line 3503
    .local v1, "imageDescId":I
    :goto_1
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mMetadata:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mMetadata:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;

    invoke-static {v3}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;->access$3700(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    const/4 v0, 0x1

    .line 3504
    .local v0, "clientSupportsSeek":Z
    :goto_2
    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->setSeekBarsEnabled(Z)V

    .line 3506
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mBtnPlay:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3507
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mBtnPlay:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3508
    iput p1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mCurrentPlayState:I

    goto :goto_0

    .line 3463
    .end local v0    # "clientSupportsSeek":Z
    .end local v1    # "imageDescId":I
    .end local v2    # "imageResId":I
    :sswitch_0
    sget v2, Lcom/sec/android/sviewcover/R$drawable;->music_control_btn_play:I

    .line 3471
    .restart local v2    # "imageResId":I
    sget v1, Lcom/sec/android/sviewcover/R$string;->s_view_cover_transport_play_description:I

    .line 3472
    .restart local v1    # "imageDescId":I
    goto :goto_1

    .line 3476
    .end local v1    # "imageDescId":I
    .end local v2    # "imageResId":I
    :sswitch_1
    sget v2, Lcom/sec/android/sviewcover/R$drawable;->music_control_btn_pause:I

    .line 3480
    .restart local v2    # "imageResId":I
    sget v1, Lcom/sec/android/sviewcover/R$string;->s_view_cover_transport_pause_description:I

    .line 3481
    .restart local v1    # "imageDescId":I
    goto :goto_1

    .line 3485
    .end local v1    # "imageDescId":I
    .end local v2    # "imageResId":I
    :sswitch_2
    sget v2, Lcom/sec/android/sviewcover/R$drawable;->music_control_btn_play:I

    .line 3489
    .restart local v2    # "imageResId":I
    sget v1, Lcom/sec/android/sviewcover/R$string;->s_view_cover_transport_stop_description:I

    .line 3490
    .restart local v1    # "imageDescId":I
    goto :goto_1

    .line 3503
    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    .line 3460
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x8 -> :sswitch_2
        0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method private updateTransportControls(I)V
    .locals 1
    .param p1, "transportControlFlags"    # I

    .prologue
    .line 3165
    iput p1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mTransportControlFlags:I

    .line 3166
    and-int/lit16 v0, p1, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->setSeekBarsEnabled(Z)V

    .line 3167
    return-void

    .line 3166
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method cancelResetToMetadata()V
    .locals 1

    .prologue
    .line 3219
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mResetToMetadata:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3220
    return-void
.end method

.method clearMetadata()V
    .locals 1

    .prologue
    .line 3182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mPopulateMetadataWhenAttached:Landroid/media/RemoteController$MetadataEditor;

    .line 3183
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mMetadata:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;

    invoke-virtual {v0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;->clear()V

    .line 3184
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->populateMetadata()V

    .line 3185
    return-void
.end method

.method delayResetToMetadata()V
    .locals 4

    .prologue
    .line 3332
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mResetToMetadata:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3333
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mResetToMetadata:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v0, v2, v3}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3334
    return-void
.end method

.method isAllSoundOff(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3223
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "all_sound_off"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 3226
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 3125
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 3126
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mPopulateMetadataWhenAttached:Landroid/media/RemoteController$MetadataEditor;

    if-eqz v0, :cond_0

    .line 3127
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mPopulateMetadataWhenAttached:Landroid/media/RemoteController$MetadataEditor;

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->updateMetadata(Landroid/media/RemoteController$MetadataEditor;)V

    .line 3128
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 3133
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 3134
    return-void
.end method

.method protected onFinishInflate()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3233
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 3235
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v5

    const-string v6, "onFinishInflate()"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3237
    sget v5, Lcom/sec/android/sviewcover/R$id;->info_container:I

    invoke-virtual {p0, v5}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mInfoContainer:Landroid/view/ViewGroup;

    .line 3238
    sget v5, Lcom/sec/android/sviewcover/R$id;->metadata_container:I

    invoke-virtual {p0, v5}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mMetadataContainer:Landroid/view/ViewGroup;

    .line 3239
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mMetadataContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 3241
    sget v5, Lcom/sec/android/sviewcover/R$id;->music_home_widget:I

    invoke-virtual {p0, v5}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mMusicHomeWidgetLayout:Landroid/view/View;

    .line 3244
    sget v5, Lcom/sec/android/sviewcover/R$id;->title:I

    invoke-virtual {p0, v5}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mTrackTitle:Landroid/widget/TextView;

    .line 3245
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mTrackTitle:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 3246
    sget v5, Lcom/sec/android/sviewcover/R$id;->artist_album:I

    invoke-virtual {p0, v5}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mTrackArtistAlbum:Landroid/widget/TextView;

    .line 3247
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mTrackArtistAlbum:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 3248
    sget v5, Lcom/sec/android/sviewcover/R$id;->transient_seek:I

    invoke-virtual {p0, v5}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mTransientSeek:Landroid/view/View;

    .line 3250
    sget v5, Lcom/sec/android/sviewcover/R$id;->transient_seek_bar:I

    invoke-virtual {p0, v5}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/SeekBar;

    iput-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mTransientSeekBar:Landroid/widget/SeekBar;

    .line 3251
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mTransientSeekBar:Landroid/widget/SeekBar;

    iget-object v6, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 3252
    sget v5, Lcom/sec/android/sviewcover/R$id;->transient_seek_time_elapsed:I

    invoke-virtual {p0, v5}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mTransientSeekTimeElapsed:Landroid/widget/TextView;

    .line 3253
    sget v5, Lcom/sec/android/sviewcover/R$id;->transient_seek_time_remaining:I

    invoke-virtual {p0, v5}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mTransientSeekTimeTotal:Landroid/widget/TextView;

    .line 3255
    sget v5, Lcom/sec/android/sviewcover/R$id;->btn_prev:I

    invoke-virtual {p0, v5}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mBtnPrev:Landroid/widget/ImageView;

    .line 3256
    sget v5, Lcom/sec/android/sviewcover/R$id;->btn_play:I

    invoke-virtual {p0, v5}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mBtnPlay:Landroid/widget/ImageView;

    .line 3257
    sget v5, Lcom/sec/android/sviewcover/R$id;->btn_next:I

    invoke-virtual {p0, v5}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mBtnNext:Landroid/widget/ImageView;

    .line 3259
    const/4 v5, 0x3

    new-array v1, v5, [Landroid/view/View;

    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mBtnPrev:Landroid/widget/ImageView;

    aput-object v5, v1, v7

    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mBtnPlay:Landroid/widget/ImageView;

    aput-object v5, v1, v8

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mBtnNext:Landroid/widget/ImageView;

    aput-object v6, v1, v5

    .line 3262
    .local v1, "buttons":[Landroid/view/View;
    move-object v0, v1

    .local v0, "arr$":[Landroid/view/View;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 3263
    .local v4, "view":Landroid/view/View;
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mTransportCommandListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3262
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3267
    .end local v4    # "view":Landroid/view/View;
    :cond_0
    sget v5, Lcom/sec/android/sviewcover/R$id;->btn_volume:I

    invoke-virtual {p0, v5}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mBtnVolume:Landroid/widget/ImageView;

    .line 3268
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mBtnVolume:Landroid/widget/ImageView;

    new-instance v6, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$5;

    invoke-direct {v6, p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$5;-><init>(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3288
    sget v5, Lcom/sec/android/sviewcover/R$id;->btn_playlist:I

    invoke-virtual {p0, v5}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mPlayList:Landroid/widget/ImageView;

    .line 3289
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mPlayList:Landroid/widget/ImageView;

    new-instance v6, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$6;

    invoke-direct {v6, p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$6;-><init>(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3308
    return-void
.end method

.method public registerRemoteController()V
    .locals 2

    .prologue
    .line 3138
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mRemoteController:Landroid/media/RemoteController;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerRemoteController(Landroid/media/RemoteController;)Z

    .line 3139
    return-void
.end method

.method resetToMetadata()V
    .locals 1

    .prologue
    .line 3209
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mInfoContainer:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 3216
    return-void
.end method

.method scrubTo(I)V
    .locals 4
    .param p1, "progress"    # I

    .prologue
    .line 3147
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mRemoteController:Landroid/media/RemoteController;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/media/RemoteController;->seekTo(J)Z

    .line 3149
    return-void
.end method

.method setBadgeIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "bmp"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 3349
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mBadge:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3351
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 3352
    .local v0, "cm":Landroid/graphics/ColorMatrix;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 3353
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mBadge:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v2, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 3354
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mBadge:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setXfermode(Landroid/graphics/Xfermode;)V

    .line 3355
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mBadge:Landroid/widget/ImageView;

    const/16 v2, 0xef

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 3356
    return-void
.end method

.method setSeekBarDuration(J)V
    .locals 3
    .param p1, "duration"    # J

    .prologue
    .line 3449
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mTransientSeekBar:Landroid/widget/SeekBar;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 3450
    return-void
.end method

.method setSeekBarsEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 3170
    iget-boolean v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mSeekEnabled:Z

    if-ne p1, v0, :cond_0

    .line 3179
    :goto_0
    return-void

    .line 3173
    :cond_0
    iput-boolean p1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mSeekEnabled:Z

    goto :goto_0
.end method

.method public setSviewCoverView(Lcom/sec/android/sviewcover/SViewCoverView;)V
    .locals 0
    .param p1, "sViewCoverView"    # Lcom/sec/android/sviewcover/SViewCoverView;

    .prologue
    .line 3536
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mSviewCoverView:Lcom/sec/android/sviewcover/SViewCoverView;

    .line 3538
    return-void
.end method

.method public setTTSMessage()V
    .locals 3

    .prologue
    .line 3512
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurrentPlayState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mCurrentPlayState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3513
    iget v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mCurrentPlayState:I

    if-eqz v0, :cond_0

    .line 3514
    iget v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mCurrentPlayState:I

    packed-switch v0, :pswitch_data_0

    .line 3525
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mBtnPrev:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mContext:Landroid/content/Context;

    sget v2, Lcom/sec/android/sviewcover/R$string;->s_view_cover_transport_prev_description:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3527
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mBtnNext:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mContext:Landroid/content/Context;

    sget v2, Lcom/sec/android/sviewcover/R$string;->s_view_cover_transport_next_description:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3529
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mBtnVolume:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mContext:Landroid/content/Context;

    sget v2, Lcom/sec/android/sviewcover/R$string;->s_view_cover_transport_volume_description:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3531
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mPlayList:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mContext:Landroid/content/Context;

    sget v2, Lcom/sec/android/sviewcover/R$string;->s_view_cover_transport_playlist_description:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3533
    return-void

    .line 3516
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mBtnPlay:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mContext:Landroid/content/Context;

    sget v2, Lcom/sec/android/sviewcover/R$string;->s_view_cover_transport_play_description:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3520
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mBtnPlay:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mContext:Landroid/content/Context;

    sget v2, Lcom/sec/android/sviewcover/R$string;->s_view_cover_transport_pause_description:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3514
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setVisiblityPlayListButton(Z)V
    .locals 2
    .param p1, "state"    # Z

    .prologue
    .line 3311
    if-eqz p1, :cond_0

    .line 3312
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mPlayList:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3315
    :goto_0
    return-void

    .line 3314
    :cond_0
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mPlayList:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public unRegisterRemoteController()V
    .locals 2

    .prologue
    .line 3143
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mRemoteController:Landroid/media/RemoteController;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterRemoteController(Landroid/media/RemoteController;)V

    .line 3144
    return-void
.end method

.method updateMetadata(Landroid/media/RemoteController$MetadataEditor;)V
    .locals 4
    .param p1, "data"    # Landroid/media/RemoteController$MetadataEditor;

    .prologue
    .line 3188
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3189
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mMetadata:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mMetadata:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;

    invoke-static {v2}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;->access$3400(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/media/RemoteController$MetadataEditor;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;->access$3402(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;Ljava/lang/String;)Ljava/lang/String;

    .line 3191
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mMetadata:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mMetadata:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;

    invoke-static {v2}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;->access$3500(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/media/RemoteController$MetadataEditor;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;->access$3502(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;Ljava/lang/String;)Ljava/lang/String;

    .line 3193
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mMetadata:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mMetadata:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;

    invoke-static {v2}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;->access$3600(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/media/RemoteController$MetadataEditor;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;->access$3602(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;Ljava/lang/String;)Ljava/lang/String;

    .line 3195
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mMetadata:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;

    const/16 v1, 0x9

    const-wide/16 v2, -0x1

    invoke-virtual {p1, v1, v2, v3}, Landroid/media/RemoteController$MetadataEditor;->getLong(IJ)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;->access$3702(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;J)J

    .line 3197
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMetadata.duration : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mMetadata:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;

    invoke-static {v2}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;->access$3700(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3198
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mMetadata:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;

    const/16 v1, 0x64

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mMetadata:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;

    invoke-static {v2}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;->access$3800(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/media/RemoteController$MetadataEditor;->getBitmap(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;->access$3802(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 3200
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->populateMetadata()V

    .line 3205
    :goto_0
    return-void

    .line 3202
    :cond_0
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAttachedToWindow : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->isAttachedToWindow()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3203
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mPopulateMetadataWhenAttached:Landroid/media/RemoteController$MetadataEditor;

    goto :goto_0
.end method

.method updateSeekBars()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 3152
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mRemoteController:Landroid/media/RemoteController;

    invoke-virtual {v2}, Landroid/media/RemoteController;->getEstimatedMediaPosition()J

    move-result-wide v2

    long-to-int v0, v2

    .line 3153
    .local v0, "position":I
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Estimated time:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3154
    if-lez v0, :cond_0

    .line 3155
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mTransientSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 3156
    const/4 v1, 0x1

    .line 3161
    :goto_0
    return v1

    .line 3158
    :cond_0
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updating seek bars; received invalid estimated media position ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "). Disabling seek."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3160
    invoke-virtual {p0, v1}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->setSeekBarsEnabled(Z)V

    goto :goto_0
.end method

.method updateSeekDisplay()V
    .locals 4

    .prologue
    .line 3318
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSeekDisplay() mMetadata ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mMetadata:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mRemoteController ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mRemoteController:Landroid/media/RemoteController;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mFormat = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3320
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mMetadata:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mRemoteController:Landroid/media/RemoteController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mFormat:Ljava/text/DateFormat;

    if-eqz v0, :cond_0

    .line 3321
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mTempDate:Ljava/util/Date;

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mRemoteController:Landroid/media/RemoteController;

    invoke-virtual {v1}, Landroid/media/RemoteController;->getEstimatedMediaPosition()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Date;->setTime(J)V

    .line 3322
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mTransientSeekTimeElapsed:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mFormat:Ljava/text/DateFormat;

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mTempDate:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3323
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mTempDate:Ljava/util/Date;

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mMetadata:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;

    invoke-static {v1}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;->access$3700(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Date;->setTime(J)V

    .line 3324
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mTransientSeekTimeTotal:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mFormat:Ljava/text/DateFormat;

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mTempDate:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3326
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSeekDisplay timeElapsed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mTempDate:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " duration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mMetadata:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;

    invoke-static {v2}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;->access$3700(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$Metadata;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3329
    :cond_0
    return-void
.end method
