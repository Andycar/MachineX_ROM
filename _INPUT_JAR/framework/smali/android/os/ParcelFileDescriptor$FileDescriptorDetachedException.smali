.class public Landroid/os/ParcelFileDescriptor$FileDescriptorDetachedException;
.super Ljava/io/IOException;
.source "ParcelFileDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/ParcelFileDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileDescriptorDetachedException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xde7ac4edfdL


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 952
    const-string v0, "Remote side is detached"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 953
    return-void
.end method
