.class Ljavax/security/auth/Subject$SecureSet$1;
.super Ljavax/security/auth/Subject$SecureSet$SecureIterator;
.source "Subject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavax/security/auth/Subject$SecureSet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavax/security/auth/Subject$SecureSet",
        "<TSST;>.SecureIterator;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljavax/security/auth/Subject$SecureSet;


# direct methods
.method constructor <init>(Ljavax/security/auth/Subject$SecureSet;Ljava/util/Iterator;)V
    .registers 3

    .prologue
    .line 595
    .local p0, "this":Ljavax/security/auth/Subject$SecureSet$1;, "Ljavax/security/auth/Subject$SecureSet.1;"
    .local p2, "x0":Ljava/util/Iterator;, "Ljava/util/Iterator<TSST;>;"
    iput-object p1, p0, Ljavax/security/auth/Subject$SecureSet$1;->this$1:Ljavax/security/auth/Subject$SecureSet;

    invoke-direct {p0, p1, p2}, Ljavax/security/auth/Subject$SecureSet$SecureIterator;-><init>(Ljavax/security/auth/Subject$SecureSet;Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TSST;"
        }
    .end annotation

    .prologue
    .line 602
    .local p0, "this":Ljavax/security/auth/Subject$SecureSet$1;, "Ljavax/security/auth/Subject$SecureSet.1;"
    iget-object v1, p0, Ljavax/security/auth/Subject$SecureSet$1;->iterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 603
    .local v0, "obj":Ljava/lang/Object;, "TSST;"
    return-object v0
.end method
