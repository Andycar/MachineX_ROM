.class public final Landroid/print/PageRange;
.super Ljava/lang/Object;
.source "PageRange.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ALL_PAGES:Landroid/print/PageRange;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/print/PageRange;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mEnd:I

.field private final mStart:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 31
    new-instance v0, Landroid/print/PageRange;

    const/4 v1, 0x0

    const v2, 0x7fffffff

    invoke-direct {v0, v1, v2}, Landroid/print/PageRange;-><init>(II)V

    sput-object v0, Landroid/print/PageRange;->ALL_PAGES:Landroid/print/PageRange;

    .line 160
    new-instance v0, Landroid/print/PageRange$1;

    invoke-direct {v0}, Landroid/print/PageRange$1;-><init>()V

    sput-object v0, Landroid/print/PageRange;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 5
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    if-gez p1, :cond_e

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "start cannot be less than zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_e
    if-gez p2, :cond_18

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "end cannot be less than zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_18
    if-le p1, p2, :cond_23

    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "start must be lesser than end."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_23
    iput p1, p0, Landroid/print/PageRange;->mStart:I

    .line 56
    iput p2, p0, Landroid/print/PageRange;->mEnd:I

    .line 57
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/print/PageRange;-><init>(II)V

    .line 61
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/print/PageRange$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/print/PageRange$1;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/print/PageRange;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public contains(I)Z
    .registers 3
    .param p1, "pageIndex"    # I

    .prologue
    .line 90
    iget v0, p0, Landroid/print/PageRange;->mStart:I

    if-lt p1, v0, :cond_a

    iget v0, p0, Landroid/print/PageRange;->mEnd:I

    if-gt p1, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 127
    if-ne p0, p1, :cond_5

    .line 143
    :cond_4
    :goto_4
    return v1

    .line 130
    :cond_5
    if-nez p1, :cond_9

    move v1, v2

    .line 131
    goto :goto_4

    .line 133
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_15

    move v1, v2

    .line 134
    goto :goto_4

    :cond_15
    move-object v0, p1

    .line 136
    check-cast v0, Landroid/print/PageRange;

    .line 137
    .local v0, "other":Landroid/print/PageRange;
    iget v3, p0, Landroid/print/PageRange;->mEnd:I

    iget v4, v0, Landroid/print/PageRange;->mEnd:I

    if-eq v3, v4, :cond_20

    move v1, v2

    .line 138
    goto :goto_4

    .line 140
    :cond_20
    iget v3, p0, Landroid/print/PageRange;->mStart:I

    iget v4, v0, Landroid/print/PageRange;->mStart:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 141
    goto :goto_4
.end method

.method public getEnd()I
    .registers 2

    .prologue
    .line 78
    iget v0, p0, Landroid/print/PageRange;->mEnd:I

    return v0
.end method

.method public getSize()I
    .registers 3

    .prologue
    .line 102
    iget v0, p0, Landroid/print/PageRange;->mEnd:I

    iget v1, p0, Landroid/print/PageRange;->mStart:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getStart()I
    .registers 2

    .prologue
    .line 69
    iget v0, p0, Landroid/print/PageRange;->mStart:I

    return v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 118
    const/16 v0, 0x1f

    .line 119
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 120
    .local v1, "result":I
    iget v2, p0, Landroid/print/PageRange;->mEnd:I

    add-int/lit8 v1, v2, 0x1f

    .line 121
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/print/PageRange;->mStart:I

    add-int v1, v2, v3

    .line 122
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 148
    iget v1, p0, Landroid/print/PageRange;->mStart:I

    if-nez v1, :cond_e

    iget v1, p0, Landroid/print/PageRange;->mEnd:I

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_e

    .line 149
    const-string v1, "PageRange[<all pages>]"

    .line 157
    :goto_d
    return-object v1

    .line 151
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "PageRange["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/print/PageRange;->mStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/print/PageRange;->mEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_d
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 112
    iget v0, p0, Landroid/print/PageRange;->mStart:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    iget v0, p0, Landroid/print/PageRange;->mEnd:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    return-void
.end method
