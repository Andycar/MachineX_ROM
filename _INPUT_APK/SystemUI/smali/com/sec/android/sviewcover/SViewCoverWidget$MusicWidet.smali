.class public Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;
.super Landroid/widget/LinearLayout;
.source "SViewCoverWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/sviewcover/SViewCoverWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MusicWidet"
.end annotation


# static fields
.field private static final MUSICPLAYER_CHECK_PLAY_STATUS:Ljava/lang/String; = "com.sec.android.app.music.musicservicecommand.checkplaystatus"

.field private static final MUSICPLAYER_MEDIA_INFO:Ljava/lang/String; = "com.sec.android.music.musicservicecommnad.mediainfo"

.field private static final TAG:Ljava/lang/String; = "ClearCoverMusicWidet"


# instance fields
.field private final DEBUG:Z

.field private final MSG_MEDIA_UPDATE:I

.field private final MSG_MUSIC_WIDGET_REMOVED:I

.field private currentAlbumID:Ljava/lang/String;

.field private currentArtist:Ljava/lang/String;

.field private currentTitle:Ljava/lang/String;

.field private mAlbumArtBitmap:Landroid/graphics/Bitmap;

.field private mAlbumArtWithImage:Landroid/widget/ImageView;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private mIsPlaying:Z

.field private mMediaUri:Landroid/net/Uri;

.field private mMusicHandler:Landroid/os/Handler;

.field protected mPlaying:Z

.field private mTrackTitle:Landroid/widget/TextView;

