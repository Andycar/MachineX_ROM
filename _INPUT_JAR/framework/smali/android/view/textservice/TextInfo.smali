.class public final Landroid/view/textservice/TextInfo;
.super Ljava/lang/Object;
.source "TextInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/textservice/TextInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_COOKIE:I

.field private static final DEFAULT_SEQUENCE_NUMBER:I


# instance fields
.field private final mCharSequence:Ljava/lang/CharSequence;

.field private final mCookie:I

.field private final mSequenceNumber:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 141
    new-instance v0, Landroid/view/textservice/TextInfo$1;

    invoke-direct {v0}, Landroid/view/textservice/TextInfo$1;-><init>()V

    sput-object v0, Landroid/view/textservice/TextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/textservice/TextInfo;->mCharSequence:Ljava/lang/CharSequence;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/textservice/TextInfo;->mCookie:I

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/textservice/TextInfo;->mSequenceNumber:I

    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IIII)V
    .registers 12
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "cookie"    # I
    .param p5, "sequenceNumber"    # I

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 70
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "charSequence is empty"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 73
    :cond_11
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p1, p2, p3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    .line 76
    .local v1, "spannableString":Landroid/text/SpannableStringBuilder;
    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    const-class v5, Landroid/text/style/SpellCheckSpan;

    invoke-virtual {v1, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/SpellCheckSpan;

    .line 78
    .local v2, "spans":[Landroid/text/style/SpellCheckSpan;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_24
    array-length v3, v2

    if-ge v0, v3, :cond_2f

    .line 79
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 82
    :cond_2f
    iput-object v1, p0, Landroid/view/textservice/TextInfo;->mCharSequence:Ljava/lang/CharSequence;

    .line 83
    iput p4, p0, Landroid/view/textservice/TextInfo;->mCookie:I

    .line 84
    iput p5, p0, Landroid/view/textservice/TextInfo;->mSequenceNumber:I

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 8
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 42
    invoke-static {p1}, Landroid/view/textservice/TextInfo;->getStringLengthOrZero(Ljava/lang/String;)I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Landroid/view/textservice/TextInfo;-><init>(Ljava/lang/CharSequence;IIII)V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 10
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "cookie"    # I
    .param p3, "sequenceNumber"    # I

    .prologue
    .line 52
    const/4 v2, 0x0

    invoke-static {p1}, Landroid/view/textservice/TextInfo;->getStringLengthOrZero(Ljava/lang/String;)I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/view/textservice/TextInfo;-><init>(Ljava/lang/CharSequence;IIII)V

    .line 53
    return-void
.end method

.method private static getStringLengthOrZero(Ljava/lang/String;)I
    .registers 2
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_7
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public getCharSequence()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Landroid/view/textservice/TextInfo;->mCharSequence:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getCookie()I
    .registers 2

    .prologue
    .line 128
    iget v0, p0, Landroid/view/textservice/TextInfo;->mCookie:I

    return v0
.end method

.method public getSequence()I
    .registers 2

    .prologue
    .line 135
    iget v0, p0, Landroid/view/textservice/TextInfo;->mSequenceNumber:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Landroid/view/textservice/TextInfo;->mCharSequence:Ljava/lang/CharSequence;

    if-nez v0, :cond_6

    .line 111
    const/4 v0, 0x0

    .line 113
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Landroid/view/textservice/TextInfo;->mCharSequence:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 101
    iget-object v0, p0, Landroid/view/textservice/TextInfo;->mCharSequence:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 102
    iget v0, p0, Landroid/view/textservice/TextInfo;->mCookie:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    iget v0, p0, Landroid/view/textservice/TextInfo;->mSequenceNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    return-void
.end method
