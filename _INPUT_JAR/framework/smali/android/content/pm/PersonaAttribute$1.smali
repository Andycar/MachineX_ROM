.class final Landroid/content/pm/PersonaAttribute$1;
.super Ljava/lang/Object;
.source "PersonaAttribute.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PersonaAttribute;
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
        "Landroid/content/pm/PersonaAttribute;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/PersonaAttribute;
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/PersonaAttribute;->valueOf(Ljava/lang/String;)Landroid/content/pm/PersonaAttribute;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Landroid/content/pm/PersonaAttribute$1;->createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/PersonaAttribute;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/content/pm/PersonaAttribute;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 34
    new-array v0, p1, [Landroid/content/pm/PersonaAttribute;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Landroid/content/pm/PersonaAttribute$1;->newArray(I)[Landroid/content/pm/PersonaAttribute;

    move-result-object v0

    return-object v0
.end method
