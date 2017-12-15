.class public Landroid/media/MediaScanner;
.super Ljava/lang/Object;
.source "MediaScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaScanner$1;,
        Landroid/media/MediaScanner$WplHandler;,
        Landroid/media/MediaScanner$MediaBulkDeleter;,
        Landroid/media/MediaScanner$MyMediaScannerClient;,
        Landroid/media/MediaScanner$FileParsingTime;,
        Landroid/media/MediaScanner$PlaylistEntry;,
        Landroid/media/MediaScanner$FileEntry;
    }
.end annotation


# static fields
.field private static final ALARMS_DIR:Ljava/lang/String; = "/alarms/"

.field private static final DATE_MODIFIED_PLAYLISTS_COLUMN_INDEX:I = 0x2

.field private static final DB_FILES_NUMBER_CACHING_LIMITATION:I = 0x1b58

.field private static final DEFAULT_RINGTONE_PROPERTY_PREFIX:Ljava/lang/String; = "ro.config."

.field private static final ENABLE_BULK_INSERTS:Z = true

.field private static final FILES_PRESCAN_DATE_MODIFIED_COLUMN_INDEX:I = 0x3

.field private static final FILES_PRESCAN_FORMAT_COLUMN_INDEX:I = 0x2

.field private static final FILES_PRESCAN_ID_COLUMN_INDEX:I = 0x0

.field private static final FILES_PRESCAN_PATH_COLUMN_INDEX:I = 0x1

.field private static final FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

