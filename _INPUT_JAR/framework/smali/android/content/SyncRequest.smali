.class public Landroid/content/SyncRequest;
.super Ljava/lang/Object;
.source "SyncRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/SyncRequest$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/SyncRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SyncRequest"


# instance fields
.field private final mAccountToSync:Landroid/accounts/Account;

.field private final mAuthority:Ljava/lang/String;

.field private final mDisallowMetered:Z

.field private final mExtras:Landroid/os/Bundle;

.field private final mIsAuthority:Z

.field private final mIsExpedited:Z

.field private final mIsPeriodic:Z

.field private final mSyncFlexTimeSecs:J

.field private final mSyncRunTimeSecs:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 118
    new-instance v0, Landroid/content/SyncRequest$1;

    invoke-direct {v0}, Landroid/content/SyncRequest$1;-><init>()V

    sput-object v0, Landroid/content/SyncRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/content/SyncRequest$Builder;)V
    .registers 8
    .param p1, "b"    # Landroid/content/SyncRequest$Builder;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    # getter for: Landroid/content/SyncRequest$Builder;->mSyncFlexTimeSecs:J
    invoke-static {p1}, Landroid/content/SyncRequest$Builder;->access$100(Landroid/content/SyncRequest$Builder;)J

    move-result-wide v4

    iput-wide v4, p0, Landroid/content/SyncRequest;->mSyncFlexTimeSecs:J

    .line 164
    # getter for: Landroid/content/SyncRequest$Builder;->mSyncRunTimeSecs:J
    invoke-static {p1}, Landroid/content/SyncRequest$Builder;->access$200(Landroid/content/SyncRequest$Builder;)J

    move-result-wide v4

    iput-wide v4, p0, Landroid/content/SyncRequest;->mSyncRunTimeSecs:J

    .line 165
    # getter for: Landroid/content/SyncRequest$Builder;->mAccount:Landroid/accounts/Account;
    invoke-static {p1}, Landroid/content/SyncRequest$Builder;->access$300(Landroid/content/SyncRequest$Builder;)Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Landroid/content/SyncRequest;->mAccountToSync:Landroid/accounts/Account;

    .line 166
    # getter for: Landroid/content/SyncRequest$Builder;->mAuthority:Ljava/lang/String;
    invoke-static {p1}, Landroid/content/SyncRequest$Builder;->access$400(Landroid/content/SyncRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/SyncRequest;->mAuthority:Ljava/lang/String;

    .line 167
    # getter for: Landroid/content/SyncRequest$Builder;->mSyncType:I
    invoke-static {p1}, Landroid/content/SyncRequest$Builder;->access$500(Landroid/content/SyncRequest$Builder;)I

    move-result v0

    if-ne v0, v1, :cond_50

    move v0, v1

    :goto_24
    iput-boolean v0, p0, Landroid/content/SyncRequest;->mIsPeriodic:Z

    .line 168
    # getter for: Landroid/content/SyncRequest$Builder;->mSyncTarget:I
    invoke-static {p1}, Landroid/content/SyncRequest$Builder;->access$600(Landroid/content/SyncRequest$Builder;)I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_52

    :goto_2d
    iput-boolean v1, p0, Landroid/content/SyncRequest;->mIsAuthority:Z

    .line 169
    # getter for: Landroid/content/SyncRequest$Builder;->mExpedited:Z
    invoke-static {p1}, Landroid/content/SyncRequest$Builder;->access$700(Landroid/content/SyncRequest$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/SyncRequest;->mIsExpedited:Z

    .line 170
    new-instance v0, Landroid/os/Bundle;

    # getter for: Landroid/content/SyncRequest$Builder;->mCustomExtras:Landroid/os/Bundle;
    invoke-static {p1}, Landroid/content/SyncRequest$Builder;->access$800(Landroid/content/SyncRequest$Builder;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/content/SyncRequest;->mExtras:Landroid/os/Bundle;

    .line 173
    iget-object v0, p0, Landroid/content/SyncRequest;->mExtras:Landroid/os/Bundle;

    # getter for: Landroid/content/SyncRequest$Builder;->mSyncConfigExtras:Landroid/os/Bundle;
    invoke-static {p1}, Landroid/content/SyncRequest$Builder;->access$900(Landroid/content/SyncRequest$Builder;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 174
    # getter for: Landroid/content/SyncRequest$Builder;->mDisallowMetered:Z
    invoke-static {p1}, Landroid/content/SyncRequest$Builder;->access$1000(Landroid/content/SyncRequest$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/SyncRequest;->mDisallowMetered:Z

    .line 175
    return-void

    :cond_50
    move v0, v2

    .line 167
    goto :goto_24

    :cond_52
    move v1, v2

    .line 168
    goto :goto_2d
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/content/SyncRequest;->mExtras:Landroid/os/Bundle;

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/content/SyncRequest;->mSyncFlexTimeSecs:J

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/content/SyncRequest;->mSyncRunTimeSecs:J

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4a

    move v0, v1

    :goto_1e
    iput-boolean v0, p0, Landroid/content/SyncRequest;->mIsPeriodic:Z

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4c

    move v0, v1

    :goto_27
    iput-boolean v0, p0, Landroid/content/SyncRequest;->mDisallowMetered:Z

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4e

    move v0, v1

    :goto_30
    iput-boolean v0, p0, Landroid/content/SyncRequest;->mIsAuthority:Z

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_50

    :goto_38
    iput-boolean v1, p0, Landroid/content/SyncRequest;->mIsExpedited:Z

    .line 157
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    iput-object v0, p0, Landroid/content/SyncRequest;->mAccountToSync:Landroid/accounts/Account;

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/SyncRequest;->mAuthority:Ljava/lang/String;

    .line 159
    return-void

    :cond_4a
    move v0, v2

    .line 153
    goto :goto_1e

    :cond_4c
    move v0, v2

    .line 154
    goto :goto_27

    :cond_4e
    move v0, v2

    .line 155
    goto :goto_30

    :cond_50
    move v1, v2

    .line 156
    goto :goto_38
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/SyncRequest$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/content/SyncRequest$1;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/content/SyncRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public getAccount()Landroid/accounts/Account;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Landroid/content/SyncRequest;->mAccountToSync:Landroid/accounts/Account;

    return-object v0
.end method

.method public getBundle()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Landroid/content/SyncRequest;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getProvider()Ljava/lang/String;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Landroid/content/SyncRequest;->mAuthority:Ljava/lang/String;

    return-object v0
.end method

.method public getSyncFlexTime()J
    .registers 3

    .prologue
    .line 108
    iget-wide v0, p0, Landroid/content/SyncRequest;->mSyncFlexTimeSecs:J

    return-wide v0
.end method

.method public getSyncRunTime()J
    .registers 3

    .prologue
    .line 115
    iget-wide v0, p0, Landroid/content/SyncRequest;->mSyncRunTimeSecs:J

    return-wide v0
.end method

.method public isExpedited()Z
    .registers 2

    .prologue
    .line 70
    iget-boolean v0, p0, Landroid/content/SyncRequest;->mIsExpedited:Z

    return v0
.end method

.method public isPeriodic()Z
    .registers 2

    .prologue
    .line 62
    iget-boolean v0, p0, Landroid/content/SyncRequest;->mIsPeriodic:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 9
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 138
    iget-object v0, p0, Landroid/content/SyncRequest;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 139
    iget-wide v4, p0, Landroid/content/SyncRequest;->mSyncFlexTimeSecs:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 140
    iget-wide v4, p0, Landroid/content/SyncRequest;->mSyncRunTimeSecs:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 141
    iget-boolean v0, p0, Landroid/content/SyncRequest;->mIsPeriodic:Z

    if-eqz v0, :cond_3b

    move v0, v1

    :goto_16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    iget-boolean v0, p0, Landroid/content/SyncRequest;->mDisallowMetered:Z

    if-eqz v0, :cond_3d

    move v0, v1

    :goto_1e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    iget-boolean v0, p0, Landroid/content/SyncRequest;->mIsAuthority:Z

    if-eqz v0, :cond_3f

    move v0, v1

    :goto_26
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    iget-boolean v0, p0, Landroid/content/SyncRequest;->mIsExpedited:Z

    if-eqz v0, :cond_41

    :goto_2d
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    iget-object v0, p0, Landroid/content/SyncRequest;->mAccountToSync:Landroid/accounts/Account;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 146
    iget-object v0, p0, Landroid/content/SyncRequest;->mAuthority:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    return-void

    :cond_3b
    move v0, v2

    .line 141
    goto :goto_16

    :cond_3d
    move v0, v2

    .line 142
    goto :goto_1e

    :cond_3f
    move v0, v2

    .line 143
    goto :goto_26

    :cond_41
    move v1, v2

    .line 144
    goto :goto_2d
.end method
