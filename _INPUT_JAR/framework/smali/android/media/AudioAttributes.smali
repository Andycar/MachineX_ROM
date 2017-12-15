.class public final Landroid/media/AudioAttributes;
.super Ljava/lang/Object;
.source "AudioAttributes.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioAttributes$Builder;
    }
.end annotation


# static fields
.field private static final ALL_PARCEL_FLAGS:I = 0x1

.field public static final CONTENT_TYPE_MOVIE:I = 0x3

.field public static final CONTENT_TYPE_MUSIC:I = 0x2

.field public static final CONTENT_TYPE_SONIFICATION:I = 0x4

.field public static final CONTENT_TYPE_SPEECH:I = 0x1

.field public static final CONTENT_TYPE_UNKNOWN:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/media/AudioAttributes;",
            ">;"
        }
    .end annotation
.end field

.field private static final FLAG_ALL:I = 0x3f

.field private static final FLAG_ALL_PUBLIC:I = 0x11

.field public static final FLAG_AUDIBILITY_ENFORCED:I = 0x1

.field public static final FLAG_BEACON:I = 0x8

.field public static final FLAG_HW_AV_SYNC:I = 0x10

.field public static final FLAG_HW_HOTWORD:I = 0x20

.field public static final FLAG_SCO:I = 0x4

.field public static final FLAG_SECURE:I = 0x2

.field public static final FLATTEN_TAGS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AudioAttributes"

.field public static final USAGE_ALARM:I = 0x4

.field public static final USAGE_ASSISTANCE_ACCESSIBILITY:I = 0xb

.field public static final USAGE_ASSISTANCE_NAVIGATION_GUIDANCE:I = 0xc

.field public static final USAGE_ASSISTANCE_SONIFICATION:I = 0xd

.field public static final USAGE_GAME:I = 0xe

.field public static final USAGE_MEDIA:I = 0x1

.field public static final USAGE_NOTIFICATION:I = 0x5

.field public static final USAGE_NOTIFICATION_COMMUNICATION_DELAYED:I = 0x9

.field public static final USAGE_NOTIFICATION_COMMUNICATION_INSTANT:I = 0x8

.field public static final USAGE_NOTIFICATION_COMMUNICATION_REQUEST:I = 0x7

.field public static final USAGE_NOTIFICATION_EVENT:I = 0xa

.field public static final USAGE_NOTIFICATION_RINGTONE:I = 0x6

.field public static final USAGE_UNKNOWN:I = 0x0

.field public static final USAGE_VOICE_COMMUNICATION:I = 0x2

.field public static final USAGE_VOICE_COMMUNICATION_SIGNALLING:I = 0x3


# instance fields
.field private mContentType:I

.field private mFlags:I

.field private mFormattedTags:Ljava/lang/String;

.field private mSource:I

.field private mTags:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUsage:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 624
    new-instance v0, Landroid/media/AudioAttributes$1;

    invoke-direct {v0}, Landroid/media/AudioAttributes$1;-><init>()V

    sput-object v0, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    iput v1, p0, Landroid/media/AudioAttributes;->mUsage:I

    .line 211
    iput v1, p0, Landroid/media/AudioAttributes;->mContentType:I

    .line 212
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/AudioAttributes;->mSource:I

    .line 213
    iput v1, p0, Landroid/media/AudioAttributes;->mFlags:I

    .line 218
    return-void
.end method

