.class public final Landroid/app/usage/ConfigurationStats;
.super Ljava/lang/Object;
.source "ConfigurationStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/usage/ConfigurationStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mActivationCount:I

.field public mBeginTimeStamp:J

.field public mConfiguration:Landroid/content/res/Configuration;

.field public mEndTimeStamp:J

.field public mLastTimeActive:J

.field public mTotalTimeActive:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 141
    new-instance v0, Landroid/app/usage/ConfigurationStats$1;

    invoke-direct {v0}, Landroid/app/usage/ConfigurationStats$1;-><init>()V

    sput-object v0, Landroid/app/usage/ConfigurationStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/app/usage/ConfigurationStats;)V
    .registers 4
    .param p1, "stats"    # Landroid/app/usage/ConfigurationStats;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iget-object v0, p1, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    iput-object v0, p0, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    .line 66
    iget-wide v0, p1, Landroid/app/usage/ConfigurationStats;->mBeginTimeStamp:J

    iput-wide v0, p0, Landroid/app/usage/ConfigurationStats;->mBeginTimeStamp:J

    .line 67
    iget-wide v0, p1, Landroid/app/usage/ConfigurationStats;->mEndTimeStamp:J

    iput-wide v0, p0, Landroid/app/usage/ConfigurationStats;->mEndTimeStamp:J

    .line 68
    iget-wide v0, p1, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    iput-wide v0, p0, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    .line 69
    iget-wide v0, p1, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    iput-wide v0, p0, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    .line 70
    iget v0, p1, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    iput v0, p0, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    .line 71
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public getActivationCount()I
    .registers 2

    .prologue
    .line 117
    iget v0, p0, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    return v0
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public getFirstTimeStamp()J
    .registers 3

    .prologue
    .line 84
    iget-wide v0, p0, Landroid/app/usage/ConfigurationStats;->mBeginTimeStamp:J

    return-wide v0
.end method

.method public getLastTimeActive()J
    .registers 3

    .prologue
    .line 103
    iget-wide v0, p0, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    return-wide v0
.end method

.method public getLastTimeStamp()J
    .registers 3

    .prologue
    .line 94
    iget-wide v0, p0, Landroid/app/usage/ConfigurationStats;->mEndTimeStamp:J

    return-wide v0
.end method

.method public getTotalTimeActive()J
    .registers 3

    .prologue
    .line 110
    iget-wide v0, p0, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 127
    iget-object v0, p0, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz v0, :cond_27

    .line 128
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    iget-object v0, p0, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 134
    :goto_d
    iget-wide v0, p0, Landroid/app/usage/ConfigurationStats;->mBeginTimeStamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 135
    iget-wide v0, p0, Landroid/app/usage/ConfigurationStats;->mEndTimeStamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 136
    iget-wide v0, p0, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 137
    iget-wide v0, p0, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 138
    iget v0, p0, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    return-void

    .line 131
    :cond_27
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_d
.end method
