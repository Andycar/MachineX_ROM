.class public Lcom/samsung/android/magazinecard/MagazineCardRecord;
.super Ljava/lang/Object;
.source "MagazineCardRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/magazinecard/MagazineCardRecord;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mCardInfo:Lcom/samsung/android/magazinecard/MagazineCardInfo;

.field public mComponentName:Landroid/content/ComponentName;

.field public mId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 95
    new-instance v0, Lcom/samsung/android/magazinecard/MagazineCardRecord$1;

    invoke-direct {v0}, Lcom/samsung/android/magazinecard/MagazineCardRecord$1;-><init>()V

    sput-object v0, Lcom/samsung/android/magazinecard/MagazineCardRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mId:I

    .line 30
    iput-object v1, p0, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mCardInfo:Lcom/samsung/android/magazinecard/MagazineCardInfo;

    .line 31
    iput-object v1, p0, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mComponentName:Landroid/content/ComponentName;

    .line 34
    return-void
.end method

.method public constructor <init>(ILcom/samsung/android/magazinecard/MagazineCardInfo;)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "card"    # Lcom/samsung/android/magazinecard/MagazineCardInfo;

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mId:I

    .line 30
    iput-object v1, p0, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mCardInfo:Lcom/samsung/android/magazinecard/MagazineCardInfo;

    .line 31
    iput-object v1, p0, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mComponentName:Landroid/content/ComponentName;

    .line 37
    iput p1, p0, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mId:I

    .line 38
    iput-object p2, p0, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mCardInfo:Lcom/samsung/android/magazinecard/MagazineCardInfo;

    .line 39
    return-void
.end method

.method public constructor <init>(ILcom/samsung/android/magazinecard/MagazineCardInfo;Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "card"    # Lcom/samsung/android/magazinecard/MagazineCardInfo;
    .param p3, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/magazinecard/MagazineCardRecord;-><init>(ILcom/samsung/android/magazinecard/MagazineCardInfo;)V

    .line 43
    iput-object p3, p0, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mComponentName:Landroid/content/ComponentName;

    .line 44
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public dump()Ljava/lang/String;
    .registers 5

    .prologue
    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "dumpResult":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mCardInfo:Lcom/samsung/android/magazinecard/MagazineCardInfo;

    if-eqz v2, :cond_36

    .line 67
    iget-object v2, p0, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mCardInfo:Lcom/samsung/android/magazinecard/MagazineCardInfo;

    invoke-virtual {v2}, Lcom/samsung/android/magazinecard/MagazineCardInfo;->dump()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "cardInfoDump":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 71
    .end local v0    # "cardInfoDump":Ljava/lang/String;
    :cond_36
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/magazinecard/MagazineCardRecord;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 73
    return-object v1
.end method

.method public getAppName()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 47
    iget-object v3, p0, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mComponentName:Landroid/content/ComponentName;

    if-nez v3, :cond_6

    .line 60
    :cond_5
    :goto_5
    return-object v2

    .line 51
    :cond_6
    iget-object v3, p0, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 56
    const-string v3, "\\."

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "split":[Ljava/lang/String;
    array-length v3, v1

    if-lez v3, :cond_5

    .line 58
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v1, v2

    goto :goto_5
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mId:I

    .line 87
    const-class v0, Lcom/samsung/android/magazinecard/MagazineCardInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/magazinecard/MagazineCardInfo;

    iput-object v0, p0, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mCardInfo:Lcom/samsung/android/magazinecard/MagazineCardInfo;

    .line 88
    const-class v0, Landroid/content/ComponentName;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mComponentName:Landroid/content/ComponentName;

    .line 89
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 80
    iget v0, p0, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    iget-object v0, p0, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mCardInfo:Lcom/samsung/android/magazinecard/MagazineCardInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 82
    iget-object v0, p0, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 83
    return-void
.end method