.field private static final ID3_GENRES:[Ljava/lang/String;

.field private static final ID_PLAYLISTS_COLUMN_INDEX:I = 0x0

.field private static final ID_PROJECTION:[Ljava/lang/String;

.field private static final ID_PROJECTION_COUNT:[Ljava/lang/String;

.field private static final MUSIC_DIR:Ljava/lang/String; = "/music/"

.field private static final NOTIFICATIONS_DIR:Ljava/lang/String; = "/notifications/"

.field private static final PATH_PLAYLISTS_COLUMN_INDEX:I = 0x1

.field private static final PLAYLIST_MEMBERS_PROJECTION:[Ljava/lang/String;

.field private static final PODCAST_DIR:Ljava/lang/String; = "/podcasts/"

.field private static final RINGTONES_DIR:Ljava/lang/String; = "/ringtones/"

.field private static final TAG:Ljava/lang/String; = "MediaScanner"

.field private static ejectedPath:Ljava/lang/String;

.field private static mExternalStorageSdPath:Ljava/lang/String;

.field private static mMediaPaths:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mNoMediaPaths:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static storageManager:Landroid/os/storage/StorageManager;

.field private static syncEjectedPath:Ljava/lang/Object;


# instance fields
.field private beforePrescanCount:I

.field private contentsCount:I

.field private final isLogEnabled:Z

.field private mAudioUri:Landroid/net/Uri;

.field private final mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

.field private mCaseInsensitivePaths:Z

.field private final mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

.field private mContext:Landroid/content/Context;

.field private mDefaultAlarmAlertFilename:Ljava/lang/String;

.field private mDefaultAlarmSet:Z

.field private mDefaultMmsNotificationFilename:Ljava/lang/String;

.field private mDefaultNotificationFilename:Ljava/lang/String;

.field private mDefaultNotificationSet:Z

.field private mDefaultRingtone2Filename:Ljava/lang/String;

.field private mDefaultRingtone3Filename:Ljava/lang/String;

.field private mDefaultRingtoneFilename:Ljava/lang/String;

.field private mDefaultRingtoneSet:Z

.field private mDrmManagerClient:Landroid/drm/DrmManagerClient;

.field private final mExternalIsEmulated:Z

.field private mExternalStoragePath:Ljava/lang/String;

.field private mFileCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/media/MediaScanner$FileEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mFileParsingStat:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/media/MediaScanner$FileParsingTime;",
            ">;"
        }
    .end annotation
.end field

.field private mFilesUri:Landroid/net/Uri;

.field private mFilesUriNoNotify:Landroid/net/Uri;

.field private mImagesUri:Landroid/net/Uri;

.field private mInternalStoragePath:Ljava/lang/String;

.field private mMediaInserter:Landroid/media/MediaInserter;

.field private mMediaProvider:Landroid/content/IContentProvider;

.field private mMtpObjectHandle:I

.field private mNativeContext:J

.field private mOriginalCount:I

.field private mPackageName:Ljava/lang/String;

.field private mPlayLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/MediaScanner$FileEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mPlaylistEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/MediaScanner$PlaylistEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mPlaylistsUri:Landroid/net/Uri;

.field private mProcessGenres:Z

.field private mProcessPlaylists:Z

.field private mThumbsUri:Landroid/net/Uri;

.field private mTotalBitmapDecodingTime:J

.field private mTotalBulkInserterTime:J

.field private mTotalCheckedDirectories:J

.field private mTotalCheckedFiles:J

.field private mTotalDeadThumbnailTime:J

.field private mTotalExifExtractingTime:J

.field private mTotalInserted:J

.field private mTotalMakeEntryTime:J

.field private mTotalParsingTime:J

.field private mTotalUpdated:J

.field private mVideoUri:Landroid/net/Uri;

.field private mWasEmptyPriorToScan:Z

.field private useHashMap:Z


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 128
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 129
    invoke-static {}, Landroid/media/MediaScanner;->native_init()V

    .line 137
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "_data"

    aput-object v1, v0, v5

    const-string v1, "format"

    aput-object v1, v0, v7

    const-string v1, "date_modified"

    aput-object v1, v0, v8

    sput-object v0, Landroid/media/MediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    .line 144
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    sput-object v0, Landroid/media/MediaScanner;->ID_PROJECTION:[Ljava/lang/String;

    .line 148
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "COUNT(%s)"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "_id"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Landroid/media/MediaScanner;->ID_PROJECTION_COUNT:[Ljava/lang/String;

    .line 155
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "playlist_id"

    aput-object v1, v0, v4

    sput-object v0, Landroid/media/MediaScanner;->PLAYLIST_MEMBERS_PROJECTION:[Ljava/lang/String;

    .line 169
    const/16 v0, 0x94

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Blues"

    aput-object v1, v0, v4

    const-string v1, "Classic Rock"

    aput-object v1, v0, v5

    const-string v1, "Country"

    aput-object v1, v0, v7

    const-string v1, "Dance"

    aput-object v1, v0, v8

    const/4 v1, 0x4

    const-string v2, "Disco"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Funk"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Grunge"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Hip-Hop"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Jazz"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Metal"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "New Age"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Oldies"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Other"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Pop"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "R&B"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Rap"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Reggae"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Techno"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Industrial"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Alternative"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "Ska"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "Death Metal"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Pranks"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Soundtrack"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Euro-Techno"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Ambient"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "Trip-Hop"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "Vocal"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "Jazz+Funk"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "Fusion"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "Trance"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "Classical"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "Instrumental"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "Acid"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "House"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "Game"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "Sound Clip"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "Gospel"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "Noise"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "AlternRock"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "Bass"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "Soul"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "Punk"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "Space"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "Meditative"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "Instrumental Pop"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "Instrumental Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "Ethnic"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "Gothic"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "Darkwave"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "Techno-Industrial"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "Electronic"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "Pop-Folk"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "Eurodance"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "Dream"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "Southern Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "Comedy"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "Cult"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "Gangsta"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "Top 40"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "Christian Rap"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "Pop/Funk"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "Jungle"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "Native American"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "Cabaret"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "New Wave"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "Psychadelic"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "Rave"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "Showtunes"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "Trailer"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "Lo-Fi"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "Tribal"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "Acid Punk"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "Acid Jazz"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "Polka"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "Retro"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "Musical"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "Rock & Roll"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "Hard Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "Folk"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "Folk-Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "National Folk"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "Swing"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "Fast Fusion"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "Bebob"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "Latin"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "Revival"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "Celtic"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "Bluegrass"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "Avantgarde"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "Gothic Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "Progressive Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "Psychedelic Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "Symphonic Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "Slow Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "Big Band"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "Chorus"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "Easy Listening"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "Acoustic"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "Humour"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "Speech"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "Chanson"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "Opera"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "Chamber Music"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "Sonata"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "Symphony"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "Booty Bass"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "Primus"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "Porn Groove"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "Satire"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "Slow Jam"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "Club"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "Tango"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "Samba"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "Folklore"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "Ballad"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "Power Ballad"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "Rhythmic Soul"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "Freestyle"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "Duet"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "Punk Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "Drum Solo"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "A capella"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "Euro-House"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "Dance Hall"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "Goa"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "Drum & Bass"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "Club-House"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "Hardcore"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "Terror"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "Indie"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, "Britpop"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    aput-object v6, v0, v1

    const/16 v1, 0x86

    const-string v2, "Polsk Punk"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string v2, "Beat"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string v2, "Christian Gangsta"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "Heavy Metal"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string v2, "Black Metal"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string v2, "Crossover"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string v2, "Contemporary Christian"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string v2, "Christian Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "Merengue"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, "Salsa"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, "Thrash Metal"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string v2, "Anime"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, "JPop"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string v2, "Synthpop"

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/MediaScanner;->ID3_GENRES:[Ljava/lang/String;

    .line 341
    sput-object v6, Landroid/media/MediaScanner;->mExternalStorageSdPath:Ljava/lang/String;

    .line 459
    sput-object v6, Landroid/media/MediaScanner;->storageManager:Landroid/os/storage/StorageManager;

    .line 461
    sput-object v6, Landroid/media/MediaScanner;->ejectedPath:Ljava/lang/String;

    .line 462
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/media/MediaScanner;->syncEjectedPath:Ljava/lang/Object;

    .line 2188
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/MediaScanner;->mNoMediaPaths:Ljava/util/HashMap;

    .line 2189
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/MediaScanner;->mMediaPaths:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    .line 464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-boolean v0, p0, Landroid/media/MediaScanner;->isLogEnabled:Z

    .line 338
    iput-object v1, p0, Landroid/media/MediaScanner;->mExternalStoragePath:Ljava/lang/String;

    .line 339
    iput-object v1, p0, Landroid/media/MediaScanner;->mInternalStoragePath:Ljava/lang/String;

    .line 344
    iput-boolean v0, p0, Landroid/media/MediaScanner;->useHashMap:Z

    .line 345
    iput v0, p0, Landroid/media/MediaScanner;->contentsCount:I

    .line 356
    iput-boolean v0, p0, Landroid/media/MediaScanner;->mWasEmptyPriorToScan:Z

    .line 386
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 415
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    .line 445
    iput-wide v2, p0, Landroid/media/MediaScanner;->mTotalMakeEntryTime:J

    .line 446
    iput-wide v2, p0, Landroid/media/MediaScanner;->mTotalParsingTime:J

    .line 447
    iput-wide v2, p0, Landroid/media/MediaScanner;->mTotalBitmapDecodingTime:J

    .line 448
    iput-wide v2, p0, Landroid/media/MediaScanner;->mTotalExifExtractingTime:J

    .line 449
    iput-wide v2, p0, Landroid/media/MediaScanner;->mTotalBulkInserterTime:J

    .line 450
    iput-wide v2, p0, Landroid/media/MediaScanner;->mTotalDeadThumbnailTime:J

    .line 451
    iput-wide v2, p0, Landroid/media/MediaScanner;->mTotalCheckedFiles:J

    .line 452
    iput-wide v2, p0, Landroid/media/MediaScanner;->mTotalCheckedDirectories:J

    .line 453
    iput-wide v2, p0, Landroid/media/MediaScanner;->mTotalInserted:J

    .line 454
    iput-wide v2, p0, Landroid/media/MediaScanner;->mTotalUpdated:J

    .line 458
    iput-object v1, p0, Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    .line 593
    new-instance v0, Landroid/media/MediaScanner$MyMediaScannerClient;

    invoke-direct {v0, p0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;-><init>(Landroid/media/MediaScanner;Landroid/media/MediaScanner$1;)V

    iput-object v0, p0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    .line 465
    invoke-direct {p0}, Landroid/media/MediaScanner;->native_setup()V

    .line 466
    iput-object p1, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    .line 467
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    .line 468
    iget-object v0, p0, Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput v4, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 469
    iget-object v0, p0, Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 471
    invoke-direct {p0}, Landroid/media/MediaScanner;->setDefaultRingtoneFileNames()V

    .line 473
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mExternalStoragePath:Ljava/lang/String;

    .line 474
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mInternalStoragePath:Ljava/lang/String;

    .line 476
    sget-object v0, Landroid/media/MediaScanner;->mExternalStorageSdPath:Ljava/lang/String;

    if-nez v0, :cond_8a

    .line 477
    invoke-static {p1}, Landroid/media/MediaScanner;->setExternalStorageSdPath(Landroid/content/Context;)V

    .line 478
    const-string v0, "MediaScanner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Constructor set externalStorageSdPath : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/media/MediaScanner;->mExternalStorageSdPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :cond_8a
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/MediaScanner;->mExternalIsEmulated:Z

    .line 483
    return-void
.end method

.method private SettingDefaultSoundAgain(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .registers 20
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "URIsetting"    # Landroid/net/Uri;
    .param p3, "URIInternalMedia"    # Landroid/net/Uri;
    .param p4, "settingString"    # Ljava/lang/String;
    .param p5, "defaultMediaName"    # Ljava/lang/String;

    .prologue
    .line 2695
    const/4 v9, 0x0

    .line 2696
    .local v9, "resultMediaCursor":Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 2697
    .local v10, "resultSettingCursor":Landroid/database/Cursor;
    const-wide/16 v12, 0x0

    .line 2699
    .local v12, "rowId":J
    invoke-static/range {p5 .. p5}, Landroid/media/MediaScanner;->encodeStringResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2700
    .local v11, "str":Ljava/lang/String;
    const-string v2, "MediaScanner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "system "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2701
    const/4 v11, 0x0

    .line 2703
    const/4 v4, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "name = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 2704
    if-eqz v10, :cond_18f

    .line 2705
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_16e

    .line 2707
    const/4 v4, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_data like \'%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move-object/from16 v3, p3

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 2708
    if-eqz v9, :cond_14d

    .line 2709
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_11e

    .line 2711
    const/4 v8, 0x0

    .line 2712
    .local v8, "bResult":Z
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2713
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 2714
    move-object/from16 v0, p3

    invoke-static {v0, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    .line 2715
    const-string v2, "MediaScanner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Write again. Default "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]  Result is ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2717
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEBUG_MEDIASCANNER_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_AGAIN"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MediaScanner : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-static {v0, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2722
    .end local v8    # "bResult":Z
    :goto_117
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2730
    :goto_11a
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2734
    :goto_11d
    return-void

    .line 2720
    :cond_11e
    const-string v2, "MediaScanner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Warning! getCount() of Cursor for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in internal DB is ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_117

    .line 2724
    :cond_14d
    const-string v2, "MediaScanner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Warning! Cursor for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in internal DB is null."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11a

    .line 2728
    :cond_16e
    const-string v2, "MediaScanner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OK. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is already exist in setting DB."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11a

    .line 2732
    :cond_18f
    const-string v2, "MediaScanner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Warning! Cursor for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in setting DB is null."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11d
.end method

.method static synthetic access$100(Ljava/lang/String;)Z
    .registers 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 125
    invoke-static {p0}, Landroid/media/MediaScanner;->isNoMediaFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1008(Landroid/media/MediaScanner;)J
    .registers 5
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 125
    iget-wide v0, p0, Landroid/media/MediaScanner;->mTotalCheckedFiles:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroid/media/MediaScanner;->mTotalCheckedFiles:J

    return-wide v0
.end method

.method static synthetic access$1100(Landroid/media/MediaScanner;)Landroid/media/MediaInserter;
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 125
    iget-object v0, p0, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/media/MediaScanner;)I
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 125
    iget v0, p0, Landroid/media/MediaScanner;->mMtpObjectHandle:I

    return v0
.end method

.method static synthetic access$1300(Landroid/media/MediaScanner;)Z
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 125
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mExternalIsEmulated:Z

    return v0
.end method

.method static synthetic access$1400(Landroid/media/MediaScanner;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 125
    iget-object v0, p0, Landroid/media/MediaScanner;->mExternalStoragePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
    .registers 4
    .param p0, "x0"    # Landroid/media/MediaScanner;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/media/MediaScannerClient;

    .prologue
    .line 125
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaScanner;->processFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    return-void
.end method

.method static synthetic access$1614(Landroid/media/MediaScanner;J)J
    .registers 6
    .param p0, "x0"    # Landroid/media/MediaScanner;
    .param p1, "x1"    # J

    .prologue
    .line 125
    iget-wide v0, p0, Landroid/media/MediaScanner;->mTotalParsingTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/media/MediaScanner;->mTotalParsingTime:J

    return-wide v0
.end method

.method static synthetic access$1714(Landroid/media/MediaScanner;J)J
    .registers 6
    .param p0, "x0"    # Landroid/media/MediaScanner;
    .param p1, "x1"    # J

    .prologue
    .line 125
    iget-wide v0, p0, Landroid/media/MediaScanner;->mTotalBitmapDecodingTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/media/MediaScanner;->mTotalBitmapDecodingTime:J

    return-wide v0
.end method

.method static synthetic access$1800(Landroid/media/MediaScanner;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 125
    iget-object v0, p0, Landroid/media/MediaScanner;->mFileParsingStat:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/media/MediaScanner;)Z
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 125
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mProcessGenres:Z

    return v0
.end method

.method static synthetic access$200(Landroid/media/MediaScanner;)Z
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 125
    invoke-direct {p0}, Landroid/media/MediaScanner;->isDrmEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 125
    sget-object v0, Landroid/media/MediaScanner;->ID3_GENRES:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 125
    iget-object v0, p0, Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method static synthetic access$2214(Landroid/media/MediaScanner;J)J
    .registers 6
    .param p0, "x0"    # Landroid/media/MediaScanner;
    .param p1, "x1"    # J

    .prologue
    .line 125
    iget-wide v0, p0, Landroid/media/MediaScanner;->mTotalExifExtractingTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/media/MediaScanner;->mTotalExifExtractingTime:J

    return-wide v0
.end method

.method static synthetic access$2300(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 125
    iget-object v0, p0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2400(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 125
    iget-object v0, p0, Landroid/media/MediaScanner;->mVideoUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2500(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 125
    iget-object v0, p0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2600(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 125
    iget-object v0, p0, Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2700(Landroid/media/MediaScanner;)Z
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 125
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mWasEmptyPriorToScan:Z

    return v0
.end method

.method static synthetic access$2800(Landroid/media/MediaScanner;)Z
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 125
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mDefaultNotificationSet:Z

    return v0
.end method

.method static synthetic access$2802(Landroid/media/MediaScanner;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaScanner;
    .param p1, "x1"    # Z

    .prologue
    .line 125
    iput-boolean p1, p0, Landroid/media/MediaScanner;->mDefaultNotificationSet:Z

    return p1
.end method

.method static synthetic access$2900(Landroid/media/MediaScanner;)Z
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 125
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mDefaultRingtoneSet:Z

    return v0
.end method

.method static synthetic access$2902(Landroid/media/MediaScanner;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaScanner;
    .param p1, "x1"    # Z

    .prologue
    .line 125
    iput-boolean p1, p0, Landroid/media/MediaScanner;->mDefaultRingtoneSet:Z

    return p1
.end method

.method static synthetic access$300(Landroid/media/MediaScanner;)Z
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 125
    iget-boolean v0, p0, Landroid/media/MediaScanner;->useHashMap:Z

    return v0
.end method

.method static synthetic access$3000(Landroid/media/MediaScanner;)Z
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 125
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mDefaultAlarmSet:Z

    return v0
.end method

.method static synthetic access$3002(Landroid/media/MediaScanner;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaScanner;
    .param p1, "x1"    # Z

    .prologue
    .line 125
    iput-boolean p1, p0, Landroid/media/MediaScanner;->mDefaultAlarmSet:Z

    return p1
.end method

.method static synthetic access$3100(Landroid/media/MediaScanner;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 125
    iget-object v0, p0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3200(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 125
    iget-object v0, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    return-object v0
.end method

.method static synthetic access$3308(Landroid/media/MediaScanner;)J
    .registers 5
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 125
    iget-wide v0, p0, Landroid/media/MediaScanner;->mTotalInserted:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroid/media/MediaScanner;->mTotalInserted:J

    return-wide v0
.end method

.method static synthetic access$3414(Landroid/media/MediaScanner;J)J
    .registers 6
    .param p0, "x0"    # Landroid/media/MediaScanner;
    .param p1, "x1"    # J

    .prologue
    .line 125
    iget-wide v0, p0, Landroid/media/MediaScanner;->mTotalBulkInserterTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/media/MediaScanner;->mTotalBulkInserterTime:J

    return-wide v0
.end method

.method static synthetic access$3508(Landroid/media/MediaScanner;)J
    .registers 5
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 125
    iget-wide v0, p0, Landroid/media/MediaScanner;->mTotalUpdated:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroid/media/MediaScanner;->mTotalUpdated:J

    return-wide v0
.end method

.method static synthetic access$3600(Landroid/media/MediaScanner;)Z
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 125
    invoke-direct {p0}, Landroid/media/MediaScanner;->isSoundCustomized()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Landroid/media/MediaScanner;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 125
    iget-object v0, p0, Landroid/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3800(Landroid/media/MediaScanner;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 125
    iget-object v0, p0, Landroid/media/MediaScanner;->mDefaultMmsNotificationFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3900(Landroid/media/MediaScanner;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 125
    iget-object v0, p0, Landroid/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Landroid/media/MediaScanner;)Z
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 125
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mCaseInsensitivePaths:Z

    return v0
.end method

.method static synthetic access$4000(Landroid/media/MediaScanner;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 125
    iget-object v0, p0, Landroid/media/MediaScanner;->mDefaultRingtone2Filename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4100(Landroid/media/MediaScanner;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 125
    iget-object v0, p0, Landroid/media/MediaScanner;->mDefaultRingtone3Filename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4200(Landroid/media/MediaScanner;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 125
    iget-object v0, p0, Landroid/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4300(Landroid/media/MediaScanner;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 125
    iget-object v0, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4400(Landroid/media/MediaScanner;)Landroid/drm/DrmManagerClient;
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 125
    iget-object v0, p0, Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    return-object v0
.end method

.method static synthetic access$4402(Landroid/media/MediaScanner;Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient;
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaScanner;
    .param p1, "x1"    # Landroid/drm/DrmManagerClient;

    .prologue
    .line 125
    iput-object p1, p0, Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    return-object p1
.end method

.method static synthetic access$4500()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 125
    sget-object v0, Landroid/media/MediaScanner;->syncEjectedPath:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4600()Ljava/lang/String;
    .registers 1

    .prologue
    .line 125
    sget-object v0, Landroid/media/MediaScanner;->ejectedPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4800(Landroid/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Landroid/media/MediaScanner;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 125
    invoke-direct {p0, p1, p2}, Landroid/media/MediaScanner;->cachePlaylistEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Landroid/media/MediaScanner;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 125
    iget-object v0, p0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$614(Landroid/media/MediaScanner;J)J
    .registers 6
    .param p0, "x0"    # Landroid/media/MediaScanner;
    .param p1, "x1"    # J

    .prologue
    .line 125
    iget-wide v0, p0, Landroid/media/MediaScanner;->mTotalMakeEntryTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/media/MediaScanner;->mTotalMakeEntryTime:J

    return-wide v0
.end method

.method static synthetic access$700(Landroid/media/MediaScanner;)Z
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 125
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mProcessPlaylists:Z

    return v0
.end method

.method static synthetic access$800(Landroid/media/MediaScanner;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 125
    iget-object v0, p0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$908(Landroid/media/MediaScanner;)J
    .registers 5
    .param p0, "x0"    # Landroid/media/MediaScanner;

    .prologue
    .line 125
    iget-wide v0, p0, Landroid/media/MediaScanner;->mTotalCheckedDirectories:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroid/media/MediaScanner;->mTotalCheckedDirectories:J

    return-wide v0
.end method

.method private cachePlaylistEntry(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "line"    # Ljava/lang/String;
    .param p2, "playListDirectory"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2380
    new-instance v1, Landroid/media/MediaScanner$PlaylistEntry;

    const/4 v5, 0x0

    invoke-direct {v1, v5}, Landroid/media/MediaScanner$PlaylistEntry;-><init>(Landroid/media/MediaScanner$1;)V

    .line 2382
    .local v1, "entry":Landroid/media/MediaScanner$PlaylistEntry;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 2383
    .local v2, "entryLength":I
    :goto_c
    if-lez v2, :cond_1d

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_1d

    add-int/lit8 v2, v2, -0x1

    goto :goto_c

    .line 2386
    :cond_1d
    const/4 v5, 0x3

    if-ge v2, v5, :cond_21

    .line 2401
    :goto_20
    return-void

    .line 2387
    :cond_21
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_2b

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 2391
    :cond_2b
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2392
    .local v0, "ch1":C
    const/16 v5, 0x2f

    if-eq v0, v5, :cond_4a

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-eqz v5, :cond_4b

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x3a

    if-ne v5, v6, :cond_4b

    const/4 v5, 0x2

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5c

    if-ne v5, v6, :cond_4b

    :cond_4a
    move v3, v4

    .line 2395
    .local v3, "fullPath":Z
    :cond_4b
    if-nez v3, :cond_5e

    .line 2396
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2397
    :cond_5e
    iput-object p1, v1, Landroid/media/MediaScanner$PlaylistEntry;->path:Ljava/lang/String;

    .line 2400
    iget-object v4, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20
.end method

.method public static clearMediaPathCache(ZZ)V
    .registers 4
    .param p0, "clearMediaPaths"    # Z
    .param p1, "clearNoMediaPaths"    # Z

    .prologue
    .line 2193
    const-class v1, Landroid/media/MediaScanner;

    monitor-enter v1

    .line 2194
    if-eqz p0, :cond_a

    .line 2195
    :try_start_5
    sget-object v0, Landroid/media/MediaScanner;->mMediaPaths:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 2197
    :cond_a
    if-eqz p1, :cond_11

    .line 2198
    sget-object v0, Landroid/media/MediaScanner;->mNoMediaPaths:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 2200
    :cond_11
    monitor-exit v1

    .line 2201
    return-void

    .line 2200
    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public static encodeStringResource(Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 489
    if-nez p0, :cond_4

    const/4 v12, 0x0

    .line 512
    :goto_3
    return-object v12

    .line 491
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    .line 492
    .local v10, "bytes":[B
    const/16 v8, 0x10

    .local v8, "b4":I
    const/16 v6, 0x8

    .local v6, "b3":I
    const/4 v4, 0x2

    .local v4, "b1":I
    const/4 v2, 0x1

    .line 493
    .local v2, "b0":I
    const/16 v3, 0xfe

    .local v3, "b0mask":I
    const/16 v5, 0xfd

    .local v5, "b1mask":I
    const/16 v7, 0xf7

    .local v7, "b3mask":I
    const/16 v9, 0xef

    .line 496
    .local v9, "b4mask":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_17
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    array-length v12, v12

    if-ge v11, v12, :cond_43

    .line 497
    aget-byte v0, v10, v11

    .local v0, "a":I
    move v1, v0

    .line 499
    .local v1, "b":I
    and-int v12, v0, v4

    if-eqz v12, :cond_3b

    or-int/2addr v1, v2

    .line 501
    :goto_26
    and-int v12, v0, v2

    if-eqz v12, :cond_3d

    or-int/2addr v1, v4

    .line 504
    :goto_2b
    and-int v12, v0, v8

    if-eqz v12, :cond_3f

    or-int/2addr v1, v6

    .line 506
    :goto_30
    and-int v12, v0, v6

    if-eqz v12, :cond_41

    or-int/2addr v1, v8

    .line 509
    :goto_35
    int-to-byte v12, v1

    aput-byte v12, v10, v11

    .line 496
    add-int/lit8 v11, v11, 0x1

    goto :goto_17

    .line 500
    :cond_3b
    and-int/2addr v1, v3

    goto :goto_26

    .line 502
    :cond_3d
    and-int/2addr v1, v5

    goto :goto_2b

    .line 505
    :cond_3f
    and-int/2addr v1, v7

    goto :goto_30

    .line 507
    :cond_41
    and-int/2addr v1, v9

    goto :goto_35

    .line 512
    .end local v0    # "a":I
    .end local v1    # "b":I
    :cond_43
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v10}, Ljava/lang/String;-><init>([B)V

    goto :goto_3
.end method

.method private inScanDirectory(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "directories"    # [Ljava/lang/String;

    .prologue
    .line 1820
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, p2

    if-ge v1, v2, :cond_11

    .line 1821
    aget-object v0, p2, v1

    .line 1822
    .local v0, "directory":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1823
    const/4 v2, 0x1

    .line 1826
    .end local v0    # "directory":Ljava/lang/String;
    :goto_d
    return v2

    .line 1820
    .restart local v0    # "directory":Ljava/lang/String;
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1826
    .end local v0    # "directory":Ljava/lang/String;
    :cond_11
    const/4 v2, 0x0

    goto :goto_d
.end method

.method public static native initMutex()V
.end method

.method private initialize(Ljava/lang/String;)V
    .registers 6
    .param p1, "volumeName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 1977
    iget-object v0, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "media"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    .line 1979
    invoke-static {p1}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;

    .line 1980
    invoke-static {p1}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mVideoUri:Landroid/net/Uri;

    .line 1981
    invoke-static {p1}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    .line 1982
    invoke-static {p1}, Landroid/provider/MediaStore$Images$Thumbnails;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mThumbsUri:Landroid/net/Uri;

    .line 1983
    invoke-static {p1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    .line 1984
    iget-object v0, p0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "nonotify"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mFilesUriNoNotify:Landroid/net/Uri;

    .line 1986
    const-string v0, "internal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_57

    .line 1988
    iput-boolean v3, p0, Landroid/media/MediaScanner;->mProcessPlaylists:Z

    .line 1989
    iput-boolean v3, p0, Landroid/media/MediaScanner;->mProcessGenres:Z

    .line 1990
    invoke-static {p1}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    .line 1992
    iput-boolean v3, p0, Landroid/media/MediaScanner;->mCaseInsensitivePaths:Z

    .line 1994
    :cond_57
    return-void
.end method

.method private isDrmEnabled()Z
    .registers 2

    .prologue
    .line 615
    const/4 v0, 0x1

    return v0
.end method

.method private static isNoMediaFile(Ljava/lang/String;)Z
    .registers 11
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0xa

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 2155
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2156
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_11

    move v1, v4

    .line 2185
    :cond_10
    :goto_10
    return v1

    .line 2161
    :cond_11
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    .line 2162
    .local v7, "lastSlash":I
    if-ltz v7, :cond_7b

    add-int/lit8 v0, v7, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_7b

    .line 2164
    add-int/lit8 v0, v7, 0x1

    const-string v2, "._"

    const/4 v3, 0x2

    invoke-virtual {p0, v0, v2, v4, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_10

    .line 2171
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v2, v0, -0x4

    const-string v3, ".jpg"

    const/4 v5, 0x4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 2172
    add-int/lit8 v2, v7, 0x1

    const-string v3, "AlbumArt_{"

    move-object v0, p0

    move v5, v9

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_10

    add-int/lit8 v2, v7, 0x1

    const-string v3, "AlbumArt."

    const/16 v5, 0x9

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_10

    .line 2176
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v7

    add-int/lit8 v8, v0, -0x1

    .line 2177
    .local v8, "length":I
    const/16 v0, 0x11

    if-ne v8, v0, :cond_6d

    add-int/lit8 v2, v7, 0x1

    const-string v3, "AlbumArtSmall"

    const/16 v5, 0xd

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_10

    :cond_6d
    if-ne v8, v9, :cond_7b

    add-int/lit8 v2, v7, 0x1

    const-string v3, "Folder"

    const/4 v5, 0x6

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_10

    .end local v8    # "length":I
    :cond_7b
    move v1, v4

    .line 2185
    goto :goto_10
.end method

.method public static isNoMediaPath(Ljava/lang/String;)Z
    .registers 10
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x2f

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2204
    if-nez p0, :cond_7

    .line 2242
    :cond_6
    :goto_6
    return v5

    .line 2208
    :cond_7
    const-string v7, "/."

    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_11

    move v5, v6

    .line 2209
    goto :goto_6

    .line 2212
    :cond_11
    invoke-virtual {p0, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 2213
    .local v1, "firstSlash":I
    if-lez v1, :cond_6

    .line 2216
    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 2218
    .local v3, "parent":Ljava/lang/String;
    const-class v7, Landroid/media/MediaScanner;

    monitor-enter v7

    .line 2219
    :try_start_1e
    sget-object v5, Landroid/media/MediaScanner;->mNoMediaPaths:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 2220
    monitor-exit v7

    move v5, v6

    goto :goto_6

    .line 2221
    :cond_29
    sget-object v5, Landroid/media/MediaScanner;->mMediaPaths:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_74

    .line 2224
    const/4 v2, 0x1

    .line 2225
    .local v2, "offset":I
    :goto_32
    if-ltz v2, :cond_6d

    .line 2226
    const/16 v5, 0x2f

    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 2227
    .local v4, "slashIndex":I
    if-le v4, v2, :cond_6b

    .line 2228
    add-int/lit8 v4, v4, 0x1

    .line 2229
    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    invoke-virtual {p0, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ".nomedia"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2230
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_6b

    .line 2232
    sget-object v5, Landroid/media/MediaScanner;->mNoMediaPaths:Ljava/util/HashMap;

    const-string v8, ""

    invoke-virtual {v5, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2233
    monitor-exit v7

    move v5, v6

    goto :goto_6

    .line 2236
    .end local v0    # "file":Ljava/io/File;
    :cond_6b
    move v2, v4

    .line 2237
    goto :goto_32

    .line 2238
    .end local v4    # "slashIndex":I
    :cond_6d
    sget-object v5, Landroid/media/MediaScanner;->mMediaPaths:Ljava/util/HashMap;

    const-string v6, ""

    invoke-virtual {v5, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2240
    .end local v2    # "offset":I
    :cond_74
    monitor-exit v7
    :try_end_75
    .catchall {:try_start_1e .. :try_end_75} :catchall_7a

    .line 2242
    invoke-static {p0}, Landroid/media/MediaScanner;->isNoMediaFile(Ljava/lang/String;)Z

    move-result v5

    goto :goto_6

    .line 2240
    :catchall_7a
    move-exception v5

    :try_start_7b
    monitor-exit v7
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_7a

    throw v5
.end method

.method private isSoundCustomized()Z
    .registers 3

    .prologue
    .line 486
    iget-object v0, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120097

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private matchEntries(JLjava/lang/String;)Z
    .registers 11
    .param p1, "rowId"    # J
    .param p3, "data"    # Ljava/lang/String;

    .prologue
    const v6, 0x7fffffff

    .line 2356
    iget-object v5, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2357
    .local v3, "len":I
    const/4 v0, 0x1

    .line 2358
    .local v0, "done":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v3, :cond_39

    .line 2359
    iget-object v5, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaScanner$PlaylistEntry;

    .line 2360
    .local v1, "entry":Landroid/media/MediaScanner$PlaylistEntry;
    iget v5, v1, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchlevel:I

    if-ne v5, v6, :cond_1c

    .line 2358
    :cond_19
    :goto_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 2363
    :cond_1c
    const/4 v0, 0x0

    .line 2364
    iget-object v5, v1, Landroid/media/MediaScanner$PlaylistEntry;->path:Ljava/lang/String;

    invoke-virtual {p3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 2365
    iput-wide p1, v1, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchid:J

    .line 2366
    iput v6, v1, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchlevel:I

    goto :goto_19

    .line 2370
    :cond_2a
    iget-object v5, v1, Landroid/media/MediaScanner$PlaylistEntry;->path:Ljava/lang/String;

    invoke-direct {p0, p3, v5}, Landroid/media/MediaScanner;->matchPaths(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 2371
    .local v4, "matchLength":I
    iget v5, v1, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchlevel:I

    if-le v4, v5, :cond_19

    .line 2372
    iput-wide p1, v1, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchid:J

    .line 2373
    iput v4, v1, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchlevel:I

    goto :goto_19

    .line 2376
    .end local v1    # "entry":Landroid/media/MediaScanner$PlaylistEntry;
    .end local v4    # "matchLength":I
    :cond_39
    return v0
.end method

.method private matchPaths(Ljava/lang/String;Ljava/lang/String;)I
    .registers 16
    .param p1, "path1"    # Ljava/lang/String;
    .param p2, "path2"    # Ljava/lang/String;

    .prologue
    .line 2329
    const/4 v10, 0x0

    .line 2330
    .local v10, "result":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    .line 2331
    .local v8, "end1":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    .line 2333
    .local v9, "end2":I
    :goto_9
    if-lez v8, :cond_3f

    if-lez v9, :cond_3f

    .line 2334
    const/16 v0, 0x2f

    add-int/lit8 v1, v8, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v11

    .line 2335
    .local v11, "slash1":I
    const/16 v0, 0x2f

    add-int/lit8 v1, v9, -0x1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v12

    .line 2336
    .local v12, "slash2":I
    const/16 v0, 0x5c

    add-int/lit8 v1, v8, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v6

    .line 2337
    .local v6, "backSlash1":I
    const/16 v0, 0x5c

    add-int/lit8 v1, v9, -0x1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v7

    .line 2338
    .local v7, "backSlash2":I
    if-le v11, v6, :cond_40

    move v2, v11

    .line 2339
    .local v2, "start1":I
    :goto_30
    if-le v12, v7, :cond_42

    move v4, v12

    .line 2340
    .local v4, "start2":I
    :goto_33
    if-gez v2, :cond_44

    const/4 v2, 0x0

    .line 2341
    :goto_36
    if-gez v4, :cond_47

    const/4 v4, 0x0

    .line 2342
    :goto_39
    sub-int v5, v8, v2

    .line 2343
    .local v5, "length":I
    sub-int v0, v9, v4

    if-eq v0, v5, :cond_4a

    .line 2351
    .end local v2    # "start1":I
    .end local v4    # "start2":I
    .end local v5    # "length":I
    .end local v6    # "backSlash1":I
    .end local v7    # "backSlash2":I
    .end local v11    # "slash1":I
    .end local v12    # "slash2":I
    :cond_3f
    return v10

    .restart local v6    # "backSlash1":I
    .restart local v7    # "backSlash2":I
    .restart local v11    # "slash1":I
    .restart local v12    # "slash2":I
    :cond_40
    move v2, v6

    .line 2338
    goto :goto_30

    .restart local v2    # "start1":I
    :cond_42
    move v4, v7

    .line 2339
    goto :goto_33

    .line 2340
    .restart local v4    # "start2":I
    :cond_44
    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    .line 2341
    :cond_47
    add-int/lit8 v4, v4, 0x1

    goto :goto_39

    .line 2344
    .restart local v5    # "length":I
    :cond_4a
    const/4 v1, 0x1

    move-object v0, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 2345
    add-int/lit8 v10, v10, 0x1

    .line 2346
    add-int/lit8 v8, v2, -0x1

    .line 2347
    add-int/lit8 v9, v4, -0x1

    .line 2349
    goto :goto_9
.end method

.method private final native native_finalize()V
.end method

.method private static final native native_init()V
.end method

.method private final native native_setup()V
.end method

.method public static native notifyUnmount(Ljava/lang/String;)V
.end method

.method private postscan([Ljava/lang/String;)V
    .registers 7
    .param p1, "directories"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1952
    iget-boolean v2, p0, Landroid/media/MediaScanner;->mProcessPlaylists:Z

    if-eqz v2, :cond_8

    .line 1953
    invoke-direct {p0}, Landroid/media/MediaScanner;->processPlayLists()V

    .line 1956
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1957
    .local v0, "start":J
    iget v2, p0, Landroid/media/MediaScanner;->mOriginalCount:I

    if-eqz v2, :cond_16

    iget v2, p0, Landroid/media/MediaScanner;->beforePrescanCount:I

    iget v3, p0, Landroid/media/MediaScanner;->mOriginalCount:I

    if-le v2, v3, :cond_27

    :cond_16
    iget-object v2, p0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    const-string v3, "external"

    invoke-static {v3}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 1958
    invoke-direct {p0}, Landroid/media/MediaScanner;->pruneDeadThumbnailFiles()V

    .line 1959
    :cond_27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    iput-wide v2, p0, Landroid/media/MediaScanner;->mTotalDeadThumbnailTime:J

    .line 1962
    iput-object v4, p0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    .line 1963
    iget-object v2, p0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    if-eqz v2, :cond_39

    iget-object v2, p0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 1964
    :cond_39
    iput-object v4, p0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    .line 1965
    iput-object v4, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    .line 1966
    return-void
.end method

.method private prescan(Ljava/lang/String;Z)I
    .registers 39
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "prescanFiles"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1639
    const/16 v21, 0x0

    .line 1640
    .local v21, "c":Landroid/database/Cursor;
    const/16 v35, 0x0

    .line 1641
    .local v35, "where":Ljava/lang/String;
    const/16 v34, 0x0

    .line 1643
    .local v34, "selectionArgs":[Ljava/lang/String;
    sget-object v3, Landroid/media/MediaScanner;->syncEjectedPath:Ljava/lang/Object;

    monitor-enter v3

    .line 1644
    const/4 v2, 0x0

    :try_start_a
    sput-object v2, Landroid/media/MediaScanner;->ejectedPath:Ljava/lang/String;

    .line 1645
    monitor-exit v3
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_1d3

    .line 1646
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    if-nez v2, :cond_1d6

    .line 1647
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    .line 1651
    :goto_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mFileParsingStat:Ljava/util/HashMap;

    if-nez v2, :cond_1df

    .line 1652
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaScanner;->mFileParsingStat:Ljava/util/HashMap;

    .line 1657
    :goto_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    if-nez v2, :cond_1e8

    .line 1658
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    .line 1663
    :goto_3a
    if-eqz p1, :cond_1f1

    .line 1665
    const-string v35, "_id>? AND _data=?"

    .line 1667
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v34, v0

    .end local v34    # "selectionArgs":[Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v34, v2

    const/4 v2, 0x1

    aput-object p1, v34, v2

    .line 1673
    .restart local v34    # "selectionArgs":[Ljava/lang/String;
    :goto_4b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/MediaScanner;->beforePrescanCount:I

    .line 1674
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    sget-object v5, Landroid/media/MediaScanner;->ID_PROJECTION_COUNT:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v2 .. v9}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v21

    .line 1675
    if-eqz v21, :cond_7c

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 1676
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/MediaScanner;->beforePrescanCount:I

    .line 1677
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 1684
    :cond_7c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v20

    .line 1685
    .local v20, "builder":Landroid/net/Uri$Builder;
    const-string v2, "deletedata"

    const-string v3, "false"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1686
    new-instance v23, Landroid/media/MediaScanner$MediaBulkDeleter;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/MediaScanner;->mExternalStoragePath:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-direct {v0, v2, v3, v5, v12}, Landroid/media/MediaScanner$MediaBulkDeleter;-><init>(Landroid/content/IContentProvider;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 1687
    .local v23, "deleter":Landroid/media/MediaScanner$MediaBulkDeleter;
    new-instance v25, Landroid/media/MediaScanner$MediaBulkDeleter;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    sget-object v12, Landroid/media/MediaScanner;->mExternalStorageSdPath:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-direct {v0, v2, v3, v5, v12}, Landroid/media/MediaScanner$MediaBulkDeleter;-><init>(Landroid/content/IContentProvider;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 1691
    .local v25, "externalDeleter":Landroid/media/MediaScanner$MediaBulkDeleter;
    if-eqz p2, :cond_17d

    .line 1692
    :try_start_bb
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    sget-object v5, Landroid/media/MediaScanner;->ID_PROJECTION_COUNT:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v2 .. v9}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v21

    .line 1693
    if-eqz v21, :cond_12c

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_12c

    .line 1694
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/MediaScanner;->contentsCount:I

    .line 1696
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/MediaScanner;->contentsCount:I

    const/16 v3, 0x1b58

    if-ge v2, v3, :cond_1ff

    .line 1697
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/media/MediaScanner;->useHashMap:Z

    .line 1702
    :goto_f1
    const-string v2, "MediaScanner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Prescan. DB items number : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/MediaScanner;->contentsCount:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " DB_FILES_NUMBER_CACHING_LIMITATION : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v5, 0x1b58

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "  Caching mode : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/media/MediaScanner;->useHashMap:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 1704
    const/16 v21, 0x0

    .line 1710
    :cond_12c
    const-wide/high16 v30, -0x8000000000000000L

    .line 1711
    .local v30, "lastId":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "limit"

    const-string v5, "1000"

    invoke-virtual {v2, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    .line 1712
    .local v4, "limitUri":Landroid/net/Uri;
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/media/MediaScanner;->mWasEmptyPriorToScan:Z

    .line 1715
    :cond_147
    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v30

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v34, v2

    .line 1716
    if-eqz v21, :cond_166

    .line 1717
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 1718
    const/16 v21, 0x0

    .line 1720
    :cond_166
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    sget-object v5, Landroid/media/MediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    const-string v8, "_id"

    const/4 v9, 0x0

    move-object/from16 v6, v35

    move-object/from16 v7, v34

    invoke-interface/range {v2 .. v9}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;
    :try_end_17a
    .catchall {:try_start_bb .. :try_end_17a} :catchall_206

    move-result-object v21

    .line 1722
    if-nez v21, :cond_213

    .line 1786
    .end local v4    # "limitUri":Landroid/net/Uri;
    .end local v30    # "lastId":J
    :cond_17d
    if-eqz v21, :cond_182

    .line 1787
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 1789
    :cond_182
    invoke-virtual/range {v23 .. v23}, Landroid/media/MediaScanner$MediaBulkDeleter;->flush()V

    .line 1790
    invoke-virtual/range {v25 .. v25}, Landroid/media/MediaScanner$MediaBulkDeleter;->flush()V

    .line 1794
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/MediaScanner;->mOriginalCount:I

    .line 1795
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    sget-object v15, Landroid/media/MediaScanner;->ID_PROJECTION_COUNT:[Ljava/lang/String;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-interface/range {v12 .. v19}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v21

    .line 1796
    if-eqz v21, :cond_1bd

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1bd

    .line 1797
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/MediaScanner;->mOriginalCount:I

    .line 1798
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 1801
    :cond_1bd
    invoke-virtual/range {v23 .. v23}, Landroid/media/MediaScanner$MediaBulkDeleter;->getTotalDeletedNumber()I

    move-result v2

    invoke-virtual/range {v25 .. v25}, Landroid/media/MediaScanner$MediaBulkDeleter;->getTotalDeletedNumber()I

    move-result v3

    add-int v22, v2, v3

    .line 1802
    .local v22, "deletedNumber":I
    const/16 v23, 0x0

    .line 1803
    const/16 v25, 0x0

    .line 1805
    sget-object v3, Landroid/media/MediaScanner;->syncEjectedPath:Ljava/lang/Object;

    monitor-enter v3

    .line 1806
    const/4 v2, 0x0

    :try_start_1cf
    sput-object v2, Landroid/media/MediaScanner;->ejectedPath:Ljava/lang/String;

    .line 1807
    monitor-exit v3
    :try_end_1d2
    .catchall {:try_start_1cf .. :try_end_1d2} :catchall_2e9

    .line 1809
    return v22

    .line 1645
    .end local v20    # "builder":Landroid/net/Uri$Builder;
    .end local v22    # "deletedNumber":I
    .end local v23    # "deleter":Landroid/media/MediaScanner$MediaBulkDeleter;
    .end local v25    # "externalDeleter":Landroid/media/MediaScanner$MediaBulkDeleter;
    :catchall_1d3
    move-exception v2

    :try_start_1d4
    monitor-exit v3
    :try_end_1d5
    .catchall {:try_start_1d4 .. :try_end_1d5} :catchall_1d3

    throw v2

    .line 1649
    :cond_1d6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_1c

    .line 1654
    :cond_1df
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mFileParsingStat:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_2b

    .line 1660
    :cond_1e8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_3a

    .line 1669
    :cond_1f1
    const-string v35, "_id>?"

    .line 1670
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v34, v0

    .end local v34    # "selectionArgs":[Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v34, v2

    .restart local v34    # "selectionArgs":[Ljava/lang/String;
    goto/16 :goto_4b

    .line 1700
    .restart local v20    # "builder":Landroid/net/Uri$Builder;
    .restart local v23    # "deleter":Landroid/media/MediaScanner$MediaBulkDeleter;
    .restart local v25    # "externalDeleter":Landroid/media/MediaScanner$MediaBulkDeleter;
    :cond_1ff
    const/4 v2, 0x0

    :try_start_200
    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/media/MediaScanner;->useHashMap:Z
    :try_end_204
    .catchall {:try_start_200 .. :try_end_204} :catchall_206

    goto/16 :goto_f1

    .line 1786
    :catchall_206
    move-exception v2

    if-eqz v21, :cond_20c

    .line 1787
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 1789
    :cond_20c
    invoke-virtual/range {v23 .. v23}, Landroid/media/MediaScanner$MediaBulkDeleter;->flush()V

    .line 1790
    invoke-virtual/range {v25 .. v25}, Landroid/media/MediaScanner$MediaBulkDeleter;->flush()V

    throw v2

    .line 1726
    .restart local v4    # "limitUri":Landroid/net/Uri;
    .restart local v30    # "lastId":J
    :cond_213
    :try_start_213
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->getCount()I

    move-result v32

    .line 1728
    .local v32, "num":I
    if-eqz v32, :cond_17d

    .line 1731
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/media/MediaScanner;->mWasEmptyPriorToScan:Z

    .line 1732
    :cond_21e
    :goto_21e
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_147

    .line 1733
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1734
    .local v7, "rowId":J
    const/4 v2, 0x1

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1735
    .local v9, "path":Ljava/lang/String;
    const/4 v2, 0x2

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    .line 1736
    .local v27, "format":I
    const/4 v2, 0x3

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 1737
    .local v10, "lastModified":J
    move-wide/from16 v30, v7

    .line 1742
    if-eqz v9, :cond_21e

    const-string v2, "/"

    invoke-virtual {v9, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_249
    .catchall {:try_start_213 .. :try_end_249} :catchall_206

    move-result v2

    if-eqz v2, :cond_21e

    .line 1743
    const/16 v24, 0x0

    .line 1745
    .local v24, "exists":Z
    :try_start_24e
    sget-object v2, Landroid/media/MediaScanner;->ejectedPath:Ljava/lang/String;

    if-eqz v2, :cond_2b3

    sget-object v2, Landroid/media/MediaScanner;->ejectedPath:Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_257
    .catch Landroid/system/ErrnoException; {:try_start_24e .. :try_end_257} :catch_2ec
    .catchall {:try_start_24e .. :try_end_257} :catchall_206

    move-result v2

    if-eqz v2, :cond_2b3

    const/16 v24, 0x0

    .line 1749
    :goto_25c
    if-nez v24, :cond_2c7

    :try_start_25e
    invoke-static/range {v27 .. v27}, Landroid/mtp/MtpConstants;->isAbstractObject(I)Z

    move-result v2

    if-nez v2, :cond_2c7

    .line 1754
    invoke-static {v9}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v29

    .line 1755
    .local v29, "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    if-nez v29, :cond_2ba

    const/16 v26, 0x0

    .line 1757
    .local v26, "fileType":I
    :goto_26c
    invoke-static/range {v26 .. v26}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v2

    if-nez v2, :cond_21e

    .line 1758
    sget-object v2, Landroid/media/MediaScanner;->mExternalStorageSdPath:Ljava/lang/String;

    if-eqz v2, :cond_2c1

    sget-object v2, Landroid/media/MediaScanner;->mExternalStorageSdPath:Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c1

    .line 1759
    move-object/from16 v0, v25

    invoke-virtual {v0, v7, v8}, Landroid/media/MediaScanner$MediaBulkDeleter;->delete(J)V

    .line 1762
    :goto_283
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v9, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/.nomedia"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21e

    .line 1763
    invoke-virtual/range {v23 .. v23}, Landroid/media/MediaScanner$MediaBulkDeleter;->flush()V

    .line 1764
    invoke-virtual/range {v25 .. v25}, Landroid/media/MediaScanner$MediaBulkDeleter;->flush()V

    .line 1765
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v33

    .line 1766
    .local v33, "parent":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    const-string/jumbo v5, "unhide"

    const/4 v12, 0x0

    move-object/from16 v0, v33

    invoke-interface {v2, v3, v5, v0, v12}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_2b1
    .catchall {:try_start_25e .. :try_end_2b1} :catchall_206

    goto/16 :goto_21e

    .line 1746
    .end local v26    # "fileType":I
    .end local v29    # "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    .end local v33    # "parent":Ljava/lang/String;
    :cond_2b3
    :try_start_2b3
    sget v2, Landroid/system/OsConstants;->F_OK:I

    invoke-static {v9, v2}, Landroid/system/Os;->access(Ljava/lang/String;I)Z
    :try_end_2b8
    .catch Landroid/system/ErrnoException; {:try_start_2b3 .. :try_end_2b8} :catch_2ec
    .catchall {:try_start_2b3 .. :try_end_2b8} :catchall_206

    move-result v24

    goto :goto_25c

    .line 1755
    .restart local v29    # "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    :cond_2ba
    :try_start_2ba
    move-object/from16 v0, v29

    iget v0, v0, Landroid/media/MediaFile$MediaFileType;->fileType:I

    move/from16 v26, v0

    goto :goto_26c

    .line 1760
    .restart local v26    # "fileType":I
    :cond_2c1
    move-object/from16 v0, v23

    invoke-virtual {v0, v7, v8}, Landroid/media/MediaScanner$MediaBulkDeleter;->delete(J)V

    goto :goto_283

    .line 1771
    .end local v26    # "fileType":I
    .end local v29    # "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    :cond_2c7
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/media/MediaScanner;->useHashMap:Z

    if-eqz v2, :cond_21e

    .line 1772
    move-object/from16 v28, v9

    .line 1773
    .local v28, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/media/MediaScanner;->mCaseInsensitivePaths:Z

    if-eqz v2, :cond_2d9

    .line 1774
    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v28

    .line 1776
    :cond_2d9
    new-instance v6, Landroid/media/MediaScanner$FileEntry;

    invoke-direct/range {v6 .. v11}, Landroid/media/MediaScanner$FileEntry;-><init>(JLjava/lang/String;J)V

    .line 1777
    .local v6, "entry":Landroid/media/MediaScanner$FileEntry;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    move-object/from16 v0, v28

    invoke-virtual {v2, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2e7
    .catchall {:try_start_2ba .. :try_end_2e7} :catchall_206

    goto/16 :goto_21e

    .line 1807
    .end local v4    # "limitUri":Landroid/net/Uri;
    .end local v6    # "entry":Landroid/media/MediaScanner$FileEntry;
    .end local v7    # "rowId":J
    .end local v9    # "path":Ljava/lang/String;
    .end local v10    # "lastModified":J
    .end local v24    # "exists":Z
    .end local v27    # "format":I
    .end local v28    # "key":Ljava/lang/String;
    .end local v30    # "lastId":J
    .end local v32    # "num":I
    .restart local v22    # "deletedNumber":I
    :catchall_2e9
    move-exception v2

    :try_start_2ea
    monitor-exit v3
    :try_end_2eb
    .catchall {:try_start_2ea .. :try_end_2eb} :catchall_2e9

    throw v2

    .line 1747
    .end local v22    # "deletedNumber":I
    .restart local v4    # "limitUri":Landroid/net/Uri;
    .restart local v7    # "rowId":J
    .restart local v9    # "path":Ljava/lang/String;
    .restart local v10    # "lastModified":J
    .restart local v24    # "exists":Z
    .restart local v27    # "format":I
    .restart local v30    # "lastId":J
    .restart local v32    # "num":I
    :catch_2ec
    move-exception v2

    goto/16 :goto_25c
.end method

.method private printToMediaProviderDBLog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "volumeName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 1997
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1998
    .local v2, "val":Landroid/content/ContentValues;
    const-string/jumbo v3, "title"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2000
    invoke-static {p2}, Landroid/provider/MediaStore;->getMediaProviderDbLogUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2002
    .local v1, "logUri":Landroid/net/Uri;
    :try_start_10
    iget-object v3, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "media"

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    .line 2003
    iget-object v3, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v4, p0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    invoke-interface {v3, v4, v1, v2}, Landroid/content/IContentProvider;->insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_26} :catch_29
    .catchall {:try_start_10 .. :try_end_26} :catchall_34

    .line 2007
    iput-object v5, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    .line 2009
    :goto_28
    return-void

    .line 2004
    :catch_29
    move-exception v0

    .line 2005
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2a
    const-string v3, "MediaScanner"

    const-string v4, "RemoteException in printToMediaProviderDBLog()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_31
    .catchall {:try_start_2a .. :try_end_31} :catchall_34

    .line 2007
    iput-object v5, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    goto :goto_28

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_34
    move-exception v3

    iput-object v5, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    throw v3
.end method

.method private processCachedPlaylist(Landroid/database/Cursor;Landroid/content/ContentValues;Landroid/net/Uri;)V
    .registers 16
    .param p1, "fileList"    # Landroid/database/Cursor;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "playlistUri"    # Landroid/net/Uri;

    .prologue
    .line 2404
    const/4 v8, -0x1

    invoke-interface {p1, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2405
    :cond_4
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_1a

    .line 2406
    const/4 v8, 0x0

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 2407
    .local v6, "rowId":J
    const/4 v8, 0x1

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2408
    .local v0, "data":Ljava/lang/String;
    invoke-direct {p0, v6, v7, v0}, Landroid/media/MediaScanner;->matchEntries(JLjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 2413
    .end local v0    # "data":Ljava/lang/String;
    .end local v6    # "rowId":J
    :cond_1a
    iget-object v8, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 2414
    .local v5, "len":I
    const/4 v4, 0x0

    .line 2415
    .local v4, "index":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_22
    if-ge v3, v5, :cond_5d

    .line 2416
    iget-object v8, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaScanner$PlaylistEntry;

    .line 2417
    .local v2, "entry":Landroid/media/MediaScanner$PlaylistEntry;
    iget v8, v2, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchlevel:I

    if-lez v8, :cond_51

    .line 2419
    :try_start_30
    invoke-virtual {p2}, Landroid/content/ContentValues;->clear()V

    .line 2420
    const-string/jumbo v8, "play_order"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2421
    const-string v8, "audio_id"

    iget-wide v10, v2, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchid:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2422
    iget-object v8, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v9, p0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    invoke-interface {v8, v9, p3, p2}, Landroid/content/IContentProvider;->insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_4f} :catch_54

    .line 2423
    add-int/lit8 v4, v4, 0x1

    .line 2415
    :cond_51
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 2424
    :catch_54
    move-exception v1

    .line 2425
    .local v1, "e":Landroid/os/RemoteException;
    const-string v8, "MediaScanner"

    const-string v9, "RemoteException in MediaScanner.processCachedPlaylist()"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2431
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "entry":Landroid/media/MediaScanner$PlaylistEntry;
    :goto_5c
    return-void

    .line 2430
    :cond_5d
    iget-object v8, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    goto :goto_5c
.end method

.method private native processDirectory(Ljava/lang/String;Landroid/media/MediaScannerClient;)V
.end method

.method private native processFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
.end method

.method private processM3uPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V
    .registers 14
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "playListDirectory"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "values"    # Landroid/content/ContentValues;
    .param p5, "fileList"    # Landroid/database/Cursor;

    .prologue
    .line 2435
    const/4 v3, 0x0

    .line 2437
    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2438
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_43

    .line 2439
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v6, 0x2000

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1d} :catch_52
    .catchall {:try_start_1 .. :try_end_1d} :catchall_69

    .line 2441
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_1d
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 2442
    .local v2, "line":Ljava/lang/String;
    iget-object v5, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 2443
    :goto_26
    if-eqz v2, :cond_3f

    .line 2445
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3a

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x23

    if-eq v5, v6, :cond_3a

    .line 2446
    invoke-direct {p0, v2, p2}, Landroid/media/MediaScanner;->cachePlaylistEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 2448
    :cond_3a
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    goto :goto_26

    .line 2451
    :cond_3f
    invoke-direct {p0, p5, p4, p3}, Landroid/media/MediaScanner;->processCachedPlaylist(Landroid/database/Cursor;Landroid/content/ContentValues;Landroid/net/Uri;)V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_42} :catch_7c
    .catchall {:try_start_1d .. :try_end_42} :catchall_79

    move-object v3, v4

    .line 2457
    .end local v2    # "line":Ljava/lang/String;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :cond_43
    if-eqz v3, :cond_48

    .line 2458
    :try_start_45
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_49

    .line 2463
    .end local v1    # "f":Ljava/io/File;
    :cond_48
    :goto_48
    return-void

    .line 2459
    .restart local v1    # "f":Ljava/io/File;
    :catch_49
    move-exception v0

    .line 2460
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "MediaScanner"

    const-string v6, "IOException in MediaScanner.processM3uPlayList()"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_48

    .line 2453
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "f":Ljava/io/File;
    :catch_52
    move-exception v0

    .line 2454
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_53
    :try_start_53
    const-string v5, "MediaScanner"

    const-string v6, "IOException in MediaScanner.processM3uPlayList()"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5a
    .catchall {:try_start_53 .. :try_end_5a} :catchall_69

    .line 2457
    if-eqz v3, :cond_48

    .line 2458
    :try_start_5c
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_60

    goto :goto_48

    .line 2459
    :catch_60
    move-exception v0

    .line 2460
    const-string v5, "MediaScanner"

    const-string v6, "IOException in MediaScanner.processM3uPlayList()"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_48

    .line 2456
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_69
    move-exception v5

    .line 2457
    :goto_6a
    if-eqz v3, :cond_6f

    .line 2458
    :try_start_6c
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_6f} :catch_70

    .line 2461
    :cond_6f
    :goto_6f
    throw v5

    .line 2459
    :catch_70
    move-exception v0

    .line 2460
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "MediaScanner"

    const-string v7, "IOException in MediaScanner.processM3uPlayList()"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6f

    .line 2456
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "f":Ljava/io/File;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catchall_79
    move-exception v5

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_6a

    .line 2453
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_7c
    move-exception v0

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_53
.end method

.method private processPlayList(Landroid/media/MediaScanner$FileEntry;Landroid/database/Cursor;)V
    .registers 23
    .param p1, "entry"    # Landroid/media/MediaScanner$FileEntry;
    .param p2, "fileList"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2563
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 2564
    .local v17, "path":Ljava/lang/String;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 2565
    .local v5, "values":Landroid/content/ContentValues;
    const/16 v2, 0x2f

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v14

    .line 2566
    .local v14, "lastSlash":I
    if-gez v14, :cond_30

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bad path "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2568
    :cond_30
    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/media/MediaScanner$FileEntry;->mRowId:J

    move-wide/from16 v18, v0

    .line 2571
    .local v18, "rowId":J
    const-string/jumbo v2, "name"

    invoke-virtual {v5, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2572
    .local v16, "name":Ljava/lang/String;
    if-nez v16, :cond_5a

    .line 2573
    const-string/jumbo v2, "title"

    invoke-virtual {v5, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2574
    if-nez v16, :cond_5a

    .line 2576
    const/16 v2, 0x2e

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v13

    .line 2577
    .local v13, "lastDot":I
    if-gez v13, :cond_b6

    add-int/lit8 v2, v14, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 2582
    .end local v13    # "lastDot":I
    :cond_5a
    :goto_5a
    const-string/jumbo v2, "name"

    move-object/from16 v0, v16

    invoke-virtual {v5, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2583
    const-string v2, "date_modified"

    move-object/from16 v0, p1

    iget-wide v6, v0, Landroid/media/MediaScanner$FileEntry;->mLastModified:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2585
    const-wide/16 v2, 0x0

    cmp-long v2, v18, v2

    if-nez v2, :cond_bf

    .line 2586
    const-string v2, "_data"

    move-object/from16 v0, v17

    invoke-virtual {v5, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2587
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    invoke-interface {v2, v3, v6, v5}, Landroid/content/IContentProvider;->insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    .line 2588
    .local v4, "uri":Landroid/net/Uri;
    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v18

    .line 2589
    const-string/jumbo v2, "members"

    invoke-static {v4, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 2599
    .local v9, "membersUri":Landroid/net/Uri;
    :goto_97
    const/4 v2, 0x0

    add-int/lit8 v3, v14, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 2600
    .local v8, "playListDirectory":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v15

    .line 2601
    .local v15, "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    if-nez v15, :cond_eb

    const/4 v12, 0x0

    .line 2603
    .local v12, "fileType":I
    :goto_a7
    const/16 v2, 0x29

    if-ne v12, v2, :cond_ee

    move-object/from16 v6, p0

    move-object/from16 v7, v17

    move-object v10, v5

    move-object/from16 v11, p2

    .line 2604
    invoke-direct/range {v6 .. v11}, Landroid/media/MediaScanner;->processM3uPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V

    .line 2610
    :cond_b5
    :goto_b5
    return-void

    .line 2577
    .end local v4    # "uri":Landroid/net/Uri;
    .end local v8    # "playListDirectory":Ljava/lang/String;
    .end local v9    # "membersUri":Landroid/net/Uri;
    .end local v12    # "fileType":I
    .end local v15    # "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    .restart local v13    # "lastDot":I
    :cond_b6
    add-int/lit8 v2, v14, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    goto :goto_5a

    .line 2591
    .end local v13    # "lastDot":I
    :cond_bf
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    move-wide/from16 v0, v18

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 2592
    .restart local v4    # "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2595
    const-string/jumbo v2, "members"

    invoke-static {v4, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 2596
    .restart local v9    # "membersUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v2, v3, v9, v6, v7}, Landroid/content/IContentProvider;->delete(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_97

    .line 2601
    .restart local v8    # "playListDirectory":Ljava/lang/String;
    .restart local v15    # "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    :cond_eb
    iget v12, v15, Landroid/media/MediaFile$MediaFileType;->fileType:I

    goto :goto_a7

    .line 2605
    .restart local v12    # "fileType":I
    :cond_ee
    const/16 v2, 0x2a

    if-ne v12, v2, :cond_fd

    move-object/from16 v6, p0

    move-object/from16 v7, v17

    move-object v10, v5

    move-object/from16 v11, p2

    .line 2606
    invoke-direct/range {v6 .. v11}, Landroid/media/MediaScanner;->processPlsPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V

    goto :goto_b5

    .line 2607
    :cond_fd
    const/16 v2, 0x2b

    if-ne v12, v2, :cond_b5

    move-object/from16 v6, p0

    move-object/from16 v7, v17

    move-object v10, v5

    move-object/from16 v11, p2

    .line 2608
    invoke-direct/range {v6 .. v11}, Landroid/media/MediaScanner;->processWplPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V

    goto :goto_b5
.end method

.method private processPlayLists()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2613
    iget-object v0, p0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 2614
    .local v10, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaScanner$FileEntry;>;"
    const/4 v9, 0x0

    .line 2618
    .local v9, "fileList":Landroid/database/Cursor;
    :try_start_7
    iget-object v0, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    sget-object v3, Landroid/media/MediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v4, "media_type=2"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v9

    .line 2620
    :cond_19
    :goto_19
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 2621
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/MediaScanner$FileEntry;

    .line 2623
    .local v8, "entry":Landroid/media/MediaScanner$FileEntry;
    iget-boolean v0, v8, Landroid/media/MediaScanner$FileEntry;->mLastModifiedChanged:Z

    if-eqz v0, :cond_19

    .line 2624
    if-eqz v9, :cond_19

    invoke-direct {p0, v8, v9}, Landroid/media/MediaScanner;->processPlayList(Landroid/media/MediaScanner$FileEntry;Landroid/database/Cursor;)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_2e} :catch_2f
    .catchall {:try_start_7 .. :try_end_2e} :catchall_3c

    goto :goto_19

    .line 2627
    .end local v8    # "entry":Landroid/media/MediaScanner$FileEntry;
    :catch_2f
    move-exception v0

    .line 2629
    if-eqz v9, :cond_35

    .line 2630
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2633
    :cond_35
    :goto_35
    return-void

    .line 2629
    :cond_36
    if-eqz v9, :cond_35

    .line 2630
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_35

    .line 2629
    :catchall_3c
    move-exception v0

    if-eqz v9, :cond_42

    .line 2630
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_42
    throw v0
.end method

.method private processPlsPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V
    .registers 15
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "playListDirectory"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "values"    # Landroid/content/ContentValues;
    .param p5, "fileList"    # Landroid/database/Cursor;

    .prologue
    .line 2467
    const/4 v4, 0x0

    .line 2469
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2470
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4a

    .line 2471
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v7, 0x2000

    invoke-direct {v5, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1d} :catch_59
    .catchall {:try_start_1 .. :try_end_1d} :catchall_70

    .line 2473
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v5, "reader":Ljava/io/BufferedReader;
    :try_start_1d
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 2474
    .local v3, "line":Ljava/lang/String;
    iget-object v6, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 2475
    :goto_26
    if-eqz v3, :cond_46

    .line 2477
    const-string v6, "File"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_41

    .line 2478
    const/16 v6, 0x3d

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 2479
    .local v1, "equals":I
    if-lez v1, :cond_41

    .line 2480
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, p2}, Landroid/media/MediaScanner;->cachePlaylistEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 2483
    .end local v1    # "equals":I
    :cond_41
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    goto :goto_26

    .line 2486
    :cond_46
    invoke-direct {p0, p5, p4, p3}, Landroid/media/MediaScanner;->processCachedPlaylist(Landroid/database/Cursor;Landroid/content/ContentValues;Landroid/net/Uri;)V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_49} :catch_83
    .catchall {:try_start_1d .. :try_end_49} :catchall_80

    move-object v4, v5

    .line 2492
    .end local v3    # "line":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :cond_4a
    if-eqz v4, :cond_4f

    .line 2493
    :try_start_4c
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_50

    .line 2498
    .end local v2    # "f":Ljava/io/File;
    :cond_4f
    :goto_4f
    return-void

    .line 2494
    .restart local v2    # "f":Ljava/io/File;
    :catch_50
    move-exception v0

    .line 2495
    .local v0, "e":Ljava/io/IOException;
    const-string v6, "MediaScanner"

    const-string v7, "IOException in MediaScanner.processPlsPlayList()"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4f

    .line 2488
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "f":Ljava/io/File;
    :catch_59
    move-exception v0

    .line 2489
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_5a
    :try_start_5a
    const-string v6, "MediaScanner"

    const-string v7, "IOException in MediaScanner.processPlsPlayList()"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_61
    .catchall {:try_start_5a .. :try_end_61} :catchall_70

    .line 2492
    if-eqz v4, :cond_4f

    .line 2493
    :try_start_63
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_67

    goto :goto_4f

    .line 2494
    :catch_67
    move-exception v0

    .line 2495
    const-string v6, "MediaScanner"

    const-string v7, "IOException in MediaScanner.processPlsPlayList()"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4f

    .line 2491
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_70
    move-exception v6

    .line 2492
    :goto_71
    if-eqz v4, :cond_76

    .line 2493
    :try_start_73
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_76} :catch_77

    .line 2496
    :cond_76
    :goto_76
    throw v6

    .line 2494
    :catch_77
    move-exception v0

    .line 2495
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v7, "MediaScanner"

    const-string v8, "IOException in MediaScanner.processPlsPlayList()"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_76

    .line 2491
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "f":Ljava/io/File;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catchall_80
    move-exception v6

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_71

    .line 2488
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catch_83
    move-exception v0

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_5a
.end method

.method private processWplPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V
    .registers 13
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "playListDirectory"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "values"    # Landroid/content/ContentValues;
    .param p5, "fileList"    # Landroid/database/Cursor;

    .prologue
    .line 2536
    const/4 v2, 0x0

    .line 2538
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2539
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 2540
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_11
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_11} :catch_3b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_11} :catch_4e
    .catchall {:try_start_1 .. :try_end_11} :catchall_61

    .line 2542
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_11
    iget-object v4, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 2543
    const-string v4, "UTF-8"

    invoke-static {v4}, Landroid/util/Xml;->findEncodingByName(Ljava/lang/String;)Landroid/util/Xml$Encoding;

    move-result-object v4

    new-instance v5, Landroid/media/MediaScanner$WplHandler;

    invoke-direct {v5, p0, p2, p3, p5}, Landroid/media/MediaScanner$WplHandler;-><init>(Landroid/media/MediaScanner;Ljava/lang/String;Landroid/net/Uri;Landroid/database/Cursor;)V

    invoke-virtual {v5}, Landroid/media/MediaScanner$WplHandler;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V

    .line 2546
    invoke-direct {p0, p5, p4, p3}, Landroid/media/MediaScanner;->processCachedPlaylist(Landroid/database/Cursor;Landroid/content/ContentValues;Landroid/net/Uri;)V
    :try_end_2b
    .catch Lorg/xml/sax/SAXException; {:try_start_11 .. :try_end_2b} :catch_77
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_2b} :catch_74
    .catchall {:try_start_11 .. :try_end_2b} :catchall_71

    move-object v2, v3

    .line 2554
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :cond_2c
    if-eqz v2, :cond_31

    .line 2555
    :try_start_2e
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_32

    .line 2560
    .end local v1    # "f":Ljava/io/File;
    :cond_31
    :goto_31
    return-void

    .line 2556
    .restart local v1    # "f":Ljava/io/File;
    :catch_32
    move-exception v0

    .line 2557
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "MediaScanner"

    const-string v5, "IOException in MediaScanner.processWplPlayList()"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_31

    .line 2548
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "f":Ljava/io/File;
    :catch_3b
    move-exception v0

    .line 2549
    .local v0, "e":Lorg/xml/sax/SAXException;
    :goto_3c
    :try_start_3c
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_61

    .line 2554
    if-eqz v2, :cond_31

    .line 2555
    :try_start_41
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_45

    goto :goto_31

    .line 2556
    :catch_45
    move-exception v0

    .line 2557
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "MediaScanner"

    const-string v5, "IOException in MediaScanner.processWplPlayList()"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_31

    .line 2550
    .end local v0    # "e":Ljava/io/IOException;
    :catch_4e
    move-exception v0

    .line 2551
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_4f
    :try_start_4f
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_61

    .line 2554
    if-eqz v2, :cond_31

    .line 2555
    :try_start_54
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_58

    goto :goto_31

    .line 2556
    :catch_58
    move-exception v0

    .line 2557
    const-string v4, "MediaScanner"

    const-string v5, "IOException in MediaScanner.processWplPlayList()"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_31

    .line 2553
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_61
    move-exception v4

    .line 2554
    :goto_62
    if-eqz v2, :cond_67

    .line 2555
    :try_start_64
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_68

    .line 2558
    :cond_67
    :goto_67
    throw v4

    .line 2556
    :catch_68
    move-exception v0

    .line 2557
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v5, "MediaScanner"

    const-string v6, "IOException in MediaScanner.processWplPlayList()"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_67

    .line 2553
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "f":Ljava/io/File;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catchall_71
    move-exception v4

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_62

    .line 2550
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_74
    move-exception v0

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_4f

    .line 2548
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_77
    move-exception v0

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_3c
.end method

.method private pruneDeadThumbnailFiles()V
    .registers 19

    .prologue
    .line 1830
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 1831
    .local v12, "existingFiles":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mExternalStoragePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/DCIM/.thumbnails"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1832
    .local v10, "directory":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v14

    .line 1833
    .local v14, "files":[Ljava/lang/String;
    const/4 v9, 0x0

    .line 1834
    .local v9, "c":Landroid/database/Cursor;
    if-nez v14, :cond_2b

    .line 1835
    const/4 v1, 0x0

    new-array v14, v1, [Ljava/lang/String;

    .line 1837
    :cond_2b
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_2d
    array-length v1, v14

    move/from16 v0, v16

    if-ge v0, v1, :cond_51

    .line 1838
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v14, v16

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1839
    .local v15, "fullPathString":Ljava/lang/String;
    invoke-virtual {v12, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1837
    add-int/lit8 v16, v16, 0x1

    goto :goto_2d

    .line 1843
    .end local v15    # "fullPathString":Ljava/lang/String;
    :cond_51
    :try_start_51
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mThumbsUri:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_data"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v1 .. v8}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v9

    .line 1850
    const-string v1, "MediaScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "images pruneDeadThumbnailFiles... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1851
    if-eqz v9, :cond_9b

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_9b

    .line 1853
    :cond_8d
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1854
    .restart local v15    # "fullPathString":Ljava/lang/String;
    invoke-virtual {v12, v15}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1855
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_8d

    .line 1857
    .end local v15    # "fullPathString":Ljava/lang/String;
    :cond_9b
    if-eqz v9, :cond_a0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1859
    :cond_a0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    const-string v3, "external"

    invoke-static {v3}, Landroid/provider/MediaStore$Video$Thumbnails;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_data"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v1 .. v8}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v9

    .line 1866
    const-string v1, "MediaScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "video pruneDeadThumbnailFiles... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1867
    if-eqz v9, :cond_ed

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_ed

    .line 1869
    :cond_df
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1870
    .restart local v15    # "fullPathString":Ljava/lang/String;
    invoke-virtual {v12, v15}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1871
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_df

    .line 1874
    .end local v15    # "fullPathString":Ljava/lang/String;
    :cond_ed
    invoke-virtual {v12}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :goto_f1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_127

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;
    :try_end_fd
    .catch Landroid/os/RemoteException; {:try_start_51 .. :try_end_fd} :catch_120
    .catchall {:try_start_51 .. :try_end_fd} :catchall_12d

    .line 1878
    .local v13, "fileToDelete":Ljava/lang/String;
    :try_start_fd
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_105
    .catch Ljava/lang/SecurityException; {:try_start_fd .. :try_end_105} :catch_106
    .catch Landroid/os/RemoteException; {:try_start_fd .. :try_end_105} :catch_120
    .catchall {:try_start_fd .. :try_end_105} :catchall_12d

    goto :goto_f1

    .line 1879
    :catch_106
    move-exception v11

    .line 1880
    .local v11, "ex":Ljava/lang/SecurityException;
    :try_start_107
    const-string v1, "MediaScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SeecurityException occured during delete : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11f
    .catch Landroid/os/RemoteException; {:try_start_107 .. :try_end_11f} :catch_120
    .catchall {:try_start_107 .. :try_end_11f} :catchall_12d

    goto :goto_f1

    .line 1885
    .end local v11    # "ex":Ljava/lang/SecurityException;
    .end local v13    # "fileToDelete":Ljava/lang/String;
    .end local v17    # "i$":Ljava/util/Iterator;
    :catch_120
    move-exception v1

    .line 1888
    if-eqz v9, :cond_126

    .line 1889
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1892
    :cond_126
    :goto_126
    return-void

    .line 1888
    .restart local v17    # "i$":Ljava/util/Iterator;
    :cond_127
    if-eqz v9, :cond_126

    .line 1889
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_126

    .line 1888
    .end local v17    # "i$":Ljava/util/Iterator;
    :catchall_12d
    move-exception v1

    if-eqz v9, :cond_133

    .line 1889
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_133
    throw v1
.end method

.method private releaseResources()V
    .registers 2

    .prologue
    .line 1970
    iget-object v0, p0, Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    if-eqz v0, :cond_c

    .line 1971
    iget-object v0, p0, Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0}, Landroid/drm/DrmManagerClient;->release()V

    .line 1972
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    .line 1974
    :cond_c
    return-void
.end method

.method private setCustomizedRingtoneFileNames()V
    .registers 5

    .prologue
    const v3, 0x1040053

    const v2, 0x1040051

    const v1, 0x104004e

    .line 547
    iget-object v0, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_bf

    .line 549
    iget-object v0, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;

    .line 556
    :goto_25
    iget-object v0, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104004f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mDefaultRingtone2Filename:Ljava/lang/String;

    .line 558
    iget-object v0, p0, Landroid/media/MediaScanner;->mDefaultRingtone2Filename:Ljava/lang/String;

    if-eqz v0, :cond_40

    iget-object v0, p0, Landroid/media/MediaScanner;->mDefaultRingtone2Filename:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 559
    :cond_40
    iget-object v0, p0, Landroid/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;

    iput-object v0, p0, Landroid/media/MediaScanner;->mDefaultRingtone2Filename:Ljava/lang/String;

    .line 562
    :cond_44
    iget-object v0, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040050

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mDefaultRingtone3Filename:Ljava/lang/String;

    .line 564
    iget-object v0, p0, Landroid/media/MediaScanner;->mDefaultRingtone3Filename:Ljava/lang/String;

    if-eqz v0, :cond_5f

    iget-object v0, p0, Landroid/media/MediaScanner;->mDefaultRingtone3Filename:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 565
    :cond_5f
    iget-object v0, p0, Landroid/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;

    iput-object v0, p0, Landroid/media/MediaScanner;->mDefaultRingtone3Filename:Ljava/lang/String;

    .line 568
    :cond_63
    iget-object v0, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ca

    .line 570
    iget-object v0, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;

    .line 577
    :goto_7f
    iget-object v0, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040052

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mDefaultMmsNotificationFilename:Ljava/lang/String;

    .line 579
    iget-object v0, p0, Landroid/media/MediaScanner;->mDefaultMmsNotificationFilename:Ljava/lang/String;

    if-eqz v0, :cond_9e

    iget-object v0, p0, Landroid/media/MediaScanner;->mDefaultMmsNotificationFilename:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a2

    .line 581
    :cond_9e
    iget-object v0, p0, Landroid/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;

    iput-object v0, p0, Landroid/media/MediaScanner;->mDefaultMmsNotificationFilename:Ljava/lang/String;

    .line 584
    :cond_a2
    iget-object v0, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d4

    .line 585
    iget-object v0, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;

    .line 591
    :goto_be
    return-void

    .line 552
    :cond_bf
    const-string/jumbo v0, "ro.config.ringtone"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;

    goto/16 :goto_25

    .line 573
    :cond_ca
    const-string/jumbo v0, "ro.config.notification_sound"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;

    goto :goto_7f

    .line 588
    :cond_d4
    const-string/jumbo v0, "ro.config.alarm_alert"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;

    goto :goto_be
.end method

.method private setDefaultRingtoneFileNames()V
    .registers 2

    .prologue
    .line 534
    invoke-direct {p0}, Landroid/media/MediaScanner;->isSoundCustomized()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 535
    invoke-direct {p0}, Landroid/media/MediaScanner;->setCustomizedRingtoneFileNames()V

    .line 544
    :goto_9
    return-void

    .line 537
    :cond_a
    const-string/jumbo v0, "ro.config.ringtone"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;

    .line 539
    const-string/jumbo v0, "ro.config.notification_sound"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;

    .line 541
    const-string/jumbo v0, "ro.config.alarm_alert"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;

    goto :goto_9
.end method

.method private static setExternalStorageSdPath(Landroid/content/Context;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 516
    sget-object v3, Landroid/media/MediaScanner;->storageManager:Landroid/os/storage/StorageManager;

    if-nez v3, :cond_36

    .line 517
    const-string/jumbo v3, "storage"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManager;

    sput-object v3, Landroid/media/MediaScanner;->storageManager:Landroid/os/storage/StorageManager;

    .line 518
    sget-object v3, Landroid/media/MediaScanner;->storageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v1

    .line 519
    .local v1, "storageVolumes":[Landroid/os/storage/StorageVolume;
    if-eqz v1, :cond_3a

    .line 520
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_18
    array-length v3, v1

    if-ge v0, v3, :cond_36

    .line 521
    aget-object v2, v1, v0

    .line 522
    .local v2, "volume":Landroid/os/storage/StorageVolume;
    const-string/jumbo v3, "sd"

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v3

    if-eqz v3, :cond_37

    .line 523
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Landroid/media/MediaScanner;->mExternalStorageSdPath:Ljava/lang/String;

    .line 531
    .end local v0    # "i":I
    .end local v1    # "storageVolumes":[Landroid/os/storage/StorageVolume;
    .end local v2    # "volume":Landroid/os/storage/StorageVolume;
    :cond_36
    :goto_36
    return-void

    .line 520
    .restart local v0    # "i":I
    .restart local v1    # "storageVolumes":[Landroid/os/storage/StorageVolume;
    .restart local v2    # "volume":Landroid/os/storage/StorageVolume;
    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 528
    .end local v0    # "i":I
    .end local v2    # "volume":Landroid/os/storage/StorageVolume;
    :cond_3a
    const-string v3, "MediaScanner"

    const-string v4, "The storageVolumes is null."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36
.end method

.method public static terminateBulkDeleter(Ljava/lang/String;)V
    .registers 4
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 1813
    const-string v0, "MediaScanner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TerminateBulkDeleter is called for path : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1814
    sget-object v1, Landroid/media/MediaScanner;->syncEjectedPath:Ljava/lang/Object;

    monitor-enter v1

    .line 1815
    :try_start_1b
    sput-object p0, Landroid/media/MediaScanner;->ejectedPath:Ljava/lang/String;

    .line 1816
    monitor-exit v1

    .line 1817
    return-void

    .line 1816
    :catchall_1f
    move-exception v0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_1b .. :try_end_21} :catchall_1f

    throw v0
.end method


# virtual methods
.method public checkDefaultSounds(Ljava/lang/String;)V
    .registers 8
    .param p1, "volumeName"    # Ljava/lang/String;

    .prologue
    .line 2671
    const-string v0, "MediaScanner"

    const-string v4, "checkDefaultSounds"

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2673
    invoke-static {p1}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2674
    .local v3, "URIdefaultSound":Landroid/net/Uri;
    sget-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    .line 2675
    .local v2, "URIsetting":Landroid/net/Uri;
    iget-object v0, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2677
    .local v1, "cr":Landroid/content/ContentResolver;
    if-nez v1, :cond_1d

    .line 2678
    const-string v0, "MediaScanner"

    const-string v4, "Context resolver is null!!!"

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2692
    :goto_1c
    return-void

    .line 2682
    :cond_1d
    invoke-direct {p0}, Landroid/media/MediaScanner;->setDefaultRingtoneFileNames()V

    .line 2685
    const-string v4, "alarm_alert"

    iget-object v5, p0, Landroid/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/media/MediaScanner;->SettingDefaultSoundAgain(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 2688
    const-string/jumbo v4, "notification_sound"

    iget-object v5, p0, Landroid/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/media/MediaScanner;->SettingDefaultSoundAgain(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 2691
    const-string/jumbo v4, "ringtone"

    iget-object v5, p0, Landroid/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/media/MediaScanner;->SettingDefaultSoundAgain(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c
.end method

.method public native extractAlbumArt(Ljava/io/FileDescriptor;)[B
.end method

.method protected finalize()V
    .registers 3

    .prologue
    .line 2659
    iget-object v0, p0, Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    if-eqz v0, :cond_c

    .line 2660
    iget-object v0, p0, Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0}, Landroid/drm/DrmManagerClient;->release()V

    .line 2661
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    .line 2664
    :cond_c
    iget-object v0, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 2665
    invoke-direct {p0}, Landroid/media/MediaScanner;->native_finalize()V

    .line 2666
    return-void
.end method

.method makeEntryFor(Ljava/lang/String;)Landroid/media/MediaScanner$FileEntry;
    .registers 16
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v13, 0x0

    .line 2306
    const/4 v12, 0x0

    .line 2308
    .local v12, "c":Landroid/database/Cursor;
    :try_start_2
    const-string v4, "_data=?"

    .line 2309
    .local v4, "where":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v5, v0

    .line 2310
    .local v5, "selectionArgs":[Ljava/lang/String;
    iget-object v0, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/media/MediaScanner;->mFilesUriNoNotify:Landroid/net/Uri;

    sget-object v3, Landroid/media/MediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v12

    .line 2312
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 2313
    const/4 v0, 0x0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 2315
    .local v7, "rowId":J
    const/4 v0, 0x3

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 2316
    .local v10, "lastModified":J
    new-instance v6, Landroid/media/MediaScanner$FileEntry;

    move-object v9, p1

    invoke-direct/range {v6 .. v11}, Landroid/media/MediaScanner$FileEntry;-><init>(JLjava/lang/String;J)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2e} :catch_3b
    .catchall {:try_start_2 .. :try_end_2e} :catchall_42

    .line 2320
    if-eqz v12, :cond_33

    .line 2321
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 2324
    .end local v4    # "where":Ljava/lang/String;
    .end local v5    # "selectionArgs":[Ljava/lang/String;
    .end local v7    # "rowId":J
    .end local v10    # "lastModified":J
    :cond_33
    :goto_33
    return-object v6

    .line 2320
    .restart local v4    # "where":Ljava/lang/String;
    .restart local v5    # "selectionArgs":[Ljava/lang/String;
    :cond_34
    if-eqz v12, :cond_39

    .line 2321
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .end local v4    # "where":Ljava/lang/String;
    .end local v5    # "selectionArgs":[Ljava/lang/String;
    :cond_39
    :goto_39
    move-object v6, v13

    .line 2324
    goto :goto_33

    .line 2318
    :catch_3b
    move-exception v0

    .line 2320
    if-eqz v12, :cond_39

    .line 2321
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_39

    .line 2320
    :catchall_42
    move-exception v0

    if-eqz v12, :cond_48

    .line 2321
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_48
    throw v0
.end method

.method public release()V
    .registers 1

    .prologue
    .line 2653
    invoke-direct {p0}, Landroid/media/MediaScanner;->native_finalize()V

    .line 2654
    return-void
.end method

.method public scanDirectories([Ljava/lang/String;Ljava/lang/String;)V
    .registers 41
    .param p1, "directories"    # [Ljava/lang/String;
    .param p2, "volumeName"    # Ljava/lang/String;

    .prologue
    .line 2013
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    .line 2014
    .local v32, "start":J
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/media/MediaScanner;->initialize(Ljava/lang/String;)V

    .line 2015
    const/16 v34, 0x0

    const/16 v35, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner;->prescan(Ljava/lang/String;Z)I

    move-result v34

    move/from16 v0, v34

    int-to-long v0, v0

    move-wide/from16 v24, v0

    .line 2016
    .local v24, "prescanBulkDeleted":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 2020
    .local v22, "prescan":J
    new-instance v34, Landroid/media/MediaInserter;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    move-object/from16 v36, v0

    const/16 v37, 0x64

    invoke-direct/range {v34 .. v37}, Landroid/media/MediaInserter;-><init>(Landroid/content/IContentProvider;Ljava/lang/String;I)V

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    .line 2023
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_3c
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v34, v0

    move/from16 v0, v34

    if-ge v11, v0, :cond_c0

    .line 2024
    sget-object v34, Landroid/media/MediaScanner;->mExternalStorageSdPath:Ljava/lang/String;

    if-eqz v34, :cond_53

    aget-object v34, p1, v11

    sget-object v35, Landroid/media/MediaScanner;->mExternalStorageSdPath:Ljava/lang/String;

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_6f

    :cond_53
    aget-object v34, p1, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mExternalStoragePath:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_6f

    aget-object v34, p1, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mInternalStoragePath:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_bc

    .line 2025
    :cond_6f
    const-string v34, "MediaScanner"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "processDirectory :  "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    aget-object v36, p1, v11

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2026
    aget-object v34, p1, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner;->processDirectory(Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    .line 2029
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 2030
    .local v6, "bulkInserterTime":J
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/media/MediaInserter;->flushAll()V

    .line 2031
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaScanner;->mTotalBulkInserterTime:J

    move-wide/from16 v34, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v36

    sub-long v36, v36, v6

    add-long v34, v34, v36

    move-wide/from16 v0, v34

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/MediaScanner;->mTotalBulkInserterTime:J

    .line 2023
    .end local v6    # "bulkInserterTime":J
    :cond_bc
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_3c

    .line 2048
    :cond_c0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/media/MediaInserter;->flushAll()V

    .line 2049
    const/16 v34, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    .line 2052
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    .line 2053
    .local v28, "scan":J
    invoke-direct/range {p0 .. p1}, Landroid/media/MediaScanner;->postscan([Ljava/lang/String;)V

    .line 2054
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 2056
    .local v12, "end":J
    const-wide/16 v18, 0x0

    .line 2057
    .local v18, "makeEntryPercentage":J
    const-wide/16 v20, 0x0

    .line 2058
    .local v20, "parsingPercentage":J
    const-wide/16 v8, 0x0

    .line 2059
    .local v8, "bulkInsertingPercentage":J
    const-wide/16 v4, 0x0

    .line 2060
    .local v4, "bitmapDecodingPercentage":J
    const-wide/16 v14, 0x0

    .line 2061
    .local v14, "exifExtractingPercentage":J
    const-wide/16 v30, 0x0

    .line 2063
    .local v30, "sefExtractingPercentage":J
    sub-long v34, v28, v22

    const-wide/16 v36, 0x0

    cmp-long v34, v34, v36

    if-eqz v34, :cond_136

    .line 2064
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaScanner;->mTotalMakeEntryTime:J

    move-wide/from16 v34, v0

    const-wide/16 v36, 0x64

    mul-long v34, v34, v36

    sub-long v36, v28, v22

    div-long v18, v34, v36

    .line 2065
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaScanner;->mTotalParsingTime:J

    move-wide/from16 v34, v0

    const-wide/16 v36, 0x64

    mul-long v34, v34, v36

    sub-long v36, v28, v22

    div-long v20, v34, v36

    .line 2066
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaScanner;->mTotalBitmapDecodingTime:J

    move-wide/from16 v34, v0

    const-wide/16 v36, 0x64

    mul-long v34, v34, v36

    sub-long v36, v28, v22

    div-long v4, v34, v36

    .line 2067
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaScanner;->mTotalExifExtractingTime:J

    move-wide/from16 v34, v0

    const-wide/16 v36, 0x64

    mul-long v34, v34, v36

    sub-long v36, v28, v22

    div-long v14, v34, v36

    .line 2068
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaScanner;->mTotalBulkInserterTime:J

    move-wide/from16 v34, v0

    const-wide/16 v36, 0x64

    mul-long v34, v34, v36

    sub-long v36, v28, v22

    div-long v8, v34, v36

    .line 2071
    :cond_136
    const-string v34, "MediaScanner"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, " prescan time: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    sub-long v36, v22, v32

    invoke-virtual/range {v35 .. v37}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, "ms (DB items: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner;->contentsCount:I

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ")\n"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2072
    const-string v34, "MediaScanner"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "    scan time: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    sub-long v36, v28, v22

    invoke-virtual/range {v35 .. v37}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, "ms (Caching mode: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaScanner;->useHashMap:Z

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "), (makeEntry time: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaScanner;->mTotalMakeEntryTime:J

    move-wide/from16 v36, v0

    invoke-virtual/range {v35 .. v37}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, "ms ~"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "%),  (parsing time: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaScanner;->mTotalParsingTime:J

    move-wide/from16 v36, v0

    invoke-virtual/range {v35 .. v37}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, "ms ~"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "%),  (bitmapDecoding time: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaScanner;->mTotalBitmapDecodingTime:J

    move-wide/from16 v36, v0

    invoke-virtual/range {v35 .. v37}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, "ms ~"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "%), (exifExtracting time : "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaScanner;->mTotalExifExtractingTime:J

    move-wide/from16 v36, v0

    invoke-virtual/range {v35 .. v37}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, "ms ~"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "%), (bulkInserter time : "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaScanner;->mTotalBulkInserterTime:J

    move-wide/from16 v36, v0

    invoke-virtual/range {v35 .. v37}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, "ms ~"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "%)\n"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2073
    const-string v34, "MediaScanner"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "postscan time: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    sub-long v36, v12, v28

    invoke-virtual/range {v35 .. v37}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, "ms (bulkDeleter : "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "), (delete DeadThumbnail time : "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaScanner;->mTotalDeadThumbnailTime:J

    move-wide/from16 v36, v0

    invoke-virtual/range {v35 .. v37}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, "ms)\n"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2074
    const-string v34, "MediaScanner"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "   total time: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    sub-long v36, v12, v32

    invoke-virtual/range {v35 .. v37}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, "ms\n"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2075
    const-string v34, "MediaScanner"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "checked files: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaScanner;->mTotalCheckedFiles:J

    move-wide/from16 v36, v0

    invoke-virtual/range {v35 .. v37}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "  directories : "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaScanner;->mTotalCheckedDirectories:J

    move-wide/from16 v36, v0

    invoke-virtual/range {v35 .. v37}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "  (I: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaScanner;->mTotalInserted:J

    move-wide/from16 v36, v0

    invoke-virtual/range {v35 .. v37}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ", U: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaScanner;->mTotalUpdated:J

    move-wide/from16 v36, v0

    invoke-virtual/range {v35 .. v37}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ")\n"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2078
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Volume:"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "/Current DB items:"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner;->contentsCount:I

    move/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "/Checked files:"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaScanner;->mTotalCheckedFiles:J

    move-wide/from16 v36, v0

    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "/Directories:"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaScanner;->mTotalCheckedDirectories:J

    move-wide/from16 v36, v0

    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " (I:"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaScanner;->mTotalInserted:J

    move-wide/from16 v36, v0

    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "/U:"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaScanner;->mTotalUpdated:J

    move-wide/from16 v36, v0

    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "/D:"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ")"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 2083
    .local v17, "result":Ljava/lang/String;
    new-instance v26, Ljava/lang/StringBuffer;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuffer;-><init>()V

    .line 2084
    .local v26, "sb":Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mFileParsingStat:Ljava/util/HashMap;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 2086
    .local v16, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaScanner$FileParsingTime;>;"
    :goto_381
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_3a9

    .line 2087
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/media/MediaScanner$FileParsingTime;

    .line 2088
    .local v27, "time":Landroid/media/MediaScanner$FileParsingTime;
    invoke-virtual/range {v27 .. v27}, Landroid/media/MediaScanner$FileParsingTime;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_398
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_398} :catch_399
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_398} :catch_472
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_398} :catch_483
    .catchall {:try_start_0 .. :try_end_398} :catchall_494

    goto :goto_381

    .line 2111
    .end local v4    # "bitmapDecodingPercentage":J
    .end local v8    # "bulkInsertingPercentage":J
    .end local v11    # "i":I
    .end local v12    # "end":J
    .end local v14    # "exifExtractingPercentage":J
    .end local v16    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaScanner$FileParsingTime;>;"
    .end local v17    # "result":Ljava/lang/String;
    .end local v18    # "makeEntryPercentage":J
    .end local v20    # "parsingPercentage":J
    .end local v22    # "prescan":J
    .end local v24    # "prescanBulkDeleted":J
    .end local v26    # "sb":Ljava/lang/StringBuffer;
    .end local v27    # "time":Landroid/media/MediaScanner$FileParsingTime;
    .end local v28    # "scan":J
    .end local v30    # "sefExtractingPercentage":J
    .end local v32    # "start":J
    :catch_399
    move-exception v10

    .line 2113
    .local v10, "e":Landroid/database/SQLException;
    :try_start_39a
    const-string v34, "MediaScanner"

    const-string v35, "SQLException in MediaScanner.scan()"

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3a5
    .catchall {:try_start_39a .. :try_end_3a5} :catchall_494

    .line 2120
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->releaseResources()V

    .line 2122
    .end local v10    # "e":Landroid/database/SQLException;
    :goto_3a8
    return-void

    .line 2092
    .restart local v4    # "bitmapDecodingPercentage":J
    .restart local v8    # "bulkInsertingPercentage":J
    .restart local v11    # "i":I
    .restart local v12    # "end":J
    .restart local v14    # "exifExtractingPercentage":J
    .restart local v16    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaScanner$FileParsingTime;>;"
    .restart local v17    # "result":Ljava/lang/String;
    .restart local v18    # "makeEntryPercentage":J
    .restart local v20    # "parsingPercentage":J
    .restart local v22    # "prescan":J
    .restart local v24    # "prescanBulkDeleted":J
    .restart local v26    # "sb":Ljava/lang/StringBuffer;
    .restart local v28    # "scan":J
    .restart local v30    # "sefExtractingPercentage":J
    .restart local v32    # "start":J
    :cond_3a9
    if-eqz v26, :cond_3be

    :try_start_3ab
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuffer;->length()I

    move-result v34

    if-lez v34, :cond_3be

    .line 2093
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner;->printToMediaProviderDBLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2096
    :cond_3be
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaScanner;->mTotalParsingTime:J

    move-wide/from16 v34, v0

    const-wide/16 v36, 0x0

    cmp-long v34, v34, v36

    if-nez v34, :cond_3e2

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaScanner;->mTotalBitmapDecodingTime:J

    move-wide/from16 v34, v0

    const-wide/16 v36, 0x0

    cmp-long v34, v34, v36

    if-nez v34, :cond_3e2

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaScanner;->mTotalExifExtractingTime:J

    move-wide/from16 v34, v0

    const-wide/16 v36, 0x0

    cmp-long v34, v34, v36

    if-eqz v34, :cond_3fe

    :cond_3e2
    const-string v34, "MediaScanner"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, " parsing stat: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2097
    :cond_3fe
    const/16 v34, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner;->mFileParsingStat:Ljava/util/HashMap;

    .line 2098
    const-wide/16 v34, 0x0

    move-wide/from16 v0, v34

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/MediaScanner;->mTotalParsingTime:J

    .line 2099
    const-wide/16 v34, 0x0

    move-wide/from16 v0, v34

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/MediaScanner;->mTotalBitmapDecodingTime:J

    .line 2100
    const-wide/16 v34, 0x0

    move-wide/from16 v0, v34

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/MediaScanner;->mTotalExifExtractingTime:J

    .line 2101
    const-wide/16 v34, 0x0

    move-wide/from16 v0, v34

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/MediaScanner;->mTotalBulkInserterTime:J

    .line 2102
    const-wide/16 v34, 0x0

    move-wide/from16 v0, v34

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/MediaScanner;->mTotalCheckedFiles:J

    .line 2103
    const-wide/16 v34, 0x0

    move-wide/from16 v0, v34

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/MediaScanner;->mTotalCheckedDirectories:J

    .line 2104
    const-wide/16 v34, 0x0

    move-wide/from16 v0, v34

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/MediaScanner;->mTotalInserted:J

    .line 2105
    const-wide/16 v34, 0x0

    move-wide/from16 v0, v34

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/MediaScanner;->mTotalUpdated:J

    .line 2106
    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/media/MediaScanner;->useHashMap:Z

    .line 2107
    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner;->contentsCount:I

    .line 2109
    const/16 v34, 0x0

    aget-object v34, p1, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mInternalStoragePath:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_46d

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/media/MediaScanner;->checkDefaultSounds(Ljava/lang/String;)V
    :try_end_46d
    .catch Landroid/database/SQLException; {:try_start_3ab .. :try_end_46d} :catch_399
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3ab .. :try_end_46d} :catch_472
    .catch Landroid/os/RemoteException; {:try_start_3ab .. :try_end_46d} :catch_483
    .catchall {:try_start_3ab .. :try_end_46d} :catchall_494

    .line 2120
    :cond_46d
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->releaseResources()V

    goto/16 :goto_3a8

    .line 2114
    .end local v4    # "bitmapDecodingPercentage":J
    .end local v8    # "bulkInsertingPercentage":J
    .end local v11    # "i":I
    .end local v12    # "end":J
    .end local v14    # "exifExtractingPercentage":J
    .end local v16    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaScanner$FileParsingTime;>;"
    .end local v17    # "result":Ljava/lang/String;
    .end local v18    # "makeEntryPercentage":J
    .end local v20    # "parsingPercentage":J
    .end local v22    # "prescan":J
    .end local v24    # "prescanBulkDeleted":J
    .end local v26    # "sb":Ljava/lang/StringBuffer;
    .end local v28    # "scan":J
    .end local v30    # "sefExtractingPercentage":J
    .end local v32    # "start":J
    :catch_472
    move-exception v10

    .line 2116
    .local v10, "e":Ljava/lang/UnsupportedOperationException;
    :try_start_473
    const-string v34, "MediaScanner"

    const-string v35, "UnsupportedOperationException in MediaScanner.scan()"

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_47e
    .catchall {:try_start_473 .. :try_end_47e} :catchall_494

    .line 2120
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->releaseResources()V

    goto/16 :goto_3a8

    .line 2117
    .end local v10    # "e":Ljava/lang/UnsupportedOperationException;
    :catch_483
    move-exception v10

    .line 2118
    .local v10, "e":Landroid/os/RemoteException;
    :try_start_484
    const-string v34, "MediaScanner"

    const-string v35, "RemoteException in MediaScanner.scan()"

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_48f
    .catchall {:try_start_484 .. :try_end_48f} :catchall_494

    .line 2120
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->releaseResources()V

    goto/16 :goto_3a8

    .end local v10    # "e":Landroid/os/RemoteException;
    :catchall_494
    move-exception v34

    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->releaseResources()V

    throw v34
.end method

.method public scanMtpFile(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 32
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "volumeName"    # Ljava/lang/String;
    .param p3, "objectHandle"    # I
    .param p4, "format"    # I

    .prologue
    .line 2246
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/media/MediaScanner;->initialize(Ljava/lang/String;)V

    .line 2247
    invoke-static/range {p1 .. p1}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v26

    .line 2248
    .local v26, "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    if-nez v26, :cond_75

    const/16 v25, 0x0

    .line 2249
    .local v25, "fileType":I
    :goto_f
    new-instance v23, Ljava/io/File;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2250
    .local v23, "file":Ljava/io/File;
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    const-wide/16 v10, 0x3e8

    div-long v14, v4, v10

    .line 2252
    .local v14, "lastModifiedSeconds":J
    invoke-static/range {v25 .. v25}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v4

    if-nez v4, :cond_87

    invoke-static/range {v25 .. v25}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v4

    if-nez v4, :cond_87

    invoke-static/range {v25 .. v25}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v4

    if-nez v4, :cond_87

    invoke-static/range {v25 .. v25}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v4

    if-nez v4, :cond_87

    invoke-static/range {v25 .. v25}, Landroid/media/MediaFile;->isDrmFileType(I)Z

    move-result v4

    if-nez v4, :cond_87

    .line 2257
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 2258
    .local v7, "values":Landroid/content/ContentValues;
    const-string v4, "_size"

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2259
    const-string v4, "date_modified"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2261
    const/4 v4, 0x1

    :try_start_5a
    new-array v9, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v4

    .line 2262
    .local v9, "whereArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const-string v8, "_id=?"

    invoke-interface/range {v4 .. v9}, Landroid/content/IContentProvider;->update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_74
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_74} :catch_7c

    .line 2300
    .end local v7    # "values":Landroid/content/ContentValues;
    .end local v9    # "whereArgs":[Ljava/lang/String;
    .end local v14    # "lastModifiedSeconds":J
    :goto_74
    return-void

    .line 2248
    .end local v23    # "file":Ljava/io/File;
    .end local v25    # "fileType":I
    :cond_75
    move-object/from16 v0, v26

    iget v0, v0, Landroid/media/MediaFile$MediaFileType;->fileType:I

    move/from16 v25, v0

    goto :goto_f

    .line 2264
    .restart local v7    # "values":Landroid/content/ContentValues;
    .restart local v14    # "lastModifiedSeconds":J
    .restart local v23    # "file":Ljava/io/File;
    .restart local v25    # "fileType":I
    :catch_7c
    move-exception v21

    .line 2265
    .local v21, "e":Landroid/os/RemoteException;
    const-string v4, "MediaScanner"

    const-string v5, "RemoteException in scanMtpFile"

    move-object/from16 v0, v21

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_74

    .line 2270
    .end local v7    # "values":Landroid/content/ContentValues;
    .end local v21    # "e":Landroid/os/RemoteException;
    :cond_87
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner;->mMtpObjectHandle:I

    .line 2271
    const/16 v24, 0x0

    .line 2273
    .local v24, "fileList":Landroid/database/Cursor;
    :try_start_8f
    invoke-static/range {v25 .. v25}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v4

    if-eqz v4, :cond_d3

    .line 2275
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Landroid/media/MediaScanner;->prescan(Ljava/lang/String;Z)I

    .line 2277
    invoke-virtual/range {p0 .. p1}, Landroid/media/MediaScanner;->makeEntryFor(Ljava/lang/String;)Landroid/media/MediaScanner$FileEntry;

    move-result-object v22

    .line 2278
    .local v22, "entry":Landroid/media/MediaScanner$FileEntry;
    if-eqz v22, :cond_c5

    .line 2279
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    sget-object v13, Landroid/media/MediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-interface/range {v10 .. v17}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    .end local v14    # "lastModifiedSeconds":J
    move-result-object v24

    .line 2281
    if-eqz v24, :cond_c5

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner;->processPlayList(Landroid/media/MediaScanner$FileEntry;Landroid/database/Cursor;)V
    :try_end_c5
    .catch Landroid/os/RemoteException; {:try_start_8f .. :try_end_c5} :catch_fb
    .catchall {:try_start_8f .. :try_end_c5} :catchall_117

    .line 2294
    .end local v22    # "entry":Landroid/media/MediaScanner$FileEntry;
    :cond_c5
    :goto_c5
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/MediaScanner;->mMtpObjectHandle:I

    .line 2295
    if-eqz v24, :cond_cf

    .line 2296
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 2298
    :cond_cf
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->releaseResources()V

    goto :goto_74

    .line 2285
    .restart local v14    # "lastModifiedSeconds":J
    :cond_d3
    const/4 v4, 0x0

    :try_start_d4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Landroid/media/MediaScanner;->prescan(Ljava/lang/String;Z)I

    .line 2288
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    move-object/from16 v0, v26

    iget-object v13, v0, Landroid/media/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->length()J

    move-result-wide v16

    const/16 v4, 0x3001

    move/from16 v0, p4

    if-ne v0, v4, :cond_114

    const/16 v18, 0x1

    :goto_ef
    const/16 v19, 0x1

    invoke-static/range {p1 .. p1}, Landroid/media/MediaScanner;->isNoMediaPath(Ljava/lang/String;)Z

    move-result v20

    move-object/from16 v12, p1

    invoke-virtual/range {v11 .. v20}, Landroid/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;
    :try_end_fa
    .catch Landroid/os/RemoteException; {:try_start_d4 .. :try_end_fa} :catch_fb
    .catchall {:try_start_d4 .. :try_end_fa} :catchall_117

    goto :goto_c5

    .line 2291
    .end local v14    # "lastModifiedSeconds":J
    :catch_fb
    move-exception v21

    .line 2292
    .restart local v21    # "e":Landroid/os/RemoteException;
    :try_start_fc
    const-string v4, "MediaScanner"

    const-string v5, "RemoteException in MediaScanner.scanFile()"

    move-object/from16 v0, v21

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_105
    .catchall {:try_start_fc .. :try_end_105} :catchall_117

    .line 2294
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/MediaScanner;->mMtpObjectHandle:I

    .line 2295
    if-eqz v24, :cond_10f

    .line 2296
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 2298
    :cond_10f
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->releaseResources()V

    goto/16 :goto_74

    .line 2288
    .end local v21    # "e":Landroid/os/RemoteException;
    .restart local v14    # "lastModifiedSeconds":J
    :cond_114
    const/16 v18, 0x0

    goto :goto_ef

    .line 2294
    .end local v14    # "lastModifiedSeconds":J
    :catchall_117
    move-exception v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Landroid/media/MediaScanner;->mMtpObjectHandle:I

    .line 2295
    if-eqz v24, :cond_122

    .line 2296
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 2298
    :cond_122
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->releaseResources()V

    throw v4
.end method

.method public scanSingleFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 17
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "volumeName"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 2128
    :try_start_0
    invoke-static {p1}, Landroid/media/MediaScanner;->encodeStringResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2129
    .local v12, "str":Ljava/lang/String;
    const-string v1, "MediaScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "scanSingleFile : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2130
    const/4 v12, 0x0

    .line 2132
    invoke-direct {p0, p2}, Landroid/media/MediaScanner;->initialize(Ljava/lang/String;)V

    .line 2133
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Landroid/media/MediaScanner;->prescan(Ljava/lang/String;Z)I

    .line 2135
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2136
    .local v11, "file":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2d} :catch_54
    .catchall {:try_start_0 .. :try_end_2d} :catchall_61

    move-result v1

    if-nez v1, :cond_35

    .line 2137
    const/4 v1, 0x0

    .line 2150
    invoke-direct {p0}, Landroid/media/MediaScanner;->releaseResources()V

    .end local v11    # "file":Ljava/io/File;
    .end local v12    # "str":Ljava/lang/String;
    :goto_34
    return-object v1

    .line 2141
    .restart local v11    # "file":Ljava/io/File;
    .restart local v12    # "str":Ljava/lang/String;
    :cond_35
    :try_start_35
    invoke-virtual {v11}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    const-wide/16 v6, 0x3e8

    div-long v4, v2, v6

    .line 2144
    .local v4, "lastModifiedSeconds":J
    iget-object v1, p0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v6

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {p1}, Landroid/media/MediaScanner;->isNoMediaPath(Ljava/lang/String;)Z

    move-result v10

    move-object v2, p1

    move-object/from16 v3, p3

    invoke-virtual/range {v1 .. v10}, Landroid/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_4f} :catch_54
    .catchall {:try_start_35 .. :try_end_4f} :catchall_61

    move-result-object v1

    .line 2150
    invoke-direct {p0}, Landroid/media/MediaScanner;->releaseResources()V

    goto :goto_34

    .line 2146
    .end local v4    # "lastModifiedSeconds":J
    .end local v11    # "file":Ljava/io/File;
    .end local v12    # "str":Ljava/lang/String;
    :catch_54
    move-exception v0

    .line 2147
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_55
    const-string v1, "MediaScanner"

    const-string v2, "RemoteException in MediaScanner.scanFile()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5c
    .catchall {:try_start_55 .. :try_end_5c} :catchall_61

    .line 2148
    const/4 v1, 0x0

    .line 2150
    invoke-direct {p0}, Landroid/media/MediaScanner;->releaseResources()V

    goto :goto_34

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_61
    move-exception v1

    invoke-direct {p0}, Landroid/media/MediaScanner;->releaseResources()V

    throw v1
.end method

.method public native setLocale(Ljava/lang/String;)V
.end method