.field private mTransportControls:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 3597
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3545
    iput-boolean v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->DEBUG:Z

    .line 3559
    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->currentTitle:Ljava/lang/String;

    .line 3561
    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->currentArtist:Ljava/lang/String;

    .line 3563
    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->currentAlbumID:Ljava/lang/String;

    .line 3565
    const/16 v0, 0x12c2

    iput v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->MSG_MEDIA_UPDATE:I

    .line 3566
    const/16 v0, 0x12c3

    iput v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->MSG_MUSIC_WIDGET_REMOVED:I

    .line 3568
    iput-boolean v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->mIsPlaying:Z

    .line 3570
    new-instance v0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet$1;

    invoke-direct {v0, p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet$1;-><init>(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;)V

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->mMusicHandler:Landroid/os/Handler;

    .line 3599
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->mContentResolver:Landroid/content/ContentResolver;

    .line 3601
    new-instance v0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet$2;

    invoke-direct {v0, p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet$2;-><init>(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;)V

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 3634
    const-string v0, "ClearCoverMusicWidet"

    const-string v1, "MusicWidet ()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3636
    return-void
.end method

.method static synthetic access$4200(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;IILandroid/net/Uri;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/net/Uri;

    .prologue
    .line 3541
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->handleMediaUpdate(IILandroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;

    .prologue
    .line 3541
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->mTrackTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;

    .prologue
    .line 3541
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->mAlbumArtWithImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;

    .prologue
    .line 3541
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->mMusicHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private handleMediaUpdate(IILandroid/net/Uri;)V
    .locals 15
    .param p1, "isPlaying"    # I
    .param p2, "isStop"    # I
    .param p3, "mediaUri"    # Landroid/net/Uri;

    .prologue
    .line 3666
    const/4 v1, 0x1

    move/from16 v0, p1

    if-ne v0, v1, :cond_2

    const/4 v7, 0x1

    .line 3667
    .local v7, "bIsPlaying":Z
    :goto_0
    const/4 v1, 0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_3

    const/4 v8, 0x1

    .line 3669
    .local v8, "bIsStop":Z
    :goto_1
    if-eqz v7, :cond_14

    if-nez v8, :cond_14

    .line 3670
    if-nez p3, :cond_4

    .line 3673
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->mTrackTitle:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 3674
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->mTrackTitle:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3675
    :cond_0
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->mAlbumArtWithImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 3676
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->mAlbumArtWithImage:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3800
    :cond_1
    :goto_2
    return-void

    .line 3666
    .end local v7    # "bIsPlaying":Z
    .end local v8    # "bIsStop":Z
    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    .line 3667
    .restart local v7    # "bIsPlaying":Z
    :cond_3
    const/4 v8, 0x0

    goto :goto_1

    .line 3677
    .restart local v8    # "bIsStop":Z
    :cond_4
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->mMediaUri:Landroid/net/Uri;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3681
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->mTrackTitle:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    .line 3682
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->mTrackTitle:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3683
    :cond_5
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->mAlbumArtWithImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 3684
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->mAlbumArtWithImage:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 3689
    :cond_6
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->mMediaUri:Landroid/net/Uri;

    .line 3690
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p3

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 3692
    .local v12, "mCursor":Landroid/database/Cursor;
    if-eqz v12, :cond_12

    .line 3693
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_10

    .line 3694
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3696
    :try_start_0
    const-string v1, "title"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->currentTitle:Ljava/lang/String;

    .line 3698
    const-string v1, "artist"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->currentArtist:Ljava/lang/String;

    .line 3700
    const-string v1, "album_id"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->currentAlbumID:Ljava/lang/String;

    .line 3703
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->currentTitle:Ljava/lang/String;

    if-nez v1, :cond_7

    .line 3704
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sec/android/sviewcover/R$string;->clearcover_music_widget_unkown:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->currentTitle:Ljava/lang/String;

    .line 3707
    :cond_7
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->currentArtist:Ljava/lang/String;

    if-eqz v1, :cond_8

    const-string v1, "<unknown>"

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->currentArtist:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 3709
    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sec/android/sviewcover/R$string;->clearcover_music_widget_unkown:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->currentArtist:Ljava/lang/String;

    .line 3712
    :cond_9
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->currentAlbumID:Ljava/lang/String;

    if-nez v1, :cond_a

    .line 3713
    const-string v1, "0"

    iput-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->currentAlbumID:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3728
    :cond_a
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->currentTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->currentArtist:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 3730
    .local v14, "strTitle":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->mTrackTitle:Landroid/widget/TextView;

    if-eqz v1, :cond_b

    .line 3731
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->mTrackTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3732
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->mTrackTitle:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 3734
    :cond_b
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_c

    .line 3736
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://media/external/audio/albumart/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->currentAlbumID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 3739
    .local v9, "currentAlbumArtURI":Landroid/net/Uri;
    const/4 v13, 0x0

    .line 3740
    .local v13, "mInputStream":Ljava/io/InputStream;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->mAlbumArtBitmap:Landroid/graphics/Bitmap;

    .line 3741
    new-instance v11, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v11}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 3742
    .local v11, "mBitmapOptions":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput v1, v11, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 3744
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->mAlbumArtWithImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_c

    .line 3745
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->mAlbumArtWithImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    iput v1, v11, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 3746
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->mAlbumArtWithImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    iput v1, v11, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 3748
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, v9}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v13

    .line 3757
    :goto_4
    if-eqz v13, :cond_c

    .line 3758
    const/4 v1, 0x0

    invoke-static {v13, v1, v11}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->mAlbumArtBitmap:Landroid/graphics/Bitmap;

    .line 3761
    :try_start_2
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 3771
    .end local v9    # "currentAlbumArtURI":Landroid/net/Uri;
    .end local v11    # "mBitmapOptions":Landroid/graphics/BitmapFactory$Options;
    .end local v13    # "mInputStream":Ljava/io/InputStream;
    :cond_c
    :goto_5
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->mAlbumArtBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_11

    .line 3773
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->mAlbumArtWithImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_d

    .line 3774
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->mAlbumArtWithImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->mAlbumArtBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3779
    :cond_d
    :goto_6
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->mTrackTitle:Landroid/widget/TextView;

    if-eqz v1, :cond_e

    .line 3780
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->mTrackTitle:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3781
    :cond_e
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->mAlbumArtWithImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_f

    .line 3782
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->mAlbumArtWithImage:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3784
    :cond_f
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 3715
    .end local v14    # "strTitle":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 3716
    .local v10, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v10}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_3

    .line 3721
    .end local v10    # "e":Ljava/lang/IllegalArgumentException;
    :cond_10
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sec/android/sviewcover/R$string;->clearcover_music_widget_unkown:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->currentTitle:Ljava/lang/String;

    .line 3723
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sec/android/sviewcover/R$string;->clearcover_music_widget_unkown:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->currentArtist:Ljava/lang/String;

    .line 3725
    const-string v1, "0"

    iput-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->currentAlbumID:Ljava/lang/String;

    goto/16 :goto_3

    .line 3753
    .restart local v9    # "currentAlbumArtURI":Landroid/net/Uri;
    .restart local v11    # "mBitmapOptions":Landroid/graphics/BitmapFactory$Options;
    .restart local v13    # "mInputStream":Ljava/io/InputStream;
    .restart local v14    # "strTitle":Ljava/lang/String;
    :catch_1
    move-exception v10

    .line 3754
    .restart local v10    # "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v10}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 3755
    const-string v1, "ClearCoverMusicWidet"

    const-string v2, "Maybe unknown url."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 3775
    .end local v9    # "currentAlbumArtURI":Landroid/net/Uri;
    .end local v10    # "e":Ljava/lang/IllegalArgumentException;
    .end local v11    # "mBitmapOptions":Landroid/graphics/BitmapFactory$Options;
    .end local v13    # "mInputStream":Ljava/io/InputStream;
    :cond_11
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->mAlbumArtBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_d

    .line 3776
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->mAlbumArtWithImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_d

    .line 3777
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->mAlbumArtWithImage:Landroid/widget/ImageView;

    sget v2, Lcom/sec/android/sviewcover/R$drawable;->appce_ic_music:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_6

    .line 3786
    .end local v14    # "strTitle":Ljava/lang/String;
    :cond_12
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->mTrackTitle:Landroid/widget/TextView;

    if-eqz v1, :cond_13

    .line 3787
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->mTrackTitle:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3788
    :cond_13
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->mAlbumArtWithImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 3789
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->mAlbumArtWithImage:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 3795
    .end local v12    # "mCursor":Landroid/database/Cursor;
    :cond_14
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->mTrackTitle:Landroid/widget/TextView;

    if-eqz v1, :cond_15

    .line 3796
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->mTrackTitle:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3797
    :cond_15
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->mAlbumArtWithImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 3798
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->mAlbumArtWithImage:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 3762
    .restart local v9    # "currentAlbumArtURI":Landroid/net/Uri;
    .restart local v11    # "mBitmapOptions":Landroid/graphics/BitmapFactory$Options;
    .restart local v12    # "mCursor":Landroid/database/Cursor;
    .restart local v13    # "mInputStream":Ljava/io/InputStream;
    .restart local v14    # "strTitle":Ljava/lang/String;
    :catch_2
    move-exception v1

    goto/16 :goto_5

    .line 3750
    :catch_3
    move-exception v1

    goto/16 :goto_4
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 3648
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 3649
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3650
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "com.sec.android.music.musicservicecommnad.mediainfo"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3651
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3653
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 3654
    .local v1, "pkgFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3655
    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 3656
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3657
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 3661
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 3663
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 3640
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 3641
    sget v0, Lcom/sec/android/sviewcover/R$id;->transport_controls:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->mTransportControls:Landroid/widget/LinearLayout;

    .line 3642
    sget v0, Lcom/sec/android/sviewcover/R$id;->clear_title:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->mTrackTitle:Landroid/widget/TextView;

    .line 3643
    sget v0, Lcom/sec/android/sviewcover/R$id;->clear_albumart:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidet;->mAlbumArtWithImage:Landroid/widget/ImageView;

    .line 3644
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 3810
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 3805
    return-void
.end method
