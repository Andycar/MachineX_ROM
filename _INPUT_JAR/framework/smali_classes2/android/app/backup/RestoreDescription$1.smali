.class final Landroid/app/backup/RestoreDescription$1;
.super Ljava/lang/Object;
.source "RestoreDescription.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/RestoreDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/app/backup/RestoreDescription;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/backup/RestoreDescription;
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 95
    new-instance v0, Landroid/app/backup/RestoreDescription;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/app/backup/RestoreDescription;-><init>(Landroid/os/Parcel;Landroid/app/backup/RestoreDescription$1;)V

    .line 96
    .local v0, "unparceled":Landroid/app/backup/RestoreDescription;
    const-string v1, ""

    # getter for: Landroid/app/backup/RestoreDescription;->mPackageName:Ljava/lang/String;
    invoke-static {v0}, Landroid/app/backup/RestoreDescription;->access$100(Landroid/app/backup/RestoreDescription;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    sget-object v0, Landroid/app/backup/RestoreDescription;->NO_MORE_PACKAGES:Landroid/app/backup/RestoreDescription;

    .end local v0    # "unparceled":Landroid/app/backup/RestoreDescription;
    :cond_14
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Landroid/app/backup/RestoreDescription$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/backup/RestoreDescription;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/app/backup/RestoreDescription;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 102
    new-array v0, p1, [Landroid/app/backup/RestoreDescription;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Landroid/app/backup/RestoreDescription$1;->newArray(I)[Landroid/app/backup/RestoreDescription;

    move-result-object v0

    return-object v0
.end method
