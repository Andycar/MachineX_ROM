.class public Lcom/samsung/android/multiwindow/MultiWindowTab;
.super Ljava/lang/Object;
.source "MultiWindowTab.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/multiwindow/MultiWindowTab;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mComponentName:Landroid/content/ComponentName;

.field private mStackId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 99
    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowTab$1;

    invoke-direct {v0}, Lcom/samsung/android/multiwindow/MultiWindowTab$1;-><init>()V

    sput-object v0, Lcom/samsung/android/multiwindow/MultiWindowTab;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/content/ComponentName;)V
    .registers 3
    .param p1, "stackId"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/samsung/android/multiwindow/MultiWindowTab;->mStackId:I

    .line 17
    iput-object p2, p0, Lcom/samsung/android/multiwindow/MultiWindowTab;->mComponentName:Landroid/content/ComponentName;

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "parcelledData"    # Landroid/os/Parcel;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-direct {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowTab;->readFromParcel(Landroid/os/Parcel;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/multiwindow/MultiWindowTab;)V
    .registers 2
    .param p1, "style"    # Lcom/samsung/android/multiwindow/MultiWindowTab;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowTab;->setTo(Lcom/samsung/android/multiwindow/MultiWindowTab;)V

    .line 32
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "parcelledData"    # Landroid/os/Parcel;

    .prologue
    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/MultiWindowTab;->setStackId(I)V

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_17

    .line 92
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowTab;->mComponentName:Landroid/content/ComponentName;

    .line 94
    :cond_17
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowTab;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getStackId()I
    .registers 2

    .prologue
    .line 53
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowTab;->mStackId:I

    return v0
.end method

.method public setComponentName(Landroid/content/ComponentName;)V
    .registers 2
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/samsung/android/multiwindow/MultiWindowTab;->mComponentName:Landroid/content/ComponentName;

    .line 61
    return-void
.end method

.method public setStackId(I)V
    .registers 2
    .param p1, "stackId"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/samsung/android/multiwindow/MultiWindowTab;->mStackId:I

    .line 47
    return-void
.end method

.method public setTo(Lcom/samsung/android/multiwindow/MultiWindowTab;)V
    .registers 3
    .param p1, "other"    # Lcom/samsung/android/multiwindow/MultiWindowTab;

    .prologue
    .line 38
    iget v0, p1, Lcom/samsung/android/multiwindow/MultiWindowTab;->mStackId:I

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowTab;->mStackId:I

    .line 39
    iget-object v0, p1, Lcom/samsung/android/multiwindow/MultiWindowTab;->mComponentName:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowTab;->mComponentName:Landroid/content/ComponentName;

    .line 40
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 112
    .local v0, "out":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    const-string/jumbo v1, "{stackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowTab;->mStackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    const-string v1, ",bounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowTab;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    const-string v1, ",min_bound{port=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 80
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowTab;->mStackId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowTab;->mComponentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_13

    .line 82
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowTab;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, p1, p2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 87
    :goto_12
    return-void

    .line 85
    :cond_13
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_12
.end method
