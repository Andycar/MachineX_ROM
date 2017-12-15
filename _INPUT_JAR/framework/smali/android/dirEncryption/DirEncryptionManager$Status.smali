.class public final Landroid/dirEncryption/DirEncryptionManager$Status;
.super Ljava/lang/Object;
.source "DirEncryptionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/dirEncryption/DirEncryptionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Status"
.end annotation


# static fields
.field public static final DECRYPTING:I = 0x3

.field public static final ENCRYPTING:I = 0x2

.field public static final FREE:I = 0x0

.field public static final READY:I = 0x1


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
