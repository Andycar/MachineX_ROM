.class public Landroid/hardware/scontext/SContextActivityNotificationEx;
.super Landroid/hardware/scontext/SContextEventContext;
.source "SContextActivityNotificationEx.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/scontext/SContextActivityNotificationEx;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 212
    new-instance v0, Landroid/hardware/scontext/SContextActivityNotificationEx$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextActivityNotificationEx$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextActivityNotificationEx;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .prologue
    .line 128
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    .line 129
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextActivityNotificationEx;->mContext:Landroid/os/Bundle;

    .line 130
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 135
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    .line 136
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextActivityNotificationEx;->readFromParcel(Landroid/os/Parcel;)V

    .line 137
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextActivityNotificationEx;->mContext:Landroid/os/Bundle;

    .line 205
    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .registers 2

    .prologue
    .line 121
    invoke-super {p0}, Landroid/hardware/scontext/SContextEventContext;->describeContents()I

    move-result v0

    return v0
.end method

.method public getAccuracy()I
    .registers 3

    .prologue
    .line 170
    iget-object v0, p0, Landroid/hardware/scontext/SContextActivityNotificationEx;->mContext:Landroid/os/Bundle;

    const-string v1, "Accuracy"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getStatus()I
    .registers 3

    .prologue
    .line 159
    iget-object v0, p0, Landroid/hardware/scontext/SContextActivityNotificationEx;->mContext:Landroid/os/Bundle;

    const-string v1, "ActivityType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTimeStamp()J
    .registers 3

    .prologue
    .line 145
    iget-object v0, p0, Landroid/hardware/scontext/SContextActivityNotificationEx;->mContext:Landroid/os/Bundle;

    const-string v1, "TimeStamp"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method setValues(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "context"    # Landroid/os/Bundle;

    .prologue
    .line 180
    iput-object p1, p0, Landroid/hardware/scontext/SContextActivityNotificationEx;->mContext:Landroid/os/Bundle;

    .line 181
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 194
    iget-object v0, p0, Landroid/hardware/scontext/SContextActivityNotificationEx;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 195
    return-void
.end method
