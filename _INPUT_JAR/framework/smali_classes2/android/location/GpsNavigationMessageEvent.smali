.class public Landroid/location/GpsNavigationMessageEvent;
.super Ljava/lang/Object;
.source "GpsNavigationMessageEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GpsNavigationMessageEvent$Listener;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/location/GpsNavigationMessageEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mNavigationMessage:Landroid/location/GpsNavigationMessage;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 60
    new-instance v0, Landroid/location/GpsNavigationMessageEvent$1;

    invoke-direct {v0}, Landroid/location/GpsNavigationMessageEvent$1;-><init>()V

    sput-object v0, Landroid/location/GpsNavigationMessageEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/location/GpsNavigationMessage;)V
    .registers 4
    .param p1, "message"    # Landroid/location/GpsNavigationMessage;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    if-nez p1, :cond_d

    .line 50
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Parameter \'message\' must not be null."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_d
    iput-object p1, p0, Landroid/location/GpsNavigationMessageEvent;->mNavigationMessage:Landroid/location/GpsNavigationMessage;

    .line 53
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public getNavigationMessage()Landroid/location/GpsNavigationMessage;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Landroid/location/GpsNavigationMessageEvent;->mNavigationMessage:Landroid/location/GpsNavigationMessage;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[ GpsNavigationMessageEvent:\n\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/location/GpsNavigationMessageEvent;->mNavigationMessage:Landroid/location/GpsNavigationMessage;

    invoke-virtual {v1}, Landroid/location/GpsNavigationMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    const-string v1, "\n]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 82
    iget-object v0, p0, Landroid/location/GpsNavigationMessageEvent;->mNavigationMessage:Landroid/location/GpsNavigationMessage;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 83
    return-void
.end method
