.class public Ljava/nio/charset/CodingErrorAction;
.super Ljava/lang/Object;
.source "CodingErrorAction.java"


# static fields
.field public static final IGNORE:Ljava/nio/charset/CodingErrorAction;

.field public static final REPLACE:Ljava/nio/charset/CodingErrorAction;

.field public static final REPORT:Ljava/nio/charset/CodingErrorAction;


# instance fields
.field private action:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 29
    new-instance v0, Ljava/nio/charset/CodingErrorAction;

    const-string v1, "IGNORE"

    invoke-direct {v0, v1}, Ljava/nio/charset/CodingErrorAction;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/nio/charset/CodingErrorAction;->IGNORE:Ljava/nio/charset/CodingErrorAction;

    .line 36
    new-instance v0, Ljava/nio/charset/CodingErrorAction;

    const-string v1, "REPLACE"

    invoke-direct {v0, v1}, Ljava/nio/charset/CodingErrorAction;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 44
    new-instance v0, Ljava/nio/charset/CodingErrorAction;

    const-string v1, "REPORT"

    invoke-direct {v0, v1}, Ljava/nio/charset/CodingErrorAction;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Ljava/nio/charset/CodingErrorAction;->action:Ljava/lang/String;

    .line 55
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/nio/charset/CodingErrorAction;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
