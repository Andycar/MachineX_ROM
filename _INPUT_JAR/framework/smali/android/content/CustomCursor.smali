.class public Landroid/content/CustomCursor;
.super Landroid/database/AbstractWindowedCursor;
.source "CustomCursor.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final BUNDLE_KEY:Ljava/lang/String; = "ColumnNames"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/CustomCursor;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isAutoClose:Z

.field private mBundle:Landroid/os/Bundle;

.field private mColumnNames:[Ljava/lang/String;

.field private mCursorOwnerId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const-class v0, Landroid/content/CustomCursor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/content/CustomCursor;->TAG:Ljava/lang/String;

    .line 93
    new-instance v0, Landroid/content/CustomCursor$1;

    invoke-direct {v0}, Landroid/content/CustomCursor$1;-><init>()V

    sput-object v0, Landroid/content/CustomCursor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/database/CursorWindow;)V
    .registers 3
    .param p1, "window"    # Landroid/database/CursorWindow;

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/database/AbstractWindowedCursor;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/CustomCursor;->isAutoClose:Z

    .line 25
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/CustomCursor;->mBundle:Landroid/os/Bundle;

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/CustomCursor;->mColumnNames:[Ljava/lang/String;

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Landroid/content/CustomCursor;->mCursorOwnerId:I

    .line 48
    invoke-super {p0, p1}, Landroid/database/AbstractWindowedCursor;->setWindow(Landroid/database/CursorWindow;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/database/AbstractWindowedCursor;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/CustomCursor;->isAutoClose:Z

    .line 25
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/CustomCursor;->mBundle:Landroid/os/Bundle;

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/CustomCursor;->mColumnNames:[Ljava/lang/String;

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Landroid/content/CustomCursor;->mCursorOwnerId:I

    .line 56
    invoke-virtual {p0, p1}, Landroid/content/CustomCursor;->readFromParcel(Landroid/os/Parcel;)V

    .line 57
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Landroid/content/CustomCursor;->mColumnNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 125
    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->getWindow()Landroid/database/CursorWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v0

    return v0
.end method

.method public getCursorOwnerId()I
    .registers 2

    .prologue
    .line 130
    iget v0, p0, Landroid/content/CustomCursor;->mCursorOwnerId:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 83
    const-class v1, Landroid/database/CursorWindow;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/database/CursorWindow;

    .line 84
    .local v0, "window":Landroid/database/CursorWindow;
    invoke-super {p0, v0}, Landroid/database/AbstractWindowedCursor;->setWindow(Landroid/database/CursorWindow;)V

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Landroid/content/CustomCursor;->mBundle:Landroid/os/Bundle;

    .line 86
    iget-object v1, p0, Landroid/content/CustomCursor;->mBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_23

    .line 87
    iget-object v1, p0, Landroid/content/CustomCursor;->mBundle:Landroid/os/Bundle;

    const-string v2, "ColumnNames"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/CustomCursor;->mColumnNames:[Ljava/lang/String;

    .line 89
    :cond_23
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/CustomCursor;->mCursorOwnerId:I

    .line 90
    return-void
.end method

.method public setAutoClose(Z)V
    .registers 2
    .param p1, "value"    # Z

    .prologue
    .line 145
    iput-boolean p1, p0, Landroid/content/CustomCursor;->isAutoClose:Z

    .line 146
    return-void
.end method

.method public setColumnNames([Ljava/lang/String;)V
    .registers 2
    .param p1, "columnNames"    # [Ljava/lang/String;

    .prologue
    .line 113
    iput-object p1, p0, Landroid/content/CustomCursor;->mColumnNames:[Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setCursorOwnerId(I)V
    .registers 2
    .param p1, "cursorOwnerId"    # I

    .prologue
    .line 134
    iput p1, p0, Landroid/content/CustomCursor;->mCursorOwnerId:I

    .line 135
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 67
    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->getWindow()Landroid/database/CursorWindow;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 69
    iget-object v0, p0, Landroid/content/CustomCursor;->mBundle:Landroid/os/Bundle;

    const-string v1, "ColumnNames"

    iget-object v2, p0, Landroid/content/CustomCursor;->mColumnNames:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Landroid/content/CustomCursor;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 71
    iget v0, p0, Landroid/content/CustomCursor;->mCursorOwnerId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_23

    iget-boolean v0, p0, Landroid/content/CustomCursor;->isAutoClose:Z

    if-eqz v0, :cond_26

    .line 74
    :cond_23
    invoke-virtual {p0}, Landroid/content/CustomCursor;->close()V

    .line 76
    :cond_26
    return-void
.end method
