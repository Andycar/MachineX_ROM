.class public final Landroid/system/StructAddrinfo;
.super Ljava/lang/Object;
.source "StructAddrinfo.java"


# instance fields
.field public ai_addr:Ljava/net/InetAddress;

.field public ai_family:I

.field public ai_flags:I

.field public ai_next:Landroid/system/StructAddrinfo;

.field public ai_protocol:I

.field public ai_socktype:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 56
    invoke-static {p0}, Llibcore/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