.method synthetic constructor <init>(Landroid/media/AudioAttributes$1;)V
    .registers 2
    .param p1, "x0"    # Landroid/media/AudioAttributes$1;

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/media/AudioAttributes;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 605
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    iput v3, p0, Landroid/media/AudioAttributes;->mUsage:I

    .line 211
    iput v3, p0, Landroid/media/AudioAttributes;->mContentType:I

    .line 212
    const/4 v4, -0x1

    iput v4, p0, Landroid/media/AudioAttributes;->mSource:I

    .line 213
    iput v3, p0, Landroid/media/AudioAttributes;->mFlags:I

    .line 606
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Landroid/media/AudioAttributes;->mUsage:I

    .line 607
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Landroid/media/AudioAttributes;->mContentType:I

    .line 608
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Landroid/media/AudioAttributes;->mSource:I

    .line 609
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Landroid/media/AudioAttributes;->mFlags:I

    .line 610
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v0, :cond_4a

    .line 611
    .local v0, "hasFlattenedTags":Z
    :goto_2e
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    .line 612
    if-eqz v0, :cond_4c

    .line 613
    new-instance v3, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    .line 614
    iget-object v3, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    iget-object v4, p0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 622
    :goto_49
    return-void

    .end local v0    # "hasFlattenedTags":Z
    :cond_4a
    move v0, v3

    .line 610
    goto :goto_2e

    .line 616
    .restart local v0    # "hasFlattenedTags":Z
    :cond_4c
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 617
    .local v2, "tagsArray":[Ljava/lang/String;
    array-length v3, v2

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_53
    if-ltz v1, :cond_5f

    .line 618
    iget-object v3, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    aget-object v4, v2, v1

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 617
    add-int/lit8 v1, v1, -0x1

    goto :goto_53

    .line 620
    :cond_5f
    const-string v3, ";"

    iget-object v4, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    goto :goto_49
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/media/AudioAttributes$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/media/AudioAttributes$1;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Landroid/media/AudioAttributes;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic access$000(Landroid/media/AudioAttributes;)I
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioAttributes;

    .prologue
    .line 66
    iget v0, p0, Landroid/media/AudioAttributes;->mUsage:I

    return v0
.end method

.method static synthetic access$002(Landroid/media/AudioAttributes;I)I
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioAttributes;
    .param p1, "x1"    # I

    .prologue
    .line 66
    iput p1, p0, Landroid/media/AudioAttributes;->mUsage:I

    return p1
.end method

.method static synthetic access$100(Landroid/media/AudioAttributes;)I
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioAttributes;

    .prologue
    .line 66
    iget v0, p0, Landroid/media/AudioAttributes;->mContentType:I

    return v0
.end method

.method static synthetic access$102(Landroid/media/AudioAttributes;I)I
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioAttributes;
    .param p1, "x1"    # I

    .prologue
    .line 66
    iput p1, p0, Landroid/media/AudioAttributes;->mContentType:I

    return p1
.end method

.method static synthetic access$200(Landroid/media/AudioAttributes;)I
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioAttributes;

    .prologue
    .line 66
    iget v0, p0, Landroid/media/AudioAttributes;->mFlags:I

    return v0
.end method

.method static synthetic access$202(Landroid/media/AudioAttributes;I)I
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioAttributes;
    .param p1, "x1"    # I

    .prologue
    .line 66
    iput p1, p0, Landroid/media/AudioAttributes;->mFlags:I

    return p1
.end method

.method static synthetic access$300(Landroid/media/AudioAttributes;)Ljava/util/HashSet;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioAttributes;

    .prologue
    .line 66
    iget-object v0, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$302(Landroid/media/AudioAttributes;Ljava/util/HashSet;)Ljava/util/HashSet;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioAttributes;
    .param p1, "x1"    # Ljava/util/HashSet;

    .prologue
    .line 66
    iput-object p1, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    return-object p1
.end method

.method static synthetic access$502(Landroid/media/AudioAttributes;I)I
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioAttributes;
    .param p1, "x1"    # I

    .prologue
    .line 66
    iput p1, p0, Landroid/media/AudioAttributes;->mSource:I

    return p1
.end method

.method static synthetic access$602(Landroid/media/AudioAttributes;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioAttributes;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    return-object p1
.end method

.method public static toLegacyStreamType(Landroid/media/AudioAttributes;)I
    .registers 5
    .param p0, "aa"    # Landroid/media/AudioAttributes;

    .prologue
    const/4 v2, 0x4

    const/4 v0, 0x3

    const/4 v1, 0x1

    .line 751
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v1, :cond_d

    .line 752
    const/4 v0, 0x7

    .line 783
    :goto_c
    :pswitch_c
    return v0

    .line 754
    :cond_d
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v2, :cond_17

    .line 755
    const/4 v0, 0x6

    goto :goto_c

    .line 759
    :cond_17
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v3

    packed-switch v3, :pswitch_data_2c

    goto :goto_c

    .line 768
    :pswitch_1f
    const/4 v0, 0x0

    goto :goto_c

    :pswitch_21
    move v0, v1

    .line 766
    goto :goto_c

    .line 770
    :pswitch_23
    const/16 v0, 0x8

    goto :goto_c

    :pswitch_26
    move v0, v2

    .line 772
    goto :goto_c

    .line 774
    :pswitch_28
    const/4 v0, 0x2

    goto :goto_c

    .line 780
    :pswitch_2a
    const/4 v0, 0x5

    goto :goto_c

    .line 759
    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_c
        :pswitch_1f
        :pswitch_23
        :pswitch_26
        :pswitch_2a
        :pswitch_28
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_c
        :pswitch_c
        :pswitch_21
        :pswitch_c
    .end packed-switch
.end method

.method public static usageForLegacyStreamType(I)I
    .registers 3
    .param p0, "streamType"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x2

    .line 713
    packed-switch p0, :pswitch_data_1c

    .line 744
    const/4 v0, 0x0

    :goto_6
    :pswitch_6
    return v0

    .line 718
    :pswitch_7
    const/16 v0, 0xd

    goto :goto_6

    .line 720
    :pswitch_a
    const/4 v0, 0x6

    goto :goto_6

    :pswitch_c
    move v0, v1

    .line 722
    goto :goto_6

    .line 724
    :pswitch_e
    const/4 v0, 0x4

    goto :goto_6

    .line 726
    :pswitch_10
    const/4 v0, 0x5

    goto :goto_6

    .line 730
    :pswitch_12
    const/4 v0, 0x3

    goto :goto_6

    .line 732
    :pswitch_14
    const/16 v0, 0xb

    goto :goto_6

    :pswitch_17
    move v0, v1

    .line 735
    goto :goto_6

    :pswitch_19
    move v0, v1

    .line 741
    goto :goto_6

    .line 713
    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_a
        :pswitch_c
        :pswitch_e
        :pswitch_10
        :pswitch_6
        :pswitch_7
        :pswitch_12
        :pswitch_14
        :pswitch_17
        :pswitch_6
        :pswitch_6
        :pswitch_19
    .end packed-switch
.end method

.method public static usageToString(I)Ljava/lang/String;
    .registers 4
    .param p0, "usage"    # I

    .prologue
    .line 675
    packed-switch p0, :pswitch_data_96

    .line 707
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown usage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1c
    return-object v0

    .line 677
    :pswitch_1d
    new-instance v0, Ljava/lang/String;

    const-string v1, "USAGE_UNKNOWN"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1c

    .line 679
    :pswitch_25
    new-instance v0, Ljava/lang/String;

    const-string v1, "USAGE_MEDIA"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1c

    .line 681
    :pswitch_2d
    new-instance v0, Ljava/lang/String;

    const-string v1, "USAGE_VOICE_COMMUNICATION"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1c

    .line 683
    :pswitch_35
    new-instance v0, Ljava/lang/String;

    const-string v1, "USAGE_VOICE_COMMUNICATION"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1c

    .line 685
    :pswitch_3d
    new-instance v0, Ljava/lang/String;

    const-string v1, "USAGE_ALARM"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1c

    .line 687
    :pswitch_45
    new-instance v0, Ljava/lang/String;

    const-string v1, "USAGE_NOTIFICATION"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1c

    .line 689
    :pswitch_4d
    new-instance v0, Ljava/lang/String;

    const-string v1, "USAGE_NOTIFICATION"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1c

    .line 691
    :pswitch_55
    new-instance v0, Ljava/lang/String;

    const-string v1, "USAGE_NOTIFICATION"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1c

    .line 693
    :pswitch_5d
    new-instance v0, Ljava/lang/String;

    const-string v1, "USAGE_NOTIFICATION_COMMUNICATION_INSTANT"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1c

    .line 695
    :pswitch_65
    new-instance v0, Ljava/lang/String;

    const-string v1, "USAGE_NOTIFICATION_COMMUNICATION_DELAYED"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1c

    .line 697
    :pswitch_6d
    new-instance v0, Ljava/lang/String;

    const-string v1, "USAGE_NOTIFICATION_EVENT"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1c

    .line 699
    :pswitch_75
    new-instance v0, Ljava/lang/String;

    const-string v1, "USAGE_ASSISTANCE_ACCESSIBILITY"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1c

    .line 701
    :pswitch_7d
    new-instance v0, Ljava/lang/String;

    const-string v1, "USAGE_ASSISTANCE_NAVIGATION_GUIDANCE"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1c

    .line 703
    :pswitch_85
    new-instance v0, Ljava/lang/String;

    const-string v1, "USAGE_ASSISTANCE_SONIFICATION"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1c

    .line 705
    :pswitch_8d
    new-instance v0, Ljava/lang/String;

    const-string v1, "USAGE_GAME"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1c

    .line 675
    nop

    :pswitch_data_96
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_25
        :pswitch_2d
        :pswitch_35
        :pswitch_3d
        :pswitch_45
        :pswitch_4d
        :pswitch_55
        :pswitch_5d
        :pswitch_65
        :pswitch_6d
        :pswitch_75
        :pswitch_7d
        :pswitch_85
        :pswitch_8d
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 574
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 641
    if-ne p0, p1, :cond_5

    .line 646
    :cond_4
    :goto_4
    return v1

    .line 642
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_13

    :cond_11
    move v1, v2

    goto :goto_4

    :cond_13
    move-object v0, p1

    .line 644
    check-cast v0, Landroid/media/AudioAttributes;

    .line 646
    .local v0, "that":Landroid/media/AudioAttributes;
    iget v3, p0, Landroid/media/AudioAttributes;->mContentType:I

    iget v4, v0, Landroid/media/AudioAttributes;->mContentType:I

    if-ne v3, v4, :cond_38

    iget v3, p0, Landroid/media/AudioAttributes;->mFlags:I

    iget v4, v0, Landroid/media/AudioAttributes;->mFlags:I

    if-ne v3, v4, :cond_38

    iget v3, p0, Landroid/media/AudioAttributes;->mSource:I

    iget v4, v0, Landroid/media/AudioAttributes;->mSource:I

    if-ne v3, v4, :cond_38

    iget v3, p0, Landroid/media/AudioAttributes;->mUsage:I

    iget v4, v0, Landroid/media/AudioAttributes;->mUsage:I

    if-ne v3, v4, :cond_38

    iget-object v3, p0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    iget-object v4, v0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_38
    move v1, v2

    goto :goto_4
.end method

.method public getAllFlags()I
    .registers 2

    .prologue
    .line 263
    iget v0, p0, Landroid/media/AudioAttributes;->mFlags:I

    and-int/lit8 v0, v0, 0x3f

    return v0
.end method

.method public getCapturePreset()I
    .registers 2

    .prologue
    .line 244
    iget v0, p0, Landroid/media/AudioAttributes;->mSource:I

    return v0
.end method

.method public getContentType()I
    .registers 2

    .prologue
    .line 225
    iget v0, p0, Landroid/media/AudioAttributes;->mContentType:I

    return v0
.end method

.method public getFlags()I
    .registers 2

    .prologue
    .line 253
    iget v0, p0, Landroid/media/AudioAttributes;->mFlags:I

    and-int/lit8 v0, v0, 0x11

    return v0
.end method

.method public getTags()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 272
    iget-object v0, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getUsage()I
    .registers 2

    .prologue
    .line 233
    iget v0, p0, Landroid/media/AudioAttributes;->mUsage:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 656
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Landroid/media/AudioAttributes;->mContentType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Landroid/media/AudioAttributes;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Landroid/media/AudioAttributes;->mSource:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Landroid/media/AudioAttributes;->mUsage:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 661
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioAttributes: usage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioAttributes;->mUsage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " content="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioAttributes;->mContentType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " flags=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioAttributes;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public usageToString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 670
    iget v0, p0, Landroid/media/AudioAttributes;->mUsage:I

    invoke-static {v0}, Landroid/media/AudioAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 591
    iget v1, p0, Landroid/media/AudioAttributes;->mUsage:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 592
    iget v1, p0, Landroid/media/AudioAttributes;->mContentType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 593
    iget v1, p0, Landroid/media/AudioAttributes;->mSource:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 594
    iget v1, p0, Landroid/media/AudioAttributes;->mFlags:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 595
    and-int/lit8 v1, p2, 0x1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 596
    and-int/lit8 v1, p2, 0x1

    if-nez v1, :cond_2e

    .line 597
    iget-object v1, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/String;

    .line 598
    .local v0, "tagsArray":[Ljava/lang/String;
    iget-object v1, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 599
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 603
    .end local v0    # "tagsArray":[Ljava/lang/String;
    :cond_2d
    :goto_2d
    return-void

    .line 600
    :cond_2e
    and-int/lit8 v1, p2, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2d

    .line 601
    iget-object v1, p0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_2d
.end method
