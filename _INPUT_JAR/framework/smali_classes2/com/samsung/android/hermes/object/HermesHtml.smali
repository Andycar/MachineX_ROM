.class public Lcom/samsung/android/hermes/object/HermesHtml;
.super Lcom/samsung/android/hermes/object/HermesObject;
.source "HermesHtml.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/hermes/object/HermesHtml;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mHtml:Ljava/lang/String;

.field private mText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 77
    new-instance v0, Lcom/samsung/android/hermes/object/HermesHtml$1;

    invoke-direct {v0}, Lcom/samsung/android/hermes/object/HermesHtml$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hermes/object/HermesHtml;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Lcom/samsung/android/hermes/object/HermesObject;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/samsung/android/hermes/object/HermesHtml;->mText:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/samsung/android/hermes/object/HermesHtml;->mHtml:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 23
    const/4 v0, 0x0

    return v0
.end method

.method public getHtml()Ljava/lang/String;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/samsung/android/hermes/object/HermesHtml;->mHtml:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/samsung/android/hermes/object/HermesHtml;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hermes/object/HermesHtml;->mText:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hermes/object/HermesHtml;->mHtml:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setHtml(Ljava/lang/String;)V
    .registers 2
    .param p1, "mHtml"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/samsung/android/hermes/object/HermesHtml;->mHtml:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 2
    .param p1, "mText"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/samsung/android/hermes/object/HermesHtml;->mText:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/android/hermes/object/HermesHtml;->mText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/samsung/android/hermes/object/HermesHtml;->mHtml:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    return-void
.end method
