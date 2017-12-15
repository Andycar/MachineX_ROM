.class public Landroid/hardware/location/ActivityRecognitionEvent;
.super Ljava/lang/Object;
.source "ActivityRecognitionEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/location/ActivityRecognitionEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mActivity:Ljava/lang/String;

.field private final mEventType:I

.field private final mTimestampNs:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 50
    new-instance v0, Landroid/hardware/location/ActivityRecognitionEvent$1;

    invoke-direct {v0}, Landroid/hardware/location/ActivityRecognitionEvent$1;-><init>()V

    sput-object v0, Landroid/hardware/location/ActivityRecognitionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJ)V
    .registers 6
    .param p1, "activity"    # Ljava/lang/String;
    .param p2, "eventType"    # I
    .param p3, "timestampNs"    # J

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Landroid/hardware/location/ActivityRecognitionEvent;->mActivity:Ljava/lang/String;

    .line 34
    iput p2, p0, Landroid/hardware/location/ActivityRecognitionEvent;->mEventType:I

    .line 35
    iput-wide p3, p0, Landroid/hardware/location/ActivityRecognitionEvent;->mTimestampNs:J

    .line 36
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public getActivity()Ljava/lang/String;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Landroid/hardware/location/ActivityRecognitionEvent;->mActivity:Ljava/lang/String;

    return-object v0
.end method

.method public getEventType()I
    .registers 2

    .prologue
    .line 43
    iget v0, p0, Landroid/hardware/location/ActivityRecognitionEvent;->mEventType:I

    return v0
.end method

.method public getTimestampNs()J
    .registers 3

    .prologue
    .line 47
    iget-wide v0, p0, Landroid/hardware/location/ActivityRecognitionEvent;->mTimestampNs:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    .line 81
    const-string v0, "Activity=\'%s\', EventType=%s, TimestampNs=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/hardware/location/ActivityRecognitionEvent;->mActivity:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Landroid/hardware/location/ActivityRecognitionEvent;->mEventType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-wide v4, p0, Landroid/hardware/location/ActivityRecognitionEvent;->mTimestampNs:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 74
    iget-object v0, p0, Landroid/hardware/location/ActivityRecognitionEvent;->mActivity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    iget v0, p0, Landroid/hardware/location/ActivityRecognitionEvent;->mEventType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    iget-wide v0, p0, Landroid/hardware/location/ActivityRecognitionEvent;->mTimestampNs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 77
    return-void
.end method
