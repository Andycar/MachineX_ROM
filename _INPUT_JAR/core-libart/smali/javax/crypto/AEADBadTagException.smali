.class public Ljavax/crypto/AEADBadTagException;
.super Ljavax/crypto/BadPaddingException;
.source "AEADBadTagException.java"


# static fields
.field private static final serialVersionUID:J = -0x6c5ef28d211e605L


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljavax/crypto/BadPaddingException;-><init>()V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    .line 42
    return-void
.end method
